; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_load_msr_check.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_load_msr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmx_msr_entry = type { i64 }

@MSR_FS_BASE = common dso_local global i64 0, align 8
@MSR_GS_BASE = common dso_local global i64 0, align 8
@MSR_IA32_SMM_MONITOR_CTL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmx_msr_entry*)* @nested_vmx_load_msr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_load_msr_check(%struct.kvm_vcpu* %0, %struct.vmx_msr_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vmx_msr_entry*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vmx_msr_entry* %1, %struct.vmx_msr_entry** %5, align 8
  %6 = load %struct.vmx_msr_entry*, %struct.vmx_msr_entry** %5, align 8
  %7 = getelementptr inbounds %struct.vmx_msr_entry, %struct.vmx_msr_entry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MSR_FS_BASE, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @CC(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %2
  %15 = load %struct.vmx_msr_entry*, %struct.vmx_msr_entry** %5, align 8
  %16 = getelementptr inbounds %struct.vmx_msr_entry, %struct.vmx_msr_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MSR_GS_BASE, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @CC(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %14
  %24 = load %struct.vmx_msr_entry*, %struct.vmx_msr_entry** %5, align 8
  %25 = getelementptr inbounds %struct.vmx_msr_entry, %struct.vmx_msr_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MSR_IA32_SMM_MONITOR_CTL, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @CC(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %34 = load %struct.vmx_msr_entry*, %struct.vmx_msr_entry** %5, align 8
  %35 = call i64 @nested_vmx_msr_check_common(%struct.kvm_vcpu* %33, %struct.vmx_msr_entry* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %23, %14, %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @CC(i32) #1

declare dso_local i64 @nested_vmx_msr_check_common(%struct.kvm_vcpu*, %struct.vmx_msr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
