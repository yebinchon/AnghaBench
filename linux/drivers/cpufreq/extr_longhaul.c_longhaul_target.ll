; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longhaul.c_longhaul_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longhaul.c_longhaul_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpufreq_policy = type { i32 }

@can_scale_voltage = common dso_local global i32 0, align 4
@longhaul_index = common dso_local global i64 0, align 8
@longhaul_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @longhaul_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @longhaul_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @can_scale_voltage, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @longhaul_setstate(%struct.cpufreq_policy* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  br label %69

16:                                               ; preds = %2
  %17 = load i64, i64* @longhaul_index, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @longhaul_table, align 8
  %20 = load i64, i64* @longhaul_index, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 8
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 31
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* @longhaul_index, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %16
  br label %33

33:                                               ; preds = %64, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %33
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @longhaul_table, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 31
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @longhaul_setstate(%struct.cpufreq_policy* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %8, align 4
  %54 = call i32 @msleep(i32 200)
  br label %55

55:                                               ; preds = %49, %37
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %33

65:                                               ; preds = %33
  %66 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @longhaul_setstate(%struct.cpufreq_policy* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %12
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, i64* @longhaul_index, align 8
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i32 @longhaul_setstate(%struct.cpufreq_policy*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
