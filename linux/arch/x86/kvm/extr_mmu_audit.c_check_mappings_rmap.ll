; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu_audit.c_check_mappings_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu_audit.c_check_mappings_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_mmu_page = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PT_PAGE_TABLE_LEVEL = common dso_local global i64 0, align 8
@PT64_ENT_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.kvm_mmu_page*)* @check_mappings_rmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_mappings_rmap(%struct.kvm* %0, %struct.kvm_mmu_page* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_mmu_page*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %4, align 8
  %6 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PT_PAGE_TABLE_LEVEL, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %41

13:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %38, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PT64_ENT_PER_PAGE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @is_shadow_present_pte(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %38

29:                                               ; preds = %18
  %30 = load %struct.kvm*, %struct.kvm** %3, align 8
  %31 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @inspect_spte_has_rmap(%struct.kvm* %30, i32* %36)
  br label %38

38:                                               ; preds = %29, %28
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %14

41:                                               ; preds = %12, %14
  ret void
}

declare dso_local i32 @is_shadow_present_pte(i32) #1

declare dso_local i32 @inspect_spte_has_rmap(%struct.kvm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
