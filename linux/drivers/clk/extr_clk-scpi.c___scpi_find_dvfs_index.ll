; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scpi.c___scpi_find_dvfs_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scpi.c___scpi_find_dvfs_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scpi_clk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.scpi_opp* }
%struct.scpi_opp = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scpi_clk*, i64)* @__scpi_find_dvfs_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__scpi_find_dvfs_index(%struct.scpi_clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scpi_clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scpi_opp*, align 8
  store %struct.scpi_clk* %0, %struct.scpi_clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.scpi_clk*, %struct.scpi_clk** %4, align 8
  %10 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.scpi_clk*, %struct.scpi_clk** %4, align 8
  %15 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.scpi_opp*, %struct.scpi_opp** %17, align 8
  store %struct.scpi_opp* %18, %struct.scpi_opp** %8, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %32, %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.scpi_opp*, %struct.scpi_opp** %8, align 8
  %25 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %40

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = load %struct.scpi_opp*, %struct.scpi_opp** %8, align 8
  %36 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %35, i32 1
  store %struct.scpi_opp* %36, %struct.scpi_opp** %8, align 8
  br label %19

37:                                               ; preds = %19
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %29
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
