; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_invalidate_shadow_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_invalidate_shadow_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.kvm_nested_guest = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_nested_guest*, i64, i32*)* @kvmhv_invalidate_shadow_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmhv_invalidate_shadow_pte(%struct.kvm_vcpu* %0, %struct.kvm_nested_guest* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvm_nested_guest*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.kvm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.kvm_nested_guest* %1, %struct.kvm_nested_guest** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = load %struct.kvm*, %struct.kvm** %14, align 8
  store %struct.kvm* %15, %struct.kvm** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.kvm*, %struct.kvm** %9, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %20 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %7, align 8
  %23 = call i32* @__find_linux_pte(i32 %21, i64 %22, i32* null, i32* %12)
  store i32* %23, i32** %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %26, %4
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @pte_present(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.kvm*, %struct.kvm** %9, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %42 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kvmppc_unmap_pte(%struct.kvm* %37, i32* %38, i64 %39, i32 %40, i32* null, i32 %43)
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %36, %31, %28
  %46 = load %struct.kvm*, %struct.kvm** %9, align 8
  %47 = getelementptr inbounds %struct.kvm, %struct.kvm* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @__find_linux_pte(i32, i64, i32*, i32*) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i32 @kvmppc_unmap_pte(%struct.kvm*, i32*, i64, i32, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
