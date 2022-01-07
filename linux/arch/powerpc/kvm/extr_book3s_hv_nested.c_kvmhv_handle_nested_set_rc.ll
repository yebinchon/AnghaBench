; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_handle_nested_set_rc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_handle_nested_set_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kvm_nested_guest = type { i32, i32 }
%struct.kvmppc_pte = type { i32, i64 }

@DSISR_ISSTORE = common dso_local global i64 0, align 8
@_PAGE_ACCESSED = common dso_local global i32 0, align 4
@_PAGE_DIRTY = common dso_local global i32 0, align 4
@RESUME_HOST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, %struct.kvm_nested_guest*, i64, i32, i64, i64)* @kvmhv_handle_nested_set_rc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvmhv_handle_nested_set_rc(%struct.kvm_vcpu* %0, %struct.kvm_nested_guest* %1, i64 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvmppc_pte, align 8
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca %struct.kvm_nested_guest*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.kvm*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = bitcast %struct.kvmppc_pte* %8 to { i32, i64 }*
  %18 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %17, i32 0, i32 0
  store i32 %3, i32* %18, align 8
  %19 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %17, i32 0, i32 1
  store i64 %4, i64* %19, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %9, align 8
  store %struct.kvm_nested_guest* %1, %struct.kvm_nested_guest** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = load %struct.kvm*, %struct.kvm** %21, align 8
  store %struct.kvm* %22, %struct.kvm** %13, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* @DSISR_ISSTORE, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @_PAGE_ACCESSED, align 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %6
  %34 = load i32, i32* @_PAGE_DIRTY, align 4
  %35 = load i32, i32* %15, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %33, %6
  %38 = load i32, i32* %15, align 4
  %39 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i64, i64* @RESUME_HOST, align 8
  store i64 %45, i64* %7, align 8
  br label %91

46:                                               ; preds = %37
  %47 = load %struct.kvm*, %struct.kvm** %13, align 8
  %48 = getelementptr inbounds %struct.kvm, %struct.kvm* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.kvm*, %struct.kvm** %13, align 8
  %51 = load %struct.kvm*, %struct.kvm** %13, align 8
  %52 = getelementptr inbounds %struct.kvm, %struct.kvm* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %14, align 4
  %56 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %8, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.kvm*, %struct.kvm** %13, align 8
  %59 = getelementptr inbounds %struct.kvm, %struct.kvm* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @kvmppc_hv_handle_set_rc(%struct.kvm* %50, i32 %54, i32 %55, i64 %57, i32 %61)
  store i64 %62, i64* %16, align 8
  %63 = load i64, i64* %16, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %46
  %66 = load i64, i64* @EINVAL, align 8
  %67 = sub nsw i64 0, %66
  store i64 %67, i64* %16, align 8
  br label %86

68:                                               ; preds = %46
  %69 = load %struct.kvm*, %struct.kvm** %13, align 8
  %70 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %10, align 8
  %71 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %10, align 8
  %76 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @kvmppc_hv_handle_set_rc(%struct.kvm* %69, i32 %72, i32 %73, i64 %74, i32 %77)
  store i64 %78, i64* %16, align 8
  %79 = load i64, i64* %16, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %68
  %82 = load i64, i64* @EINVAL, align 8
  %83 = sub nsw i64 0, %82
  store i64 %83, i64* %16, align 8
  br label %85

84:                                               ; preds = %68
  store i64 0, i64* %16, align 8
  br label %85

85:                                               ; preds = %84, %81
  br label %86

86:                                               ; preds = %85, %65
  %87 = load %struct.kvm*, %struct.kvm** %13, align 8
  %88 = getelementptr inbounds %struct.kvm, %struct.kvm* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load i64, i64* %16, align 8
  store i64 %90, i64* %7, align 8
  br label %91

91:                                               ; preds = %86, %44
  %92 = load i64, i64* %7, align 8
  ret i64 %92
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @kvmppc_hv_handle_set_rc(%struct.kvm*, i32, i32, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
