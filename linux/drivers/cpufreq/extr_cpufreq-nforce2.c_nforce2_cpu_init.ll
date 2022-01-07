; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-nforce2.c_nforce2_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-nforce2.c_nforce2_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@fid = common dso_local global i32 0, align 4
@cpu_khz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cpu_khz not set, can't calculate multiplier!\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"FSB currently at %i MHz, FID %d.%d\0A\00", align 1
@max_fsb = common dso_local global i32 0, align 4
@min_fsb = common dso_local global i32 0, align 4
@NFORCE2_SAFE_DISTANCE = common dso_local global i32 0, align 4
@NFORCE2_MIN_FSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @nforce2_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nforce2_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %6 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %7 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %100

13:                                               ; preds = %1
  %14 = call i8* @nforce2_fsb_read(i32 0)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %100

21:                                               ; preds = %13
  %22 = load i32, i32* @fid, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @cpu_khz, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %100

31:                                               ; preds = %24
  %32 = load i32, i32* @cpu_khz, align 4
  %33 = load i32, i32* %4, align 4
  %34 = mul i32 %33, 100
  %35 = udiv i32 %32, %34
  store i32 %35, i32* @fid, align 4
  %36 = load i32, i32* @fid, align 4
  %37 = srem i32 %36, 5
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = icmp ugt i32 %41, 2
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = sub i32 5, %44
  %46 = load i32, i32* @fid, align 4
  %47 = add i32 %46, %45
  store i32 %47, i32* @fid, align 4
  br label %52

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @fid, align 4
  %51 = sub i32 %50, %49
  store i32 %51, i32* @fid, align 4
  br label %52

52:                                               ; preds = %48, %43
  br label %53

53:                                               ; preds = %52, %31
  br label %54

54:                                               ; preds = %53, %21
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @fid, align 4
  %57 = sdiv i32 %56, 10
  %58 = load i32, i32* @fid, align 4
  %59 = srem i32 %58, 10
  %60 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %57, i32 %59)
  %61 = call i8* @nforce2_fsb_read(i32 1)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* @max_fsb, align 4
  %63 = load i32, i32* @max_fsb, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %100

68:                                               ; preds = %54
  %69 = load i32, i32* @min_fsb, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @max_fsb, align 4
  %73 = load i32, i32* @NFORCE2_SAFE_DISTANCE, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* @min_fsb, align 4
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* @min_fsb, align 4
  %77 = load i32, i32* @NFORCE2_MIN_FSB, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @NFORCE2_MIN_FSB, align 4
  store i32 %80, i32* @min_fsb, align 4
  br label %81

81:                                               ; preds = %79, %75
  %82 = load i32, i32* @min_fsb, align 4
  %83 = load i32, i32* @fid, align 4
  %84 = mul nsw i32 %82, %83
  %85 = mul nsw i32 %84, 100
  %86 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %87 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %90 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %89, i32 0, i32 1
  store i32 %85, i32* %90, align 8
  %91 = load i32, i32* @max_fsb, align 4
  %92 = load i32, i32* @fid, align 4
  %93 = mul nsw i32 %91, %92
  %94 = mul nsw i32 %93, 100
  %95 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %96 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %99 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %98, i32 0, i32 2
  store i32 %94, i32* %99, align 4
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %81, %65, %27, %18, %10
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i8* @nforce2_fsb_read(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
