; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-asiu.c_iproc_asiu_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-asiu.c_iproc_asiu_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.iproc_asiu_clk = type { %struct.TYPE_2__, %struct.iproc_asiu* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.iproc_asiu = type { i64 }

@IPROC_CLK_INVALID_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @iproc_asiu_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_asiu_clk_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.iproc_asiu_clk*, align 8
  %5 = alloca %struct.iproc_asiu*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.iproc_asiu_clk* @to_asiu_clk(%struct.clk_hw* %7)
  store %struct.iproc_asiu_clk* %8, %struct.iproc_asiu_clk** %4, align 8
  %9 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %4, align 8
  %10 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %9, i32 0, i32 1
  %11 = load %struct.iproc_asiu*, %struct.iproc_asiu** %10, align 8
  store %struct.iproc_asiu* %11, %struct.iproc_asiu** %5, align 8
  %12 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %4, align 8
  %13 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IPROC_CLK_INVALID_OFFSET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.iproc_asiu*, %struct.iproc_asiu** %5, align 8
  %21 = getelementptr inbounds %struct.iproc_asiu, %struct.iproc_asiu* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %4, align 8
  %24 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %22, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %4, align 8
  %30 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 1, %32
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.iproc_asiu*, %struct.iproc_asiu** %5, align 8
  %38 = getelementptr inbounds %struct.iproc_asiu, %struct.iproc_asiu* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %4, align 8
  %41 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %39, %43
  %45 = call i32 @writel(i32 %36, i64 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %19, %18
  %47 = load i32, i32* %2, align 4
  ret i32 %47
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
