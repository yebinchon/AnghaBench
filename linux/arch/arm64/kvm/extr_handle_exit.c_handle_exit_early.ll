; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_handle_exit.c_handle_exit_early.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_handle_exit.c_handle_exit_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_run = type { i32 }

@ARM64_HAS_RAS_EXTN = common dso_local global i32 0, align 4
@ARM_EXCEPTION_EL1_SERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_exit_early(%struct.kvm_vcpu* %0, %struct.kvm_run* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @ARM_SERROR_PENDING(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load i32, i32* @ARM64_HAS_RAS_EXTN, align 4
  %13 = call i64 @this_cpu_has_cap(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %17 = call i32 @kvm_vcpu_get_disr(%struct.kvm_vcpu* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @disr_to_esr(i32 %19)
  %21 = call i32 @kvm_handle_guest_serror(%struct.kvm_vcpu* %18, i32 %20)
  br label %25

22:                                               ; preds = %11
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = call i32 @kvm_inject_vabt(%struct.kvm_vcpu* %23)
  br label %25

25:                                               ; preds = %22, %15
  br label %37

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ARM_EXCEPTION_CODE(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ARM_EXCEPTION_EL1_SERROR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = call i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu* %34)
  %36 = call i32 @kvm_handle_guest_serror(%struct.kvm_vcpu* %33, i32 %35)
  br label %37

37:                                               ; preds = %25, %32, %26
  ret void
}

declare dso_local i64 @ARM_SERROR_PENDING(i32) #1

declare dso_local i64 @this_cpu_has_cap(i32) #1

declare dso_local i32 @kvm_vcpu_get_disr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_handle_guest_serror(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @disr_to_esr(i32) #1

declare dso_local i32 @kvm_inject_vabt(%struct.kvm_vcpu*) #1

declare dso_local i32 @ARM_EXCEPTION_CODE(i32) #1

declare dso_local i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
