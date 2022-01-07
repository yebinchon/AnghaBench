; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c2410-cpufreq.c_s3c2410a_cpufreq_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c2410-cpufreq.c_s3c2410a_cpufreq_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.subsys_interface = type { i32 }

@s3c2410_cpufreq_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"s3c2410a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.subsys_interface*)* @s3c2410a_cpufreq_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410a_cpufreq_add(%struct.device* %0, %struct.subsys_interface* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.subsys_interface*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.subsys_interface* %1, %struct.subsys_interface** %4, align 8
  store i32 266000000, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s3c2410_cpufreq_info, i32 0, i32 1, i32 0), align 8
  store i32 133000000, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s3c2410_cpufreq_info, i32 0, i32 1, i32 1), align 4
  store i32 66500000, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s3c2410_cpufreq_info, i32 0, i32 1, i32 2), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s3c2410_cpufreq_info, i32 0, i32 0), align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load %struct.subsys_interface*, %struct.subsys_interface** %4, align 8
  %7 = call i32 @s3c2410_cpufreq_add(%struct.device* %5, %struct.subsys_interface* %6)
  ret i32 %7
}

declare dso_local i32 @s3c2410_cpufreq_add(%struct.device*, %struct.subsys_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
