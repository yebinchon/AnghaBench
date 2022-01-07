; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/power/extr_cpu.c_fix_processor_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/power/extr_cpu.c_fix_processor_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@X86_FEATURE_SEP = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@DESC_TSS = common dso_local global i32 0, align 4
@GDT_ENTRY_TSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fix_processor_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_processor_context() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @smp_processor_id()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call %struct.TYPE_9__* @get_cpu_entry_area(i32 %4)
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = call i32 @set_tss_desc(i32 %3, i32* %7)
  %9 = load i32, i32* @X86_FEATURE_SEP, align 4
  %10 = call i64 @boot_cpu_has(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 (...) @enable_sep_cpu()
  br label %14

14:                                               ; preds = %12, %0
  %15 = call i32 (...) @load_TR_desc()
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @load_mm_ldt(i32 %18)
  %20 = call i32 (...) @initialize_tlbstate_and_flush()
  %21 = call i32 (...) @fpu__resume_cpu()
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @load_fixmap_gdt(i32 %22)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @set_tss_desc(i32, i32*) #1

declare dso_local %struct.TYPE_9__* @get_cpu_entry_area(i32) #1

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @enable_sep_cpu(...) #1

declare dso_local i32 @load_TR_desc(...) #1

declare dso_local i32 @load_mm_ldt(i32) #1

declare dso_local i32 @initialize_tlbstate_and_flush(...) #1

declare dso_local i32 @fpu__resume_cpu(...) #1

declare dso_local i32 @load_fixmap_gdt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
