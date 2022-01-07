; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_load_cr3.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_load_cr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@ENTRY_FAIL_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENTRY_FAIL_PDPTE = common dso_local global i32 0, align 4
@VCPU_EXREG_CR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i32, i32*)* @nested_vmx_load_cr3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_load_cr3(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %12 = call i64 @kvm_read_cr3(%struct.kvm_vcpu* %11)
  %13 = icmp ne i64 %10, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %62, label %17

17:                                               ; preds = %14
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %19 = call i64 @pdptrs_changed(%struct.kvm_vcpu* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %17, %4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @nested_cr3_valid(%struct.kvm_vcpu* %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @CC(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load i32, i32* @ENTRY_FAIL_DEFAULT, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %81

35:                                               ; preds = %21
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %37 = call i64 @is_pae_paging(%struct.kvm_vcpu* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %39
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @load_pdptrs(%struct.kvm_vcpu* %43, i32 %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @CC(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load i32, i32* @ENTRY_FAIL_PDPTE, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %81

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60, %39, %35
  br label %62

62:                                               ; preds = %61, %17, %14
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @kvm_mmu_new_cr3(%struct.kvm_vcpu* %66, i64 %67, i32 0)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load i32, i32* @VCPU_EXREG_CR3, align 4
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = call i32 @__set_bit(i32 %74, i32* %77)
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %80 = call i32 @kvm_init_mmu(%struct.kvm_vcpu* %79, i32 0)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %69, %55, %30
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i64 @kvm_read_cr3(%struct.kvm_vcpu*) #1

declare dso_local i64 @pdptrs_changed(%struct.kvm_vcpu*) #1

declare dso_local i64 @CC(i32) #1

declare dso_local i32 @nested_cr3_valid(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @is_pae_paging(%struct.kvm_vcpu*) #1

declare dso_local i32 @load_pdptrs(%struct.kvm_vcpu*, i32, i64) #1

declare dso_local i32 @kvm_mmu_new_cr3(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @kvm_init_mmu(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
