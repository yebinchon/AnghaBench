; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_smp-shx3.c_register_shx3_cpu_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_smp-shx3.c_register_shx3_cpu_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPUHP_SH_SH3X_PREPARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sh/shx3:prepare\00", align 1
@shx3_cpu_prepare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @register_shx3_cpu_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_shx3_cpu_notifier() #0 {
  %1 = load i32, i32* @CPUHP_SH_SH3X_PREPARE, align 4
  %2 = load i32, i32* @shx3_cpu_prepare, align 4
  %3 = call i32 @cpuhp_setup_state_nocalls(i32 %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %2, i32* null)
  ret i32 0
}

declare dso_local i32 @cpuhp_setup_state_nocalls(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
