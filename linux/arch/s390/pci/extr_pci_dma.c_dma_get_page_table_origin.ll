; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_dma_get_page_table_origin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c_dma_get_page_table_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*)* @dma_get_page_table_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @dma_get_page_table_origin(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = load i64, i64* %5, align 8
  %7 = call i64 @reg_entry_isvalid(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i64*, i64** %3, align 8
  %11 = load i64, i64* %10, align 8
  %12 = call i64* @get_st_pto(i64 %11)
  store i64* %12, i64** %4, align 8
  br label %26

13:                                               ; preds = %1
  %14 = call i64* (...) @dma_alloc_page_table()
  store i64* %14, i64** %4, align 8
  %15 = load i64*, i64** %4, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i64* null, i64** %2, align 8
  br label %28

18:                                               ; preds = %13
  %19 = load i64*, i64** %3, align 8
  %20 = load i64*, i64** %4, align 8
  %21 = call i32 @set_st_pto(i64* %19, i64* %20)
  %22 = load i64*, i64** %3, align 8
  %23 = call i32 @validate_st_entry(i64* %22)
  %24 = load i64*, i64** %3, align 8
  %25 = call i32 @entry_clr_protected(i64* %24)
  br label %26

26:                                               ; preds = %18, %9
  %27 = load i64*, i64** %4, align 8
  store i64* %27, i64** %2, align 8
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i64*, i64** %2, align 8
  ret i64* %29
}

declare dso_local i64 @reg_entry_isvalid(i64) #1

declare dso_local i64* @get_st_pto(i64) #1

declare dso_local i64* @dma_alloc_page_table(...) #1

declare dso_local i32 @set_st_pto(i64*, i64*) #1

declare dso_local i32 @validate_st_entry(i64*) #1

declare dso_local i32 @entry_clr_protected(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
