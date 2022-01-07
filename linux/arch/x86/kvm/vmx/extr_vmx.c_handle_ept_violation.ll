; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_ept_violation.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_ept_violation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@VECTORING_INFO_VALID_MASK = common dso_local global i32 0, align 4
@enable_vnmi = common dso_local global i64 0, align 8
@INTR_INFO_UNBLOCK_NMI = common dso_local global i64 0, align 8
@GUEST_INTERRUPTIBILITY_INFO = common dso_local global i32 0, align 4
@GUEST_INTR_STATE_NMI = common dso_local global i32 0, align 4
@GUEST_PHYSICAL_ADDRESS = common dso_local global i32 0, align 4
@EPT_VIOLATION_ACC_READ = common dso_local global i64 0, align 8
@PFERR_USER_MASK = common dso_local global i32 0, align 4
@EPT_VIOLATION_ACC_WRITE = common dso_local global i64 0, align 8
@PFERR_WRITE_MASK = common dso_local global i32 0, align 4
@EPT_VIOLATION_ACC_INSTR = common dso_local global i64 0, align 8
@PFERR_FETCH_MASK = common dso_local global i32 0, align 4
@EPT_VIOLATION_READABLE = common dso_local global i64 0, align 8
@EPT_VIOLATION_WRITABLE = common dso_local global i64 0, align 8
@EPT_VIOLATION_EXECUTABLE = common dso_local global i64 0, align 8
@PFERR_PRESENT_MASK = common dso_local global i32 0, align 4
@PFERR_GUEST_FINAL_MASK = common dso_local global i32 0, align 4
@PFERR_GUEST_PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_ept_violation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ept_violation(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %7 = call i64 @vmcs_readl(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = call %struct.TYPE_4__* @to_vmx(%struct.kvm_vcpu* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @VECTORING_INFO_VALID_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* @enable_vnmi, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @INTR_INFO_UNBLOCK_NMI, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @GUEST_INTERRUPTIBILITY_INFO, align 4
  %25 = load i32, i32* @GUEST_INTR_STATE_NMI, align 4
  %26 = call i32 @vmcs_set_bits(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %18, %15, %1
  %28 = load i32, i32* @GUEST_PHYSICAL_ADDRESS, align 4
  %29 = call i32 @vmcs_read64(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @trace_kvm_page_fault(i32 %30, i64 %31)
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @EPT_VIOLATION_ACC_READ, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @PFERR_USER_MASK, align 4
  br label %40

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  store i32 %41, i32* %5, align 4
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @EPT_VIOLATION_ACC_WRITE, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @PFERR_WRITE_MASK, align 4
  br label %49

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @EPT_VIOLATION_ACC_INSTR, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @PFERR_FETCH_MASK, align 4
  br label %60

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @EPT_VIOLATION_READABLE, align 8
  %66 = load i64, i64* @EPT_VIOLATION_WRITABLE, align 8
  %67 = or i64 %65, %66
  %68 = load i64, i64* @EPT_VIOLATION_EXECUTABLE, align 8
  %69 = or i64 %67, %68
  %70 = and i64 %64, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load i32, i32* @PFERR_PRESENT_MASK, align 4
  br label %75

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i64, i64* %3, align 8
  %80 = and i64 %79, 256
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @PFERR_GUEST_FINAL_MASK, align 4
  br label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @PFERR_GUEST_PAGE_MASK, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i64, i64* %3, align 8
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %92 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i64 %90, i64* %93, align 8
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @kvm_mmu_page_fault(%struct.kvm_vcpu* %94, i32 %95, i32 %96, i32* null, i32 0)
  ret i32 %97
}

declare dso_local i64 @vmcs_readl(i32) #1

declare dso_local %struct.TYPE_4__* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_set_bits(i32, i32) #1

declare dso_local i32 @vmcs_read64(i32) #1

declare dso_local i32 @trace_kvm_page_fault(i32, i64) #1

declare dso_local i32 @kvm_mmu_page_fault(%struct.kvm_vcpu*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
