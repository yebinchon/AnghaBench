; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/mm/extr_init.c_free_initmem.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/mm/extr_init.c_free_initmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__init_begin = common dso_local global i32 0, align 4
@__init_end = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Freeing unused kernel memory: %dk freed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_initmem() #0 {
  %1 = alloca i64, align 8
  store i64 ptrtoint (i32* @__init_begin to i64), i64* %1, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = load i64, i64* %1, align 8
  %4 = icmp ult i64 %3, ptrtoint (i32* @__init_end to i64)
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = load i64, i64* %1, align 8
  %7 = call i32 @virt_to_page(i64 %6)
  %8 = call i32 @ClearPageReserved(i32 %7)
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @virt_to_page(i64 %9)
  %11 = call i32 @init_page_count(i32 %10)
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @free_page(i64 %12)
  %14 = call i32 (...) @totalram_pages_inc()
  %15 = load i64, i64* @PAGE_SIZE, align 8
  %16 = load i64, i64* %1, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %1, align 8
  br label %2

18:                                               ; preds = %2
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 lshr (i32 sub (i32 ptrtoint (i32* @__init_end to i32), i32 ptrtoint (i32* @__init_begin to i32)), i32 10))
  ret void
}

declare dso_local i32 @ClearPageReserved(i32) #1

declare dso_local i32 @virt_to_page(i64) #1

declare dso_local i32 @init_page_count(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @totalram_pages_inc(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
