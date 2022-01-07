; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_setup_msrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_setup_msrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MSR_EFER = common dso_local global i32 0, align 4
@MSR_TSC_AUX = common dso_local global i32 0, align 4
@X86_FEATURE_RDTSCP = common dso_local global i32 0, align 4
@EFER_SCE = common dso_local global i32 0, align 4
@MSR_LSTAR = common dso_local global i32 0, align 4
@MSR_STAR = common dso_local global i32 0, align 4
@MSR_SYSCALL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*)* @setup_msrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_msrs(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %6 = load i32, i32* @MSR_EFER, align 4
  %7 = call i32 @__find_msr_index(%struct.vcpu_vmx* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @update_transition_efer(%struct.vcpu_vmx* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = call i32 @move_msr_up(%struct.vcpu_vmx* %16, i32 %17, i32 %18)
  br label %21

21:                                               ; preds = %15, %10, %1
  %22 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %23 = load i32, i32* @MSR_TSC_AUX, align 4
  %24 = call i32 @__find_msr_index(%struct.vcpu_vmx* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %29 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %28, i32 0, i32 2
  %30 = load i32, i32* @X86_FEATURE_RDTSCP, align 4
  %31 = call i64 @guest_cpuid_has(%struct.TYPE_6__* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  %38 = call i32 @move_msr_up(%struct.vcpu_vmx* %34, i32 %35, i32 %36)
  br label %39

39:                                               ; preds = %33, %27, %21
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %42 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %44 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = call i64 (...) @cpu_has_vmx_msr_bitmap()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %49 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %48, i32 0, i32 2
  %50 = call i32 @vmx_update_msr_bitmap(%struct.TYPE_6__* %49)
  br label %51

51:                                               ; preds = %47, %39
  ret void
}

declare dso_local i32 @__find_msr_index(%struct.vcpu_vmx*, i32) #1

declare dso_local i64 @update_transition_efer(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @move_msr_up(%struct.vcpu_vmx*, i32, i32) #1

declare dso_local i64 @guest_cpuid_has(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @cpu_has_vmx_msr_bitmap(...) #1

declare dso_local i32 @vmx_update_msr_bitmap(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
