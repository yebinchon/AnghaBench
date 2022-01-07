; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_check_extension.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_check_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32*, i32*, i32)*, i32*, i32*, i32 (...)* }
%struct.kvm = type { i32 }

@KVM_SYNC_X86_VALID_FIELDS = common dso_local global i32 0, align 4
@KVM_CLOCK_TSC_STABLE = common dso_local global i32 0, align 4
@KVM_X86_DISABLE_EXITS_HLT = common dso_local global i32 0, align 4
@KVM_X86_DISABLE_EXITS_PAUSE = common dso_local global i32 0, align 4
@KVM_X86_DISABLE_EXITS_CSTATE = common dso_local global i32 0, align 4
@KVM_X86_DISABLE_EXITS_MWAIT = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@MSR_IA32_SMBASE = common dso_local global i32 0, align 4
@KVM_SOFT_MAX_VCPUS = common dso_local global i32 0, align 4
@KVM_MAX_VCPUS = common dso_local global i32 0, align 4
@KVM_MAX_VCPU_ID = common dso_local global i32 0, align 4
@KVM_MAX_MCE_BANKS = common dso_local global i32 0, align 4
@X86_FEATURE_XSAVE = common dso_local global i32 0, align 4
@kvm_has_tsc_control = common dso_local global i32 0, align 4
@KVM_X2APIC_API_VALID_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_check_extension(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  switch i64 %6, label %82 [
    i64 165, label %7
    i64 183, label %7
    i64 159, label %7
    i64 143, label %7
    i64 187, label %7
    i64 186, label %7
    i64 191, label %7
    i64 152, label %7
    i64 155, label %7
    i64 158, label %7
    i64 141, label %7
    i64 137, label %7
    i64 146, label %7
    i64 164, label %7
    i64 167, label %7
    i64 166, label %7
    i64 151, label %7
    i64 150, label %7
    i64 144, label %7
    i64 129, label %7
    i64 135, label %7
    i64 182, label %7
    i64 171, label %7
    i64 176, label %7
    i64 175, label %7
    i64 174, label %7
    i64 170, label %7
    i64 178, label %7
    i64 172, label %7
    i64 177, label %7
    i64 181, label %7
    i64 153, label %7
    i64 190, label %7
    i64 132, label %7
    i64 128, label %7
    i64 192, label %7
    i64 184, label %7
    i64 163, label %7
    i64 147, label %7
    i64 173, label %7
    i64 168, label %7
    i64 138, label %7
    i64 189, label %7
    i64 145, label %7
    i64 142, label %7
    i64 169, label %7
    i64 149, label %7
    i64 185, label %7
    i64 157, label %7
    i64 188, label %7
    i64 140, label %8
    i64 193, label %10
    i64 133, label %12
    i64 131, label %27
    i64 136, label %33
    i64 154, label %41
    i64 162, label %43
    i64 161, label %45
    i64 148, label %47
    i64 160, label %48
    i64 130, label %50
    i64 139, label %53
    i64 134, label %55
    i64 156, label %57
    i64 180, label %70
    i64 179, label %76
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %5, align 4
  br label %83

8:                                                ; preds = %2
  %9 = load i32, i32* @KVM_SYNC_X86_VALID_FIELDS, align 4
  store i32 %9, i32* %5, align 4
  br label %83

10:                                               ; preds = %2
  %11 = load i32, i32* @KVM_CLOCK_TSC_STABLE, align 4
  store i32 %11, i32* %5, align 4
  br label %83

12:                                               ; preds = %2
  %13 = load i32, i32* @KVM_X86_DISABLE_EXITS_HLT, align 4
  %14 = load i32, i32* @KVM_X86_DISABLE_EXITS_PAUSE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @KVM_X86_DISABLE_EXITS_CSTATE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = call i32 (...) @kvm_can_mwait_in_guest()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load i32, i32* @KVM_X86_DISABLE_EXITS_MWAIT, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %12
  br label %83

27:                                               ; preds = %2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = load i32, i32* @MSR_IA32_SMBASE, align 4
  %32 = call i32 %30(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %83

33:                                               ; preds = %2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i32 (...)*, i32 (...)** %35, align 8
  %37 = call i32 (...) %36()
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %83

41:                                               ; preds = %2
  %42 = load i32, i32* @KVM_SOFT_MAX_VCPUS, align 4
  store i32 %42, i32* %5, align 4
  br label %83

43:                                               ; preds = %2
  %44 = load i32, i32* @KVM_MAX_VCPUS, align 4
  store i32 %44, i32* %5, align 4
  br label %83

45:                                               ; preds = %2
  %46 = load i32, i32* @KVM_MAX_VCPU_ID, align 4
  store i32 %46, i32* %5, align 4
  br label %83

47:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %83

48:                                               ; preds = %2
  %49 = load i32, i32* @KVM_MAX_MCE_BANKS, align 4
  store i32 %49, i32* %5, align 4
  br label %83

50:                                               ; preds = %2
  %51 = load i32, i32* @X86_FEATURE_XSAVE, align 4
  %52 = call i32 @boot_cpu_has(i32 %51)
  store i32 %52, i32* %5, align 4
  br label %83

53:                                               ; preds = %2
  %54 = load i32, i32* @kvm_has_tsc_control, align 4
  store i32 %54, i32* %5, align 4
  br label %83

55:                                               ; preds = %2
  %56 = load i32, i32* @KVM_X2APIC_API_VALID_FLAGS, align 4
  store i32 %56, i32* %5, align 4
  br label %83

57:                                               ; preds = %2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %59, align 8
  %61 = icmp ne i32 (i32*, i32*, i32)* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %64, align 8
  %66 = call i32 %65(i32* null, i32* null, i32 0)
  br label %68

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %62
  %69 = phi i32 [ %66, %62 ], [ 0, %67 ]
  store i32 %69, i32* %5, align 4
  br label %83

70:                                               ; preds = %2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %83

76:                                               ; preds = %2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %83

82:                                               ; preds = %2
  br label %83

83:                                               ; preds = %82, %76, %70, %68, %55, %53, %50, %48, %47, %45, %43, %41, %33, %27, %26, %10, %8, %7
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @kvm_can_mwait_in_guest(...) #1

declare dso_local i32 @boot_cpu_has(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
