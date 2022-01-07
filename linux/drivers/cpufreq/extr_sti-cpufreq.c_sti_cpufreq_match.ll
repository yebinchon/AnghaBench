; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sti-cpufreq.c_sti_cpufreq_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sti-cpufreq.c_sti_cpufreq_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_field = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"st,stih407\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"st,stih410\00", align 1
@sti_stih407_dvfs_regfields = common dso_local global %struct.reg_field* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reg_field* ()* @sti_cpufreq_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reg_field* @sti_cpufreq_match() #0 {
  %1 = alloca %struct.reg_field*, align 8
  %2 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %0
  %8 = load %struct.reg_field*, %struct.reg_field** @sti_stih407_dvfs_regfields, align 8
  store %struct.reg_field* %8, %struct.reg_field** %1, align 8
  br label %10

9:                                                ; preds = %4
  store %struct.reg_field* null, %struct.reg_field** %1, align 8
  br label %10

10:                                               ; preds = %9, %7
  %11 = load %struct.reg_field*, %struct.reg_field** %1, align 8
  ret %struct.reg_field* %11
}

declare dso_local i64 @of_machine_is_compatible(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
