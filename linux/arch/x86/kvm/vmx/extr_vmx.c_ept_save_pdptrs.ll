; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_ept_save_pdptrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_ept_save_pdptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.kvm_mmu* }
%struct.kvm_mmu = type { i8** }

@GUEST_PDPTR0 = common dso_local global i32 0, align 4
@GUEST_PDPTR1 = common dso_local global i32 0, align 4
@GUEST_PDPTR2 = common dso_local global i32 0, align 4
@GUEST_PDPTR3 = common dso_local global i32 0, align 4
@VCPU_EXREG_PDPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ept_save_pdptrs(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_mmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load %struct.kvm_mmu*, %struct.kvm_mmu** %6, align 8
  store %struct.kvm_mmu* %7, %struct.kvm_mmu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = call i64 @is_pae_paging(%struct.kvm_vcpu* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %1
  %12 = load i32, i32* @GUEST_PDPTR0, align 4
  %13 = call i8* @vmcs_read64(i32 %12)
  %14 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  store i8* %13, i8** %17, align 8
  %18 = load i32, i32* @GUEST_PDPTR1, align 4
  %19 = call i8* @vmcs_read64(i32 %18)
  %20 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  store i8* %19, i8** %23, align 8
  %24 = load i32, i32* @GUEST_PDPTR2, align 4
  %25 = call i8* @vmcs_read64(i32 %24)
  %26 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* @GUEST_PDPTR3, align 4
  %31 = call i8* @vmcs_read64(i32 %30)
  %32 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 3
  store i8* %31, i8** %35, align 8
  br label %36

36:                                               ; preds = %11, %1
  %37 = load i32, i32* @VCPU_EXREG_PDPTR, align 4
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = bitcast i32* %40 to i64*
  %42 = call i32 @__set_bit(i32 %37, i64* %41)
  %43 = load i32, i32* @VCPU_EXREG_PDPTR, align 4
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = bitcast i32* %46 to i64*
  %48 = call i32 @__set_bit(i32 %43, i64* %47)
  ret void
}

declare dso_local i64 @is_pae_paging(%struct.kvm_vcpu*) #1

declare dso_local i8* @vmcs_read64(i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
