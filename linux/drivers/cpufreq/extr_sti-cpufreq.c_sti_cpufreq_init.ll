; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sti-cpufreq.c_sti_cpufreq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sti-cpufreq.c_sti_cpufreq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"st,stih407\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"st,stih410\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ddata = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to get device for CPU0\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"operating-points-v2\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"OPP-v2 not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Not doing voltage scaling\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"cpufreq-dt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sti_cpufreq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_cpufreq_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %0
  %6 = call i32 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %43

11:                                               ; preds = %5, %0
  %12 = call %struct.TYPE_4__* @get_cpu_device(i32 0)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ddata, i32 0, i32 0), align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ddata, i32 0, i32 0), align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ddata, i32 0, i32 0), align 8
  %17 = call i32 @dev_err(%struct.TYPE_4__* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %38

18:                                               ; preds = %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ddata, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @of_get_property(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ddata, i32 0, i32 0), align 8
  %26 = call i32 @dev_err(%struct.TYPE_4__* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %38

27:                                               ; preds = %18
  %28 = call i32 (...) @sti_cpufreq_fetch_syscon_registers()
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %38

32:                                               ; preds = %27
  %33 = call i32 (...) @sti_cpufreq_set_opp_info()
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %41

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %31, %24, %15
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ddata, i32 0, i32 0), align 8
  %40 = call i32 @dev_err(%struct.TYPE_4__* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %36
  %42 = call i32 @platform_device_register_simple(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 -1, i32* null, i32 0)
  store i32 0, i32* %1, align 4
  br label %43

43:                                               ; preds = %41, %8
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @of_machine_is_compatible(i8*) #1

declare dso_local %struct.TYPE_4__* @get_cpu_device(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @sti_cpufreq_fetch_syscon_registers(...) #1

declare dso_local i32 @sti_cpufreq_set_opp_info(...) #1

declare dso_local i32 @platform_device_register_simple(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
