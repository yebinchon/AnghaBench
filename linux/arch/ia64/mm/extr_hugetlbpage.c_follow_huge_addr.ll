; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/mm/extr_hugetlbpage.c_follow_huge_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/mm/extr_hugetlbpage.c_follow_huge_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mm_struct = type { i32 }

@RGN_HPAGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HPAGE_SIZE = common dso_local global i32 0, align 4
@HPAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @follow_huge_addr(%struct.mm_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @REGION_NUMBER(i64 %10)
  %12 = load i64, i64* @RGN_HPAGE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.page* @ERR_PTR(i32 %16)
  store %struct.page* %17, %struct.page** %4, align 8
  br label %44

18:                                               ; preds = %3
  %19 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @HPAGE_SIZE, align 4
  %22 = call i32* @huge_pte_offset(%struct.mm_struct* %19, i64 %20, i32 %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @pte_none(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %18
  store %struct.page* null, %struct.page** %4, align 8
  br label %44

31:                                               ; preds = %25
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.page* @pte_page(i32 %33)
  store %struct.page* %34, %struct.page** %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @HPAGE_MASK, align 8
  %37 = xor i64 %36, -1
  %38 = and i64 %35, %37
  %39 = load i64, i64* @PAGE_SHIFT, align 8
  %40 = lshr i64 %38, %39
  %41 = load %struct.page*, %struct.page** %8, align 8
  %42 = getelementptr inbounds %struct.page, %struct.page* %41, i64 %40
  store %struct.page* %42, %struct.page** %8, align 8
  %43 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %43, %struct.page** %4, align 8
  br label %44

44:                                               ; preds = %31, %30, %14
  %45 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %45
}

declare dso_local i64 @REGION_NUMBER(i64) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i32* @huge_pte_offset(%struct.mm_struct*, i64, i32) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local %struct.page* @pte_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
