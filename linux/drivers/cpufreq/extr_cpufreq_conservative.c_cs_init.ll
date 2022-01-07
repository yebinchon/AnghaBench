; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_conservative.c_cs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_conservative.c_cs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbs_data = type { %struct.cs_dbs_tuners*, i64, i32, i32 }
%struct.cs_dbs_tuners = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEF_FREQUENCY_DOWN_THRESHOLD = common dso_local global i32 0, align 4
@DEF_FREQUENCY_STEP = common dso_local global i32 0, align 4
@DEF_FREQUENCY_UP_THRESHOLD = common dso_local global i32 0, align 4
@DEF_SAMPLING_DOWN_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dbs_data*)* @cs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_init(%struct.dbs_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dbs_data*, align 8
  %4 = alloca %struct.cs_dbs_tuners*, align 8
  store %struct.dbs_data* %0, %struct.dbs_data** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.cs_dbs_tuners* @kzalloc(i32 8, i32 %5)
  store %struct.cs_dbs_tuners* %6, %struct.cs_dbs_tuners** %4, align 8
  %7 = load %struct.cs_dbs_tuners*, %struct.cs_dbs_tuners** %4, align 8
  %8 = icmp ne %struct.cs_dbs_tuners* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load i32, i32* @DEF_FREQUENCY_DOWN_THRESHOLD, align 4
  %14 = load %struct.cs_dbs_tuners*, %struct.cs_dbs_tuners** %4, align 8
  %15 = getelementptr inbounds %struct.cs_dbs_tuners, %struct.cs_dbs_tuners* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @DEF_FREQUENCY_STEP, align 4
  %17 = load %struct.cs_dbs_tuners*, %struct.cs_dbs_tuners** %4, align 8
  %18 = getelementptr inbounds %struct.cs_dbs_tuners, %struct.cs_dbs_tuners* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @DEF_FREQUENCY_UP_THRESHOLD, align 4
  %20 = load %struct.dbs_data*, %struct.dbs_data** %3, align 8
  %21 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @DEF_SAMPLING_DOWN_FACTOR, align 4
  %23 = load %struct.dbs_data*, %struct.dbs_data** %3, align 8
  %24 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dbs_data*, %struct.dbs_data** %3, align 8
  %26 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.cs_dbs_tuners*, %struct.cs_dbs_tuners** %4, align 8
  %28 = load %struct.dbs_data*, %struct.dbs_data** %3, align 8
  %29 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %28, i32 0, i32 0
  store %struct.cs_dbs_tuners* %27, %struct.cs_dbs_tuners** %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %12, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.cs_dbs_tuners* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
