; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_clk_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_clk_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ingenic_clk = type { i64, %struct.ingenic_cgu* }
%struct.ingenic_cgu = type { i32, %struct.ingenic_cgu_clk_info* }
%struct.ingenic_cgu_clk_info = type { i32, i32 }

@CGU_CLK_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @ingenic_clk_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_clk_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.ingenic_clk*, align 8
  %4 = alloca %struct.ingenic_cgu*, align 8
  %5 = alloca %struct.ingenic_cgu_clk_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %9 = call %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw* %8)
  store %struct.ingenic_clk* %9, %struct.ingenic_clk** %3, align 8
  %10 = load %struct.ingenic_clk*, %struct.ingenic_clk** %3, align 8
  %11 = getelementptr inbounds %struct.ingenic_clk, %struct.ingenic_clk* %10, i32 0, i32 1
  %12 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %11, align 8
  store %struct.ingenic_cgu* %12, %struct.ingenic_cgu** %4, align 8
  store i32 1, i32* %7, align 4
  %13 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %4, align 8
  %14 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %13, i32 0, i32 1
  %15 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %14, align 8
  %16 = load %struct.ingenic_clk*, %struct.ingenic_clk** %3, align 8
  %17 = getelementptr inbounds %struct.ingenic_clk, %struct.ingenic_clk* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %15, i64 %18
  store %struct.ingenic_cgu_clk_info* %19, %struct.ingenic_cgu_clk_info** %5, align 8
  %20 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %5, align 8
  %21 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CGU_CLK_GATE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %1
  %27 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %4, align 8
  %28 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %4, align 8
  %32 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %5, align 8
  %33 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %32, i32 0, i32 1
  %34 = call i32 @ingenic_cgu_gate_get(%struct.ingenic_cgu* %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %4, align 8
  %39 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %38, i32 0, i32 0
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  br label %42

42:                                               ; preds = %26, %1
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ingenic_cgu_gate_get(%struct.ingenic_cgu*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
