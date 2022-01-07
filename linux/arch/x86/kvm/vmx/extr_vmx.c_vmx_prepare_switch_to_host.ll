; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_prepare_switch_to_host.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_prepare_switch_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.vmcs_host_state }
%struct.vmcs_host_state = type { i32, i32, i32, i32, i64 }

@gs = common dso_local global i32 0, align 4
@fs = common dso_local global i32 0, align 4
@MSR_KERNEL_GS_BASE = common dso_local global i32 0, align 4
@ds = common dso_local global i32 0, align 4
@es = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*)* @vmx_prepare_switch_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_prepare_switch_to_host(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca %struct.vmcs_host_state*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %4 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %5 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %60

9:                                                ; preds = %1
  %10 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %11 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %10, i32 0, i32 5
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.vmcs_host_state* %13, %struct.vmcs_host_state** %3, align 8
  %14 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %15 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %3, align 8
  %21 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %9
  %25 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %3, align 8
  %26 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 7
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24, %9
  %31 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %3, align 8
  %32 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @kvm_load_ldt(i64 %33)
  %35 = load i32, i32* @gs, align 4
  %36 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %3, align 8
  %37 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @loadsegment(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %30, %24
  %41 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %3, align 8
  %42 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 7
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* @fs, align 4
  %48 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %3, align 8
  %49 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @loadsegment(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = call i32 (...) @invalidate_tss_limit()
  %54 = call i32 (...) @raw_smp_processor_id()
  %55 = call i32 @load_fixmap_gdt(i32 %54)
  %56 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %57 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %59 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %52, %8
  ret void
}

declare dso_local i32 @kvm_load_ldt(i64) #1

declare dso_local i32 @loadsegment(i32, i32) #1

declare dso_local i32 @invalidate_tss_limit(...) #1

declare dso_local i32 @load_fixmap_gdt(i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
