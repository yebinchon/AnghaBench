; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_crash.c_native_machine_crash_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_crash.c_native_machine_crash_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @native_machine_crash_shutdown(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = call i32 (...) @local_irq_disable()
  %4 = call i32 (...) @crash_smp_send_stop()
  %5 = call i32 (...) @cpu_crash_vmclear_loaded_vmcss()
  %6 = call i32 (...) @cpu_emergency_vmxoff()
  %7 = call i32 (...) @cpu_emergency_svm_disable()
  %8 = call i32 (...) @cpu_emergency_stop_pt()
  %9 = call i32 (...) @lapic_shutdown()
  %10 = call i32 (...) @restore_boot_irq_mode()
  %11 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %12 = call i32 (...) @safe_smp_processor_id()
  %13 = call i32 @crash_save_cpu(%struct.pt_regs* %11, i32 %12)
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @crash_smp_send_stop(...) #1

declare dso_local i32 @cpu_crash_vmclear_loaded_vmcss(...) #1

declare dso_local i32 @cpu_emergency_vmxoff(...) #1

declare dso_local i32 @cpu_emergency_svm_disable(...) #1

declare dso_local i32 @cpu_emergency_stop_pt(...) #1

declare dso_local i32 @lapic_shutdown(...) #1

declare dso_local i32 @restore_boot_irq_mode(...) #1

declare dso_local i32 @crash_save_cpu(%struct.pt_regs*, i32) #1

declare dso_local i32 @safe_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
