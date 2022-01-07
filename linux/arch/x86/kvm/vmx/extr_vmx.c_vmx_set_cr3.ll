; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_cr3.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_cr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@enable_ept = common dso_local global i64 0, align 8
@EPT_POINTER = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_6__* null, align 8
@EPT_POINTERS_CHECK = common dso_local global i32 0, align 4
@enable_unrestricted_guest = common dso_local global i64 0, align 8
@GUEST_CR3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_set_cr3(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = load %struct.kvm*, %struct.kvm** %9, align 8
  store %struct.kvm* %10, %struct.kvm** %5, align 8
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* @enable_ept, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %64

14:                                               ; preds = %2
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @construct_eptp(%struct.kvm_vcpu* %15, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @EPT_POINTER, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @vmcs_write64(i32 %18, i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_x86_ops, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %14
  %26 = load %struct.kvm*, %struct.kvm** %5, align 8
  %27 = call %struct.TYPE_5__* @to_kvm_vmx(%struct.kvm* %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = call %struct.TYPE_4__* @to_vmx(%struct.kvm_vcpu* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @EPT_POINTERS_CHECK, align 4
  %35 = load %struct.kvm*, %struct.kvm** %5, align 8
  %36 = call %struct.TYPE_5__* @to_kvm_vmx(%struct.kvm* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load %struct.kvm*, %struct.kvm** %5, align 8
  %39 = call %struct.TYPE_5__* @to_kvm_vmx(%struct.kvm* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock(i32* %40)
  br label %42

42:                                               ; preds = %25, %14
  %43 = load i64, i64* @enable_unrestricted_guest, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = call i64 @is_paging(%struct.kvm_vcpu* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = call i64 @is_guest_mode(%struct.kvm_vcpu* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %45, %42
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = call i64 @kvm_read_cr3(%struct.kvm_vcpu* %54)
  store i64 %55, i64* %6, align 8
  br label %61

56:                                               ; preds = %49
  %57 = load %struct.kvm*, %struct.kvm** %5, align 8
  %58 = call %struct.TYPE_5__* @to_kvm_vmx(%struct.kvm* %57)
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %56, %53
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = call i32 @ept_load_pdptrs(%struct.kvm_vcpu* %62)
  br label %64

64:                                               ; preds = %61, %2
  %65 = load i32, i32* @GUEST_CR3, align 4
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @vmcs_writel(i32 %65, i64 %66)
  ret void
}

declare dso_local i32 @construct_eptp(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @vmcs_write64(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_5__* @to_kvm_vmx(%struct.kvm*) #1

declare dso_local %struct.TYPE_4__* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_read_cr3(%struct.kvm_vcpu*) #1

declare dso_local i32 @ept_load_pdptrs(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
