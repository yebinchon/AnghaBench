; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_core_destroy_vm_hv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_core_destroy_vm_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*)* @kvmppc_core_destroy_vm_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_core_destroy_vm_hv(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %3 = load %struct.kvm*, %struct.kvm** %2, align 8
  %4 = getelementptr inbounds %struct.kvm, %struct.kvm* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @debugfs_remove_recursive(i32 %6)
  %8 = load %struct.kvm*, %struct.kvm** %2, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 (...) @kvm_hv_vm_deactivated()
  br label %15

15:                                               ; preds = %13, %1
  %16 = load %struct.kvm*, %struct.kvm** %2, align 8
  %17 = call i32 @kvmppc_free_vcores(%struct.kvm* %16)
  %18 = load %struct.kvm*, %struct.kvm** %2, align 8
  %19 = call i64 @kvm_is_radix(%struct.kvm* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.kvm*, %struct.kvm** %2, align 8
  %23 = call i32 @kvmppc_free_radix(%struct.kvm* %22)
  br label %29

24:                                               ; preds = %15
  %25 = load %struct.kvm*, %struct.kvm** %2, align 8
  %26 = getelementptr inbounds %struct.kvm, %struct.kvm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = call i32 @kvmppc_free_hpt(i32* %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %31 = call i64 @cpu_has_feature(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load %struct.kvm*, %struct.kvm** %2, align 8
  %35 = call i64 @nesting_enabled(%struct.kvm* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.kvm*, %struct.kvm** %2, align 8
  %39 = call i32 @kvmhv_release_all_nested(%struct.kvm* %38)
  br label %40

40:                                               ; preds = %37, %33
  %41 = load %struct.kvm*, %struct.kvm** %2, align 8
  %42 = getelementptr inbounds %struct.kvm, %struct.kvm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.kvm*, %struct.kvm** %2, align 8
  %45 = getelementptr inbounds %struct.kvm, %struct.kvm* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kvmhv_set_ptbl_entry(i32 %47, i32 0, i32 0)
  br label %49

49:                                               ; preds = %40, %29
  %50 = load %struct.kvm*, %struct.kvm** %2, align 8
  %51 = getelementptr inbounds %struct.kvm, %struct.kvm* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @kvmppc_free_lpid(i32 %53)
  %55 = load %struct.kvm*, %struct.kvm** %2, align 8
  %56 = call i32 @kvmppc_free_pimap(%struct.kvm* %55)
  ret void
}

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @kvm_hv_vm_deactivated(...) #1

declare dso_local i32 @kvmppc_free_vcores(%struct.kvm*) #1

declare dso_local i64 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i32 @kvmppc_free_radix(%struct.kvm*) #1

declare dso_local i32 @kvmppc_free_hpt(i32*) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @nesting_enabled(%struct.kvm*) #1

declare dso_local i32 @kvmhv_release_all_nested(%struct.kvm*) #1

declare dso_local i32 @kvmhv_set_ptbl_entry(i32, i32, i32) #1

declare dso_local i32 @kvmppc_free_lpid(i32) #1

declare dso_local i32 @kvmppc_free_pimap(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
