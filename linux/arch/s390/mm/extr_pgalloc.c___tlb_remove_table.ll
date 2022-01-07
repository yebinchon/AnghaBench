; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c___tlb_remove_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c___tlb_remove_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__tlb_remove_table(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.page*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = and i64 %7, 3
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = xor i64 %11, %13
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @__pa(i8* %16)
  %18 = load i32, i32* @PAGE_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = call %struct.page* @pfn_to_page(i32 %19)
  store %struct.page* %20, %struct.page** %5, align 8
  %21 = load i32, i32* %3, align 4
  switch i32 %21, label %51 [
    i32 0, label %22
    i32 1, label %26
    i32 2, label %26
    i32 3, label %38
  ]

22:                                               ; preds = %1
  %23 = load i8*, i8** %4, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = call i32 @free_pages(i64 %24, i32 2)
  br label %51

26:                                               ; preds = %1, %1
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = getelementptr inbounds %struct.page, %struct.page* %27, i32 0, i32 0
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 %29, 28
  %31 = call i32 @atomic_xor_bits(i32* %28, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = lshr i32 %32, 24
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %51

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %1, %37
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, 3
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.page*, %struct.page** %5, align 8
  %44 = getelementptr inbounds %struct.page, %struct.page* %43, i32 0, i32 0
  %45 = call i32 @atomic_xor_bits(i32* %44, i32 50331648)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = call i32 @pgtable_pte_page_dtor(%struct.page* %47)
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = call i32 @__free_page(%struct.page* %49)
  br label %51

51:                                               ; preds = %1, %46, %36, %22
  ret void
}

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @atomic_xor_bits(i32*, i32) #1

declare dso_local i32 @pgtable_pte_page_dtor(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
