; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_revmap_for_hpte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_revmap_for_hpte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.kvm*, i64, i64, %struct.kvm_memory_slot**, i64*)* @revmap_for_hpte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @revmap_for_hpte(%struct.kvm* %0, i64 %1, i64 %2, %struct.kvm_memory_slot** %3, i64* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kvm_memory_slot**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.kvm_memory_slot*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.kvm_memory_slot** %3, %struct.kvm_memory_slot*** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @kvmppc_actual_pgsz(i64 %16, i64 %17)
  %19 = call i64 @hpte_rpn(i64 %15, i32 %18)
  store i64 %19, i64* %14, align 8
  %20 = load %struct.kvm*, %struct.kvm** %7, align 8
  %21 = call i32 @kvm_memslots_raw(%struct.kvm* %20)
  %22 = load i64, i64* %14, align 8
  %23 = call %struct.kvm_memory_slot* @__gfn_to_memslot(i32 %21, i64 %22)
  store %struct.kvm_memory_slot* %23, %struct.kvm_memory_slot** %12, align 8
  %24 = load %struct.kvm_memory_slot**, %struct.kvm_memory_slot*** %10, align 8
  %25 = icmp ne %struct.kvm_memory_slot** %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %12, align 8
  %28 = load %struct.kvm_memory_slot**, %struct.kvm_memory_slot*** %10, align 8
  store %struct.kvm_memory_slot* %27, %struct.kvm_memory_slot** %28, align 8
  br label %29

29:                                               ; preds = %26, %5
  %30 = load i64*, i64** %11, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* %14, align 8
  %34 = load i64*, i64** %11, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %12, align 8
  %37 = icmp ne %struct.kvm_memory_slot* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i64* null, i64** %6, align 8
  br label %52

39:                                               ; preds = %35
  %40 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %12, align 8
  %41 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %12, align 8
  %46 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %44, %47
  %49 = getelementptr inbounds i32, i32* %43, i64 %48
  %50 = call i64* @real_vmalloc_addr(i32* %49)
  store i64* %50, i64** %13, align 8
  %51 = load i64*, i64** %13, align 8
  store i64* %51, i64** %6, align 8
  br label %52

52:                                               ; preds = %39, %38
  %53 = load i64*, i64** %6, align 8
  ret i64* %53
}

declare dso_local i64 @hpte_rpn(i64, i32) #1

declare dso_local i32 @kvmppc_actual_pgsz(i64, i64) #1

declare dso_local %struct.kvm_memory_slot* @__gfn_to_memslot(i32, i64) #1

declare dso_local i32 @kvm_memslots_raw(%struct.kvm*) #1

declare dso_local i64* @real_vmalloc_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
