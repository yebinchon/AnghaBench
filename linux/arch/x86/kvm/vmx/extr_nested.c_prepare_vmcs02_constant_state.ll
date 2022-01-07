; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_prepare_vmcs02_constant_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_prepare_vmcs02_constant_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_9__, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@enable_ept = common dso_local global i64 0, align 8
@nested_early_check = common dso_local global i64 0, align 8
@EPT_POINTER = common dso_local global i32 0, align 4
@VM_FUNCTION_CONTROL = common dso_local global i32 0, align 4
@POSTED_INTR_NV = common dso_local global i32 0, align 4
@POSTED_INTR_NESTED_VECTOR = common dso_local global i64 0, align 8
@MSR_BITMAP = common dso_local global i32 0, align 4
@enable_pml = common dso_local global i64 0, align 8
@PML_ADDRESS = common dso_local global i32 0, align 4
@GUEST_PML_INDEX = common dso_local global i32 0, align 4
@PML_ENTITY_NUM = common dso_local global i64 0, align 8
@ENCLS_EXITING_BITMAP = common dso_local global i32 0, align 4
@VM_EXIT_MSR_STORE_COUNT = common dso_local global i32 0, align 4
@VM_EXIT_MSR_LOAD_ADDR = common dso_local global i32 0, align 4
@VM_ENTRY_MSR_LOAD_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*)* @prepare_vmcs02_constant_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_vmcs02_constant_state(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %3 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %4 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %90

9:                                                ; preds = %1
  %10 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %11 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load i64, i64* @enable_ept, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load i64, i64* @nested_early_check, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* @EPT_POINTER, align 4
  %20 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %21 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %20, i32 0, i32 3
  %22 = call i64 @construct_eptp(i32* %21, i32 0)
  %23 = call i32 @vmcs_write64(i32 %19, i64 %22)
  br label %24

24:                                               ; preds = %18, %15, %9
  %25 = call i64 (...) @cpu_has_vmx_vmfunc()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @VM_FUNCTION_CONTROL, align 4
  %29 = call i32 @vmcs_write64(i32 %28, i64 0)
  br label %30

30:                                               ; preds = %27, %24
  %31 = call i64 (...) @cpu_has_vmx_posted_intr()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @POSTED_INTR_NV, align 4
  %35 = load i64, i64* @POSTED_INTR_NESTED_VECTOR, align 8
  %36 = call i32 @vmcs_write16(i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = call i64 (...) @cpu_has_vmx_msr_bitmap()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* @MSR_BITMAP, align 4
  %42 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %43 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @__pa(i32 %46)
  %48 = call i32 @vmcs_write64(i32 %41, i64 %47)
  br label %49

49:                                               ; preds = %40, %37
  %50 = load i64, i64* @enable_pml, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32, i32* @PML_ADDRESS, align 4
  %54 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %55 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @page_to_phys(i32 %56)
  %58 = call i32 @vmcs_write64(i32 %53, i64 %57)
  %59 = load i32, i32* @GUEST_PML_INDEX, align 4
  %60 = load i64, i64* @PML_ENTITY_NUM, align 8
  %61 = sub nsw i64 %60, 1
  %62 = call i32 @vmcs_write16(i32 %59, i64 %61)
  br label %63

63:                                               ; preds = %52, %49
  %64 = call i64 (...) @cpu_has_vmx_encls_vmexit()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @ENCLS_EXITING_BITMAP, align 4
  %68 = call i32 @vmcs_write64(i32 %67, i64 -1)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* @VM_EXIT_MSR_STORE_COUNT, align 4
  %71 = call i32 @vmcs_write32(i32 %70, i32 0)
  %72 = load i32, i32* @VM_EXIT_MSR_LOAD_ADDR, align 4
  %73 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %74 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @__pa(i32 %77)
  %79 = call i32 @vmcs_write64(i32 %72, i64 %78)
  %80 = load i32, i32* @VM_ENTRY_MSR_LOAD_ADDR, align 4
  %81 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %82 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @__pa(i32 %85)
  %87 = call i32 @vmcs_write64(i32 %80, i64 %86)
  %88 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %89 = call i32 @vmx_set_constant_host_state(%struct.vcpu_vmx* %88)
  br label %90

90:                                               ; preds = %69, %8
  ret void
}

declare dso_local i32 @vmcs_write64(i32, i64) #1

declare dso_local i64 @construct_eptp(i32*, i32) #1

declare dso_local i64 @cpu_has_vmx_vmfunc(...) #1

declare dso_local i64 @cpu_has_vmx_posted_intr(...) #1

declare dso_local i32 @vmcs_write16(i32, i64) #1

declare dso_local i64 @cpu_has_vmx_msr_bitmap(...) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i64 @cpu_has_vmx_encls_vmexit(...) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @vmx_set_constant_host_state(%struct.vcpu_vmx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
