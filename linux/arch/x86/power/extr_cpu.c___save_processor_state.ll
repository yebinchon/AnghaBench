; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/power/extr_cpu.c___save_processor_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/power/extr_cpu.c___save_processor_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saved_context = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@GDT_SIZE = common dso_local global i64 0, align 8
@MSR_IA32_MISC_ENABLE = common dso_local global i32 0, align 4
@MSR_EFER = common dso_local global i32 0, align 4
@MSR_FS_BASE = common dso_local global i32 0, align 4
@MSR_GS_BASE = common dso_local global i32 0, align 4
@MSR_KERNEL_GS_BASE = common dso_local global i32 0, align 4
@ds = common dso_local global i32 0, align 4
@es = common dso_local global i32 0, align 4
@fs = common dso_local global i32 0, align 4
@gs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saved_context*)* @__save_processor_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__save_processor_state(%struct.saved_context* %0) #0 {
  %2 = alloca %struct.saved_context*, align 8
  store %struct.saved_context* %0, %struct.saved_context** %2, align 8
  %3 = call i32 (...) @kernel_fpu_begin()
  %4 = load %struct.saved_context*, %struct.saved_context** %2, align 8
  %5 = getelementptr inbounds %struct.saved_context, %struct.saved_context* %4, i32 0, i32 16
  %6 = call i32 @store_idt(i32* %5)
  %7 = load i64, i64* @GDT_SIZE, align 8
  %8 = sub nsw i64 %7, 1
  %9 = load %struct.saved_context*, %struct.saved_context** %2, align 8
  %10 = getelementptr inbounds %struct.saved_context, %struct.saved_context* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i64 %8, i64* %11, align 8
  %12 = call i32 (...) @smp_processor_id()
  %13 = call i64 @get_cpu_gdt_rw(i32 %12)
  %14 = load %struct.saved_context*, %struct.saved_context** %2, align 8
  %15 = getelementptr inbounds %struct.saved_context, %struct.saved_context* %14, i32 0, i32 15
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  %17 = load %struct.saved_context*, %struct.saved_context** %2, align 8
  %18 = getelementptr inbounds %struct.saved_context, %struct.saved_context* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @store_tr(i32 %19)
  %21 = call i32 (...) @read_cr0()
  %22 = load %struct.saved_context*, %struct.saved_context** %2, align 8
  %23 = getelementptr inbounds %struct.saved_context, %struct.saved_context* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = call i32 (...) @read_cr2()
  %25 = load %struct.saved_context*, %struct.saved_context** %2, align 8
  %26 = getelementptr inbounds %struct.saved_context, %struct.saved_context* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = call i32 (...) @__read_cr3()
  %28 = load %struct.saved_context*, %struct.saved_context** %2, align 8
  %29 = getelementptr inbounds %struct.saved_context, %struct.saved_context* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = call i32 (...) @__read_cr4()
  %31 = load %struct.saved_context*, %struct.saved_context** %2, align 8
  %32 = getelementptr inbounds %struct.saved_context, %struct.saved_context* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @MSR_IA32_MISC_ENABLE, align 4
  %34 = load %struct.saved_context*, %struct.saved_context** %2, align 8
  %35 = getelementptr inbounds %struct.saved_context, %struct.saved_context* %34, i32 0, i32 1
  %36 = call i32 @rdmsrl_safe(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.saved_context*, %struct.saved_context** %2, align 8
  %41 = getelementptr inbounds %struct.saved_context, %struct.saved_context* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.saved_context*, %struct.saved_context** %2, align 8
  %43 = call i32 @msr_save_context(%struct.saved_context* %42)
  ret void
}

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local i32 @store_idt(i32*) #1

declare dso_local i64 @get_cpu_gdt_rw(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @store_tr(i32) #1

declare dso_local i32 @read_cr0(...) #1

declare dso_local i32 @read_cr2(...) #1

declare dso_local i32 @__read_cr3(...) #1

declare dso_local i32 @__read_cr4(...) #1

declare dso_local i32 @rdmsrl_safe(i32, i32*) #1

declare dso_local i32 @msr_save_context(%struct.saved_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
