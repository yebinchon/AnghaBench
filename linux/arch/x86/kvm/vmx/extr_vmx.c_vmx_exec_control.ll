; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_exec_control.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_exec_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@vmcs_config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@KVM_DEBUGREG_WONT_EXIT = common dso_local global i32 0, align 4
@CPU_BASED_MOV_DR_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_TPR_SHADOW = common dso_local global i32 0, align 4
@enable_ept = common dso_local global i32 0, align 4
@CPU_BASED_CR3_STORE_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_CR3_LOAD_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_INVLPG_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_MWAIT_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_MONITOR_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_HLT_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_CR8_LOAD_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_CR8_STORE_EXITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmx_exec_control(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcs_config, i32 0, i32 0), align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %6 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @KVM_DEBUGREG_WONT_EXIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @CPU_BASED_MOV_DR_EXITING, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 0
  %21 = call i32 @cpu_need_tpr_shadow(%struct.TYPE_6__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @CPU_BASED_TPR_SHADOW, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @enable_ept, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @CPU_BASED_CR3_STORE_EXITING, align 4
  %33 = load i32, i32* @CPU_BASED_CR3_LOAD_EXITING, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CPU_BASED_INVLPG_EXITING, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %28
  %40 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %41 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @kvm_mwait_in_guest(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32, i32* @CPU_BASED_MWAIT_EXITING, align 4
  %48 = load i32, i32* @CPU_BASED_MONITOR_EXITING, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %55 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @kvm_hlt_in_guest(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i32, i32* @CPU_BASED_HLT_EXITING, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %53
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @cpu_need_tpr_shadow(%struct.TYPE_6__*) #1

declare dso_local i64 @kvm_mwait_in_guest(i32) #1

declare dso_local i64 @kvm_hlt_in_guest(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
