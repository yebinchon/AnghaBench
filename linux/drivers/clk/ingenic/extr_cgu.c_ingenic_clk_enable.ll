; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ingenic_clk = type { i64, %struct.ingenic_cgu* }
%struct.ingenic_cgu = type { i32, %struct.ingenic_cgu_clk_info* }
%struct.ingenic_cgu_clk_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CGU_CLK_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @ingenic_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_clk_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.ingenic_clk*, align 8
  %4 = alloca %struct.ingenic_cgu*, align 8
  %5 = alloca %struct.ingenic_cgu_clk_info*, align 8
  %6 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw* %7)
  store %struct.ingenic_clk* %8, %struct.ingenic_clk** %3, align 8
  %9 = load %struct.ingenic_clk*, %struct.ingenic_clk** %3, align 8
  %10 = getelementptr inbounds %struct.ingenic_clk, %struct.ingenic_clk* %9, i32 0, i32 1
  %11 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %10, align 8
  store %struct.ingenic_cgu* %11, %struct.ingenic_cgu** %4, align 8
  %12 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %4, align 8
  %13 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %12, i32 0, i32 1
  %14 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %13, align 8
  %15 = load %struct.ingenic_clk*, %struct.ingenic_clk** %3, align 8
  %16 = getelementptr inbounds %struct.ingenic_clk, %struct.ingenic_clk* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %14, i64 %17
  store %struct.ingenic_cgu_clk_info* %18, %struct.ingenic_cgu_clk_info** %5, align 8
  %19 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %5, align 8
  %20 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CGU_CLK_GATE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %1
  %26 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %4, align 8
  %27 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %4, align 8
  %31 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %5, align 8
  %32 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %31, i32 0, i32 1
  %33 = call i32 @ingenic_cgu_gate_set(%struct.ingenic_cgu* %30, %struct.TYPE_2__* %32, i32 0)
  %34 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %4, align 8
  %35 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %34, i32 0, i32 0
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %5, align 8
  %39 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %25
  %44 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %5, align 8
  %45 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @udelay(i64 %47)
  br label %49

49:                                               ; preds = %43, %25
  br label %50

50:                                               ; preds = %49, %1
  ret i32 0
}

declare dso_local %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ingenic_cgu_gate_set(%struct.ingenic_cgu*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @udelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
