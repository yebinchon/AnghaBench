; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_pages_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_pages_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_pages = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.kvm_mmu_page* }
%struct.kvm_mmu_page = type { i64 }

@KVM_PAGE_ARRAY_NR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_mmu_pages*, %struct.kvm_mmu_page*, i32)* @mmu_pages_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_pages_add(%struct.kvm_mmu_pages* %0, %struct.kvm_mmu_page* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_mmu_pages*, align 8
  %6 = alloca %struct.kvm_mmu_page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_mmu_pages* %0, %struct.kvm_mmu_pages** %5, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %10 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %33, %13
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %27, align 8
  %29 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %30 = icmp eq %struct.kvm_mmu_page* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %69

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %14

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %39 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %5, align 8
  %40 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %5, align 8
  %43 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store %struct.kvm_mmu_page* %38, %struct.kvm_mmu_page** %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %5, align 8
  %50 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %48, i32* %57, align 8
  %58 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %5, align 8
  %59 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %5, align 8
  %63 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @KVM_PAGE_ARRAY_NR, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %37, %31
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
