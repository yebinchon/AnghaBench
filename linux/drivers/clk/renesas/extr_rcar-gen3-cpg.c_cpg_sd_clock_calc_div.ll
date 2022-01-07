; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-gen3-cpg.c_cpg_sd_clock_calc_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-gen3-cpg.c_cpg_sd_clock_calc_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd_clock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd_clock*, i64, i64)* @cpg_sd_clock_calc_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpg_sd_clock_calc_div(%struct.sd_clock* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sd_clock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sd_clock* %0, %struct.sd_clock** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* @ULONG_MAX, align 8
  store i64 %12, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %57, %3
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.sd_clock*, %struct.sd_clock** %4, align 8
  %16 = getelementptr inbounds %struct.sd_clock, %struct.sd_clock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.sd_clock*, %struct.sd_clock** %4, align 8
  %22 = getelementptr inbounds %struct.sd_clock, %struct.sd_clock* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @DIV_ROUND_CLOSEST(i64 %20, i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = sub i64 %34, %35
  br label %41

37:                                               ; preds = %19
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %38, %39
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i64 [ %36, %33 ], [ %40, %37 ]
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.sd_clock*, %struct.sd_clock** %4, align 8
  %48 = getelementptr inbounds %struct.sd_clock, %struct.sd_clock* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %46, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %13

60:                                               ; preds = %13
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
