; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c24xx-cpufreq-debugfs.c_info_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c24xx-cpufreq-debugfs.c_info_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.s3c_cpufreq_config = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"no configuration registered\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"  FCLK %ld Hz\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"  HCLK %ld Hz (%lu.%lu ns)\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"  PCLK %ld Hz\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ARMCLK %ld Hz\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Divisors: P=%d, H=%d, A=%d, dvs=%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"lock_pll=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @info_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @info_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s3c_cpufreq_config*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call %struct.s3c_cpufreq_config* (...) @s3c_cpufreq_getconfig()
  store %struct.s3c_cpufreq_config* %7, %struct.s3c_cpufreq_config** %6, align 8
  %8 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %6, align 8
  %9 = icmp ne %struct.s3c_cpufreq_config* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %77

13:                                               ; preds = %2
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %6, align 8
  %16 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %6, align 8
  %22 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %6, align 8
  %26 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @print_ns(i32 %28)
  %30 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %32 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %6, align 8
  %33 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %6, align 8
  %39 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %6, align 8
  %47 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %46, i32 0, i32 2
  %48 = call i32 @show_max(%struct.seq_file* %45, i32* %47)
  %49 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %50 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %6, align 8
  %51 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %6, align 8
  %55 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %6, align 8
  %59 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %6, align 8
  %63 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %69 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %53, i32 %57, i32 %61, i8* %68)
  %70 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %71 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %72 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %73 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %6, align 8
  %74 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %13, %10
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.s3c_cpufreq_config* @s3c_cpufreq_getconfig(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @print_ns(i32) #1

declare dso_local i32 @show_max(%struct.seq_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
