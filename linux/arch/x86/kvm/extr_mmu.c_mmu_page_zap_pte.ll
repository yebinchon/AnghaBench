; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_page_zap_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_page_zap_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_mmu_page = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PT64_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_mmu_page*, i32*)* @mmu_page_zap_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_page_zap_pte(%struct.kvm* %0, %struct.kvm_mmu_page* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_mmu_page*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_mmu_page*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @is_shadow_present_pte(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %18 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @is_last_spte(i32 %16, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load %struct.kvm*, %struct.kvm** %5, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @drop_spte(%struct.kvm* %24, i32* %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @is_large_pte(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.kvm*, %struct.kvm** %5, align 8
  %32 = getelementptr inbounds %struct.kvm, %struct.kvm* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %23
  br label %45

37:                                               ; preds = %15
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @PT64_BASE_ADDR_MASK, align 4
  %40 = and i32 %38, %39
  %41 = call %struct.kvm_mmu_page* @page_header(i32 %40)
  store %struct.kvm_mmu_page* %41, %struct.kvm_mmu_page** %9, align 8
  %42 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %9, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @drop_parent_pte(%struct.kvm_mmu_page* %42, i32* %43)
  br label %45

45:                                               ; preds = %37, %36
  store i32 1, i32* %4, align 4
  br label %54

46:                                               ; preds = %3
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @is_mmio_spte(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @mmu_spte_clear_no_track(i32* %51)
  br label %53

53:                                               ; preds = %50, %46
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @is_shadow_present_pte(i32) #1

declare dso_local i64 @is_last_spte(i32, i32) #1

declare dso_local i32 @drop_spte(%struct.kvm*, i32*) #1

declare dso_local i64 @is_large_pte(i32) #1

declare dso_local %struct.kvm_mmu_page* @page_header(i32) #1

declare dso_local i32 @drop_parent_pte(%struct.kvm_mmu_page*, i32*) #1

declare dso_local i64 @is_mmio_spte(i32) #1

declare dso_local i32 @mmu_spte_clear_no_track(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
