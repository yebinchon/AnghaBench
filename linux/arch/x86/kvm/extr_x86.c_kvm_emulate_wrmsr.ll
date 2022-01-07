; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_emulate_wrmsr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_emulate_wrmsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_emulate_wrmsr(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call i32 @kvm_rcx_read(%struct.kvm_vcpu* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call i32 @kvm_read_edx_eax(%struct.kvm_vcpu* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @kvm_set_msr(%struct.kvm_vcpu* %10, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @trace_kvm_msr_write_ex(i32 %16, i32 %17)
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = call i32 @kvm_inject_gp(%struct.kvm_vcpu* %19, i32 0)
  store i32 1, i32* %2, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @trace_kvm_msr_write(i32 %22, i32 %23)
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = call i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu* %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @kvm_rcx_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_edx_eax(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_set_msr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @trace_kvm_msr_write_ex(i32, i32) #1

declare dso_local i32 @kvm_inject_gp(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @trace_kvm_msr_write(i32, i32) #1

declare dso_local i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
