; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_release_nested.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_release_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_nested_guest = type { i32, i64, %struct.kvm* }
%struct.kvm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_nested_guest*)* @kvmhv_release_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmhv_release_nested(%struct.kvm_nested_guest* %0) #0 {
  %2 = alloca %struct.kvm_nested_guest*, align 8
  %3 = alloca %struct.kvm*, align 8
  store %struct.kvm_nested_guest* %0, %struct.kvm_nested_guest** %2, align 8
  %4 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %4, i32 0, i32 2
  %6 = load %struct.kvm*, %struct.kvm** %5, align 8
  store %struct.kvm* %6, %struct.kvm** %3, align 8
  %7 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.kvm*, %struct.kvm** %3, align 8
  %13 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %14 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %17 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @kvmppc_free_pgtable_radix(%struct.kvm* %12, i64 %15, i32 %18)
  %20 = load %struct.kvm*, %struct.kvm** %3, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %24 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @pgd_free(i32 %22, i64 %25)
  br label %27

27:                                               ; preds = %11, %1
  %28 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %29 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @kvmhv_set_ptbl_entry(i32 %30, i32 0, i32 0)
  %32 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %33 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @kvmppc_free_lpid(i32 %34)
  %36 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %37 = call i32 @kfree(%struct.kvm_nested_guest* %36)
  ret void
}

declare dso_local i32 @kvmppc_free_pgtable_radix(%struct.kvm*, i64, i32) #1

declare dso_local i32 @pgd_free(i32, i64) #1

declare dso_local i32 @kvmhv_set_ptbl_entry(i32, i32, i32) #1

declare dso_local i32 @kvmppc_free_lpid(i32) #1

declare dso_local i32 @kfree(%struct.kvm_nested_guest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
