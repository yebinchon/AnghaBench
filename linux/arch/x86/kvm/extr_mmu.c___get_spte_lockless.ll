; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c___get_spte_lockless.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c___get_spte_lockless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_page = type { i32 }
%union.split_spte = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @__get_spte_lockless to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_spte_lockless(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.kvm_mmu_page*, align 8
  %4 = alloca %union.split_spte, align 8
  %5 = alloca %union.split_spte*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @__pa(i32* %7)
  %9 = call %struct.kvm_mmu_page* @page_header(i32 %8)
  store %struct.kvm_mmu_page* %9, %struct.kvm_mmu_page** %3, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = bitcast i32* %10 to %union.split_spte*
  store %union.split_spte* %11, %union.split_spte** %5, align 8
  br label %12

12:                                               ; preds = %44, %1
  %13 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = call i32 (...) @smp_rmb()
  %17 = load %union.split_spte*, %union.split_spte** %5, align 8
  %18 = bitcast %union.split_spte* %17 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = bitcast %union.split_spte* %4 to i64*
  store i64 %19, i64* %20, align 8
  %21 = call i32 (...) @smp_rmb()
  %22 = load %union.split_spte*, %union.split_spte** %5, align 8
  %23 = bitcast %union.split_spte* %22 to i32*
  %24 = load i32, i32* %23, align 8
  %25 = bitcast %union.split_spte* %4 to i32*
  store i32 %24, i32* %25, align 8
  %26 = call i32 (...) @smp_rmb()
  %27 = bitcast %union.split_spte* %4 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = load %union.split_spte*, %union.split_spte** %5, align 8
  %30 = bitcast %union.split_spte* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %12
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %34, %37
  br label %39

39:                                               ; preds = %33, %12
  %40 = phi i1 [ true, %12 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %12

45:                                               ; preds = %39
  %46 = bitcast %union.split_spte* %4 to i32*
  %47 = load i32, i32* %46, align 8
  ret i32 %47
}

declare dso_local %struct.kvm_mmu_page* @page_header(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
