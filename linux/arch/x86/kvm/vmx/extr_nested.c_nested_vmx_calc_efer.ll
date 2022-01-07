; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_calc_efer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_calc_efer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.vmcs12 = type { i32, i32 }

@VM_ENTRY_LOAD_IA32_EFER = common dso_local global i32 0, align 4
@VM_ENTRY_IA32E_MODE = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_vmx*, %struct.vmcs12*)* @nested_vmx_calc_efer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_calc_efer(%struct.vcpu_vmx* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca %struct.vmcs12*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %4, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %5, align 8
  %6 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %7 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %13 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VM_ENTRY_LOAD_IA32_EFER, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %20 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %11, %2
  %23 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %24 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @VM_ENTRY_IA32E_MODE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %31 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @EFER_LMA, align 4
  %36 = load i32, i32* @EFER_LME, align 4
  %37 = or i32 %35, %36
  %38 = or i32 %34, %37
  store i32 %38, i32* %3, align 4
  br label %50

39:                                               ; preds = %22
  %40 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %41 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @EFER_LMA, align 4
  %46 = load i32, i32* @EFER_LME, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %44, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %39, %29, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
