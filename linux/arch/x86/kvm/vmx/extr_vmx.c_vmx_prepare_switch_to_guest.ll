; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_prepare_switch_to_guest.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_prepare_switch_to_guest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i8*, i32, i32 }
%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { i32, i32, i32, i32, i32, i8*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.vmcs_host_state }
%struct.vmcs_host_state = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@fs = common dso_local global i32 0, align 4
@gs = common dso_local global i32 0, align 4
@MSR_FS_BASE = common dso_local global i32 0, align 4
@MSR_KERNEL_GS_BASE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@ds = common dso_local global i32 0, align 4
@es = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_prepare_switch_to_guest(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca %struct.vmcs_host_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %10)
  store %struct.vcpu_vmx* %11, %struct.vcpu_vmx** %3, align 8
  %12 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %13 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %15 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %57, label %18

18:                                               ; preds = %1
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %53, %18
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %24 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %21
  %28 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %29 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %28, i32 0, i32 7
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %37 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %36, i32 0, i32 7
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %45 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %44, i32 0, i32 7
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @kvm_set_shared_msr(i32 %35, i32 %43, i32 %51)
  br label %53

53:                                               ; preds = %27
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %21

56:                                               ; preds = %21
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %59 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %89

63:                                               ; preds = %57
  %64 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %65 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %64, i32 0, i32 6
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store %struct.vmcs_host_state* %67, %struct.vmcs_host_state** %4, align 8
  %68 = call i32 (...) @kvm_read_ldt()
  %69 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %4, align 8
  %70 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @fs, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @savesegment(i32 %71, i32 %72)
  %74 = load i32, i32* @gs, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @savesegment(i32 %74, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @segment_base(i32 %77)
  store i64 %78, i64* %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @segment_base(i32 %79)
  store i64 %80, i64* %6, align 8
  %81 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @vmx_set_host_fs_gs(%struct.vmcs_host_state* %81, i32 %82, i32 %83, i64 %84, i64 %85)
  %87 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %88 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %87, i32 0, i32 3
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %63, %62
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_set_shared_msr(i32, i32, i32) #1

declare dso_local i32 @kvm_read_ldt(...) #1

declare dso_local i32 @savesegment(i32, i32) #1

declare dso_local i64 @segment_base(i32) #1

declare dso_local i32 @vmx_set_host_fs_gs(%struct.vmcs_host_state*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
