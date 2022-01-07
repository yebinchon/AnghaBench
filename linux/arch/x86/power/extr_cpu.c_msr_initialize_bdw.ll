; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/power/extr_cpu.c_msr_initialize_bdw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/power/extr_cpu.c_msr_initialize_bdw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_system_id = type { i32 }

@MSR_IA32_THERM_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"x86/pm: %s detected, MSR saving is needed during suspending.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmi_system_id*)* @msr_initialize_bdw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msr_initialize_bdw(%struct.dmi_system_id* %0) #0 {
  %2 = alloca %struct.dmi_system_id*, align 8
  %3 = alloca [1 x i32], align 4
  store %struct.dmi_system_id* %0, %struct.dmi_system_id** %2, align 8
  %4 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %5 = load i32, i32* @MSR_IA32_THERM_CONTROL, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.dmi_system_id*, %struct.dmi_system_id** %2, align 8
  %7 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %11 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = call i32 @msr_build_context(i32* %10, i32 %12)
  ret i32 %13
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @msr_build_context(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
