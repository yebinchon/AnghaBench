; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable-frag.c_pte_frag_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable-frag.c_pte_frag_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PTE_FRAG_SIZE_SHIFT = common dso_local global i64 0, align 8
@PTE_FRAG_NR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pte_frag_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.page* @virt_to_page(i8* %5)
  store %struct.page* %6, %struct.page** %4, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = load i64, i64* @PAGE_MASK, align 8
  %10 = xor i64 %9, -1
  %11 = and i64 %8, %10
  %12 = load i64, i64* @PTE_FRAG_SIZE_SHIFT, align 8
  %13 = lshr i64 %11, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i64, i64* @PTE_FRAG_NR, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %15, %17
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 0
  %21 = call i64 @atomic_sub_and_test(i64 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @pgtable_pte_page_dtor(%struct.page* %24)
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call i32 @__free_page(%struct.page* %26)
  br label %28

28:                                               ; preds = %23, %1
  ret void
}

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i64 @atomic_sub_and_test(i64, i32*) #1

declare dso_local i32 @pgtable_pte_page_dtor(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
