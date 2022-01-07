; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_pages_first.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_pages_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_pages = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.kvm_mmu_page* }
%struct.kvm_mmu_page = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mmu_page_path = type { %struct.kvm_mmu_page** }

@INVALID_INDEX = common dso_local global i64 0, align 8
@PT_PAGE_TABLE_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_mmu_pages*, %struct.mmu_page_path*)* @mmu_pages_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_pages_first(%struct.kvm_mmu_pages* %0, %struct.mmu_page_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_mmu_pages*, align 8
  %5 = alloca %struct.mmu_page_path*, align 8
  %6 = alloca %struct.kvm_mmu_page*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_mmu_pages* %0, %struct.kvm_mmu_pages** %4, align 8
  store %struct.mmu_page_path* %1, %struct.mmu_page_path** %5, align 8
  %8 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

13:                                               ; preds = %2
  %14 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @INVALID_INDEX, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %28, align 8
  store %struct.kvm_mmu_page* %29, %struct.kvm_mmu_page** %6, align 8
  %30 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %31 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %40 = load %struct.mmu_page_path*, %struct.mmu_page_path** %5, align 8
  %41 = getelementptr inbounds %struct.mmu_page_path, %struct.mmu_page_path* %40, i32 0, i32 0
  %42 = load %struct.kvm_mmu_page**, %struct.kvm_mmu_page*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %42, i64 %45
  store %struct.kvm_mmu_page* %39, %struct.kvm_mmu_page** %46, align 8
  %47 = load %struct.mmu_page_path*, %struct.mmu_page_path** %5, align 8
  %48 = getelementptr inbounds %struct.mmu_page_path, %struct.mmu_page_path* %47, i32 0, i32 0
  %49 = load %struct.kvm_mmu_page**, %struct.kvm_mmu_page*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %49, i64 %52
  store %struct.kvm_mmu_page* null, %struct.kvm_mmu_page** %53, align 8
  %54 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %4, align 8
  %55 = load %struct.mmu_page_path*, %struct.mmu_page_path** %5, align 8
  %56 = call i32 @mmu_pages_next(%struct.kvm_mmu_pages* %54, %struct.mmu_page_path* %55, i32 0)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %13, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mmu_pages_next(%struct.kvm_mmu_pages*, %struct.mmu_page_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
