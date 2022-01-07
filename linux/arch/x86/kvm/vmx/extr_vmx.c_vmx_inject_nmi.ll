; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_inject_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_inject_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i64 }

@enable_vnmi = common dso_local global i32 0, align 4
@NMI_VECTOR = common dso_local global i32 0, align 4
@VM_ENTRY_INTR_INFO_FIELD = common dso_local global i32 0, align 4
@INTR_TYPE_NMI_INTR = common dso_local global i32 0, align 4
@INTR_INFO_VALID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @vmx_inject_nmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_inject_nmi(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %4)
  store %struct.vcpu_vmx* %5, %struct.vcpu_vmx** %3, align 8
  %6 = load i32, i32* @enable_vnmi, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %10 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %14 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %24 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %28 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %34 = load i32, i32* @NMI_VECTOR, align 4
  %35 = call i32 @kvm_inject_realmode_interrupt(%struct.kvm_vcpu* %33, i32 %34, i32 0)
  br label %46

36:                                               ; preds = %17
  %37 = load i32, i32* @VM_ENTRY_INTR_INFO_FIELD, align 4
  %38 = load i32, i32* @INTR_TYPE_NMI_INTR, align 4
  %39 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @NMI_VECTOR, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @vmcs_write32(i32 %37, i32 %42)
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %45 = call i32 @vmx_clear_hlt(%struct.kvm_vcpu* %44)
  br label %46

46:                                               ; preds = %36, %32
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_inject_realmode_interrupt(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @vmx_clear_hlt(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
