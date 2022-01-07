; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_get_vmcs01_guest_efer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_get_vmcs01_guest_efer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.shared_msr_entry = type { i32 }

@VM_ENTRY_LOAD_IA32_EFER = common dso_local global i32 0, align 4
@GUEST_IA32_EFER = common dso_local global i32 0, align 4
@host_efer = common dso_local global i32 0, align 4
@MSR_EFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_vmx*)* @nested_vmx_get_vmcs01_guest_efer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_get_vmcs01_guest_efer(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca %struct.shared_msr_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %3, align 8
  %6 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %7 = call i32 @vm_entry_controls_get(%struct.vcpu_vmx* %6)
  %8 = load i32, i32* @VM_ENTRY_LOAD_IA32_EFER, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @GUEST_IA32_EFER, align 4
  %13 = call i32 @vmcs_read64(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %68

14:                                               ; preds = %1
  %15 = call i64 (...) @cpu_has_load_ia32_efer()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @host_efer, align 4
  store i32 %18, i32* %2, align 4
  br label %68

19:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %53, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %23 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %21, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %20
  %29 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %30 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MSR_EFER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %28
  %42 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %43 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %2, align 4
  br label %68

52:                                               ; preds = %28
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %20

56:                                               ; preds = %20
  %57 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %58 = load i64, i64* @MSR_EFER, align 8
  %59 = call %struct.shared_msr_entry* @find_msr_entry(%struct.vcpu_vmx* %57, i64 %58)
  store %struct.shared_msr_entry* %59, %struct.shared_msr_entry** %4, align 8
  %60 = load %struct.shared_msr_entry*, %struct.shared_msr_entry** %4, align 8
  %61 = icmp ne %struct.shared_msr_entry* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.shared_msr_entry*, %struct.shared_msr_entry** %4, align 8
  %64 = getelementptr inbounds %struct.shared_msr_entry, %struct.shared_msr_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @host_efer, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %62, %41, %17, %11
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @vm_entry_controls_get(%struct.vcpu_vmx*) #1

declare dso_local i32 @vmcs_read64(i32) #1

declare dso_local i64 @cpu_has_load_ia32_efer(...) #1

declare dso_local %struct.shared_msr_entry* @find_msr_entry(%struct.vcpu_vmx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
