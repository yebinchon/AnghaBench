; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scpi.c___scpi_dvfs_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scpi.c___scpi_dvfs_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scpi_clk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.scpi_opp* }
%struct.scpi_opp = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scpi_clk*, i64)* @__scpi_dvfs_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__scpi_dvfs_round_rate(%struct.scpi_clk* %0, i64 %1) #0 {
  %3 = alloca %struct.scpi_clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.scpi_opp*, align 8
  store %struct.scpi_clk* %0, %struct.scpi_clk** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i64 -1, i64* %7, align 8
  %10 = load %struct.scpi_clk*, %struct.scpi_clk** %3, align 8
  %11 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.scpi_opp*, %struct.scpi_opp** %13, align 8
  store %struct.scpi_opp* %14, %struct.scpi_opp** %9, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.scpi_clk*, %struct.scpi_clk** %3, align 8
  %18 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %15
  %24 = load %struct.scpi_opp*, %struct.scpi_opp** %9, align 8
  %25 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %34, %30
  br label %50

37:                                               ; preds = %23
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load %struct.scpi_opp*, %struct.scpi_opp** %9, align 8
  %49 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %48, i32 1
  store %struct.scpi_opp* %49, %struct.scpi_opp** %9, align 8
  br label %15

50:                                               ; preds = %36, %15
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i64, i64* %7, align 8
  br label %57

55:                                               ; preds = %50
  %56 = load i64, i64* %6, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  ret i64 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
