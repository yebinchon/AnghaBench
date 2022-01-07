; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-asiu.c_iproc_asiu_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-asiu.c_iproc_asiu_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.iproc_asiu_clk = type { %struct.TYPE_2__, %struct.iproc_asiu* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.iproc_asiu = type { i64 }

@IPROC_CLK_INVALID_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @iproc_asiu_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_asiu_clk_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.iproc_asiu_clk*, align 8
  %4 = alloca %struct.iproc_asiu*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.iproc_asiu_clk* @to_asiu_clk(%struct.clk_hw* %6)
  store %struct.iproc_asiu_clk* %7, %struct.iproc_asiu_clk** %3, align 8
  %8 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %3, align 8
  %9 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %8, i32 0, i32 1
  %10 = load %struct.iproc_asiu*, %struct.iproc_asiu** %9, align 8
  store %struct.iproc_asiu* %10, %struct.iproc_asiu** %4, align 8
  %11 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %3, align 8
  %12 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IPROC_CLK_INVALID_OFFSET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.iproc_asiu*, %struct.iproc_asiu** %4, align 8
  %20 = getelementptr inbounds %struct.iproc_asiu, %struct.iproc_asiu* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %3, align 8
  %23 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %21, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %3, align 8
  %29 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 1, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.iproc_asiu*, %struct.iproc_asiu** %4, align 8
  %38 = getelementptr inbounds %struct.iproc_asiu, %struct.iproc_asiu* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %3, align 8
  %41 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %39, %43
  %45 = call i32 @writel(i32 %36, i64 %44)
  br label %46

46:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.iproc_asiu_clk* @to_asiu_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
