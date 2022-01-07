; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k7.c_acer_cpufreq_pst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k7.c_acer_cpufreq_pst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_system_id = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"%s laptop with broken PST tables in BIOS detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"You need to downgrade to 3A21 (09/09/2002), or try a newer BIOS than 3A71 (01/20/2003)\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"cpufreq scaling has been disabled as a result of this\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmi_system_id*)* @acer_cpufreq_pst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acer_cpufreq_pst(%struct.dmi_system_id* %0) #0 {
  %2 = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %0, %struct.dmi_system_id** %2, align 8
  %3 = load %struct.dmi_system_id*, %struct.dmi_system_id** %2, align 8
  %4 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @pr_warn(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
