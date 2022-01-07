; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_set_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_set_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpufreq_policy*)*, i32 (%struct.cpufreq_policy*)* }
%struct.cpufreq_policy = type { %struct.cpufreq_governor*, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.cpufreq_governor = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"setting new policy for CPU %u: %u - %u kHz\0A\00", align 1
@FREQ_QOS_MIN = common dso_local global i32 0, align 4
@FREQ_QOS_MAX = common dso_local global i32 0, align 4
@cpufreq_driver = common dso_local global %struct.TYPE_2__* null, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"new min and max freqs are %u - %u kHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"setting range\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"governor limits update\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"governor switch\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"governor change\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"starting governor %s failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_set_policy(%struct.cpufreq_policy* %0, %struct.cpufreq_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca %struct.cpufreq_governor*, align 8
  %7 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store %struct.cpufreq_policy* %1, %struct.cpufreq_policy** %5, align 8
  %8 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %9 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %12 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %11, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %15 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %10, i8* %13, i8* %16)
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %19 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %18, i32 0, i32 6
  %20 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %21 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %20, i32 0, i32 6
  %22 = call i32 @memcpy(i32* %19, i32* %21, i32 4)
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %24 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %23, i32 0, i32 5
  %25 = load i32, i32* @FREQ_QOS_MIN, align 4
  %26 = call i8* @freq_qos_read_value(i32* %24, i32 %25)
  %27 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %28 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %30 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %29, i32 0, i32 5
  %31 = load i32, i32* @FREQ_QOS_MAX, align 4
  %32 = call i8* @freq_qos_read_value(i32* %30, i32 %31)
  %33 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %34 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.cpufreq_policy*)*, i32 (%struct.cpufreq_policy*)** %36, align 8
  %38 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %39 = call i32 %37(%struct.cpufreq_policy* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %155

44:                                               ; preds = %2
  %45 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %46 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %49 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %51 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %54 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %56 = call i32 @trace_cpu_frequency_limits(%struct.cpufreq_policy* %55)
  %57 = load i32, i32* @UINT_MAX, align 4
  %58 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %59 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %61 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %64 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %65)
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32 (%struct.cpufreq_policy*)*, i32 (%struct.cpufreq_policy*)** %68, align 8
  %70 = icmp ne i32 (%struct.cpufreq_policy*)* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %44
  %72 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %73 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %76 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32 (%struct.cpufreq_policy*)*, i32 (%struct.cpufreq_policy*)** %79, align 8
  %81 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %82 = call i32 %80(%struct.cpufreq_policy* %81)
  store i32 %82, i32* %3, align 4
  br label %155

83:                                               ; preds = %44
  %84 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %85 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %84, i32 0, i32 0
  %86 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %85, align 8
  %87 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %88 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %87, i32 0, i32 0
  %89 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %88, align 8
  %90 = icmp eq %struct.cpufreq_governor* %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %94 = call i32 @cpufreq_governor_limits(%struct.cpufreq_policy* %93)
  store i32 0, i32* %3, align 4
  br label %155

95:                                               ; preds = %83
  %96 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %98 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %97, i32 0, i32 0
  %99 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %98, align 8
  store %struct.cpufreq_governor* %99, %struct.cpufreq_governor** %6, align 8
  %100 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %6, align 8
  %101 = icmp ne %struct.cpufreq_governor* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %104 = call i32 @cpufreq_stop_governor(%struct.cpufreq_policy* %103)
  %105 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %106 = call i32 @cpufreq_exit_governor(%struct.cpufreq_policy* %105)
  br label %107

107:                                              ; preds = %102, %95
  %108 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %109 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %108, i32 0, i32 0
  %110 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %109, align 8
  %111 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %112 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %111, i32 0, i32 0
  store %struct.cpufreq_governor* %110, %struct.cpufreq_governor** %112, align 8
  %113 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %114 = call i32 @cpufreq_init_governor(%struct.cpufreq_policy* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %130, label %117

117:                                              ; preds = %107
  %118 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %119 = call i32 @cpufreq_start_governor(%struct.cpufreq_policy* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %124 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %125 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %6, align 8
  %126 = call i32 @sched_cpufreq_governor_change(%struct.cpufreq_policy* %124, %struct.cpufreq_governor* %125)
  store i32 0, i32* %3, align 4
  br label %155

127:                                              ; preds = %117
  %128 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %129 = call i32 @cpufreq_exit_governor(%struct.cpufreq_policy* %128)
  br label %130

130:                                              ; preds = %127, %107
  %131 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %132 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %131, i32 0, i32 0
  %133 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %132, align 8
  %134 = getelementptr inbounds %struct.cpufreq_governor, %struct.cpufreq_governor* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %135)
  %137 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %6, align 8
  %138 = icmp ne %struct.cpufreq_governor* %137, null
  br i1 %138, label %139, label %153

139:                                              ; preds = %130
  %140 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %6, align 8
  %141 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %142 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %141, i32 0, i32 0
  store %struct.cpufreq_governor* %140, %struct.cpufreq_governor** %142, align 8
  %143 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %144 = call i32 @cpufreq_init_governor(%struct.cpufreq_policy* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %148 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %147, i32 0, i32 0
  store %struct.cpufreq_governor* null, %struct.cpufreq_governor** %148, align 8
  br label %152

149:                                              ; preds = %139
  %150 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %151 = call i32 @cpufreq_start_governor(%struct.cpufreq_policy* %150)
  br label %152

152:                                              ; preds = %149, %146
  br label %153

153:                                              ; preds = %152, %130
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %122, %91, %71, %42
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @freq_qos_read_value(i32*, i32) #1

declare dso_local i32 @trace_cpu_frequency_limits(%struct.cpufreq_policy*) #1

declare dso_local i32 @cpufreq_governor_limits(%struct.cpufreq_policy*) #1

declare dso_local i32 @cpufreq_stop_governor(%struct.cpufreq_policy*) #1

declare dso_local i32 @cpufreq_exit_governor(%struct.cpufreq_policy*) #1

declare dso_local i32 @cpufreq_init_governor(%struct.cpufreq_policy*) #1

declare dso_local i32 @cpufreq_start_governor(%struct.cpufreq_policy*) #1

declare dso_local i32 @sched_cpufreq_governor_change(%struct.cpufreq_policy*, %struct.cpufreq_governor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
