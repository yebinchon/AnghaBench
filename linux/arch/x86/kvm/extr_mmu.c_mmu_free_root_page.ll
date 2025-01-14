; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_free_root_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_free_root_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.list_head = type { i32 }
%struct.kvm_mmu_page = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@PT64_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@INVALID_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32*, %struct.list_head*)* @mmu_free_root_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_free_root_page(%struct.kvm* %0, i32* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.kvm_mmu_page*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @VALID_PAGE(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %41

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PT64_BASE_ADDR_MASK, align 4
  %17 = and i32 %15, %16
  %18 = call %struct.kvm_mmu_page* @page_header(i32 %17)
  store %struct.kvm_mmu_page* %18, %struct.kvm_mmu_page** %7, align 8
  %19 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %7, align 8
  %20 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %7, align 8
  %24 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %13
  %28 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %7, align 8
  %29 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.kvm*, %struct.kvm** %4, align 8
  %35 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %7, align 8
  %36 = load %struct.list_head*, %struct.list_head** %6, align 8
  %37 = call i32 @kvm_mmu_prepare_zap_page(%struct.kvm* %34, %struct.kvm_mmu_page* %35, %struct.list_head* %36)
  br label %38

38:                                               ; preds = %33, %27, %13
  %39 = load i32, i32* @INVALID_PAGE, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %12
  ret void
}

declare dso_local i32 @VALID_PAGE(i32) #1

declare dso_local %struct.kvm_mmu_page* @page_header(i32) #1

declare dso_local i32 @kvm_mmu_prepare_zap_page(%struct.kvm*, %struct.kvm_mmu_page*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
