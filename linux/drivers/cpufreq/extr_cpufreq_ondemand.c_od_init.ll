; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_ondemand.c_od_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_ondemand.c_od_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbs_data = type { %struct.od_dbs_tuners*, i32, i64, i32, i32 }
%struct.od_dbs_tuners = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MICRO_FREQUENCY_UP_THRESHOLD = common dso_local global i32 0, align 4
@DEF_FREQUENCY_UP_THRESHOLD = common dso_local global i32 0, align 4
@DEF_SAMPLING_DOWN_FACTOR = common dso_local global i32 0, align 4
@default_powersave_bias = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dbs_data*)* @od_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @od_init(%struct.dbs_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dbs_data*, align 8
  %4 = alloca %struct.od_dbs_tuners*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dbs_data* %0, %struct.dbs_data** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.od_dbs_tuners* @kzalloc(i32 4, i32 %7)
  store %struct.od_dbs_tuners* %8, %struct.od_dbs_tuners** %4, align 8
  %9 = load %struct.od_dbs_tuners*, %struct.od_dbs_tuners** %4, align 8
  %10 = icmp ne %struct.od_dbs_tuners* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %44

14:                                               ; preds = %1
  %15 = call i32 (...) @get_cpu()
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @get_cpu_idle_time_us(i32 %16, i32* null)
  store i64 %17, i64* %5, align 8
  %18 = call i32 (...) @put_cpu()
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* @MICRO_FREQUENCY_UP_THRESHOLD, align 4
  %23 = load %struct.dbs_data*, %struct.dbs_data** %3, align 8
  %24 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  br label %29

25:                                               ; preds = %14
  %26 = load i32, i32* @DEF_FREQUENCY_UP_THRESHOLD, align 4
  %27 = load %struct.dbs_data*, %struct.dbs_data** %3, align 8
  %28 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @DEF_SAMPLING_DOWN_FACTOR, align 4
  %31 = load %struct.dbs_data*, %struct.dbs_data** %3, align 8
  %32 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.dbs_data*, %struct.dbs_data** %3, align 8
  %34 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @default_powersave_bias, align 4
  %36 = load %struct.od_dbs_tuners*, %struct.od_dbs_tuners** %4, align 8
  %37 = getelementptr inbounds %struct.od_dbs_tuners, %struct.od_dbs_tuners* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = call i32 (...) @should_io_be_busy()
  %39 = load %struct.dbs_data*, %struct.dbs_data** %3, align 8
  %40 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.od_dbs_tuners*, %struct.od_dbs_tuners** %4, align 8
  %42 = load %struct.dbs_data*, %struct.dbs_data** %3, align 8
  %43 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %42, i32 0, i32 0
  store %struct.od_dbs_tuners* %41, %struct.od_dbs_tuners** %43, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %29, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.od_dbs_tuners* @kzalloc(i32, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @get_cpu_idle_time_us(i32, i32*) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @should_io_be_busy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
