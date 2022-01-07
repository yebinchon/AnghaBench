; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_pages_next.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_pages_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_pages = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.kvm_mmu_page* }
%struct.kvm_mmu_page = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mmu_page_path = type { i32*, %struct.kvm_mmu_page** }

@PT_PAGE_TABLE_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_mmu_pages*, %struct.mmu_page_path*, i32)* @mmu_pages_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_pages_next(%struct.kvm_mmu_pages* %0, %struct.mmu_page_path* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_mmu_pages*, align 8
  %5 = alloca %struct.mmu_page_path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_mmu_page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm_mmu_pages* %0, %struct.kvm_mmu_pages** %4, align 8
  store %struct.mmu_page_path* %1, %struct.mmu_page_path** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %61, %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %13
  %20 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %26, align 8
  store %struct.kvm_mmu_page* %27, %struct.kvm_mmu_page** %8, align 8
  %28 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  %36 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %8, align 8
  %37 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.mmu_page_path*, %struct.mmu_page_path** %5, align 8
  %42 = getelementptr inbounds %struct.mmu_page_path, %struct.mmu_page_path* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %40, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %19
  br label %64

52:                                               ; preds = %19
  %53 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %8, align 8
  %54 = load %struct.mmu_page_path*, %struct.mmu_page_path** %5, align 8
  %55 = getelementptr inbounds %struct.mmu_page_path, %struct.mmu_page_path* %54, i32 0, i32 1
  %56 = load %struct.kvm_mmu_page**, %struct.kvm_mmu_page*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %56, i64 %59
  store %struct.kvm_mmu_page* %53, %struct.kvm_mmu_page** %60, align 8
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %13

64:                                               ; preds = %51, %13
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
