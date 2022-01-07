; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_setup.c_setup_processor.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_setup.c_setup_processor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_processor() #0 {
  %1 = alloca [512 x i8], align 16
  %2 = alloca i32, align 4
  %3 = call i32 (...) @smp_processor_id()
  store i32 %3, i32* %2, align 4
  %4 = call i32 (...) @read_arc_build_cfg_regs()
  %5 = call i32 (...) @arc_init_IRQ()
  %6 = load i32, i32* %2, align 4
  %7 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %8 = call i32 @arc_cpu_mumbojumbo(i32 %6, i8* %7, i32 512)
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 (...) @arc_mmu_init()
  %11 = call i32 (...) @arc_cache_init()
  %12 = load i32, i32* %2, align 4
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %14 = call i32 @arc_extn_mumbojumbo(i32 %12, i8* %13, i32 512)
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 (...) @arc_platform_smp_cpuinfo()
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 (...) @arc_chk_core_config()
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @read_arc_build_cfg_regs(...) #1

declare dso_local i32 @arc_init_IRQ(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @arc_cpu_mumbojumbo(i32, i8*, i32) #1

declare dso_local i32 @arc_mmu_init(...) #1

declare dso_local i32 @arc_cache_init(...) #1

declare dso_local i32 @arc_extn_mumbojumbo(i32, i8*, i32) #1

declare dso_local i32 @arc_platform_smp_cpuinfo(...) #1

declare dso_local i32 @arc_chk_core_config(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
