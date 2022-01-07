; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/mm/extr_hugetlbpage.c_hugetlb_free_pgd_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/mm/extr_hugetlbpage.c_hugetlb_free_pgd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }

@RGN_HPAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hugetlb_free_pgd_range(%struct.mmu_gather* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.mmu_gather*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @htlbpage_to_page(i64 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i64 @htlbpage_to_page(i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i64 @REGION_NUMBER(i64 %15)
  %17 = load i64, i64* @RGN_HPAGE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = call i64 @htlbpage_to_page(i64 %20)
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %19, %5
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @REGION_NUMBER(i64 %23)
  %25 = load i64, i64* @RGN_HPAGE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @htlbpage_to_page(i64 %28)
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @free_pgd_range(%struct.mmu_gather* %31, i64 %32, i64 %33, i64 %34, i64 %35)
  ret void
}

declare dso_local i64 @htlbpage_to_page(i64) #1

declare dso_local i64 @REGION_NUMBER(i64) #1

declare dso_local i32 @free_pgd_range(%struct.mmu_gather*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
