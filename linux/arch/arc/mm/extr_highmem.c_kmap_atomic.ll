; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_highmem.c_kmap_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_highmem.c_kmap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@KM_TYPE_NR = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@fixmap_page_table = common dso_local global i64 0, align 8
@kmap_prot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kmap_atomic(%struct.page* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %7 = call i32 (...) @preempt_disable()
  %8 = call i32 (...) @pagefault_disable()
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call i32 @PageHighMem(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call i8* @page_address(%struct.page* %13)
  store i8* %14, i8** %2, align 8
  br label %35

15:                                               ; preds = %1
  %16 = call i32 (...) @kmap_atomic_idx_push()
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @KM_TYPE_NR, align 4
  %19 = call i32 (...) @smp_processor_id()
  %20 = mul nsw i32 %18, %19
  %21 = add nsw i32 %17, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @FIXMAP_ADDR(i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @fixmap_page_table, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = load i32, i32* @kmap_prot, align 4
  %31 = call i32 @mk_pte(%struct.page* %29, i32 %30)
  %32 = call i32 @set_pte_at(i32* @init_mm, i64 %24, i64 %28, i32 %31)
  %33 = load i64, i64* %6, align 8
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %15, %12
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @kmap_atomic_idx_push(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @FIXMAP_ADDR(i32) #1

declare dso_local i32 @set_pte_at(i32*, i64, i64, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
