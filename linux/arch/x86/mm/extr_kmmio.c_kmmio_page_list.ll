; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_kmmio.c_kmmio_page_list.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_kmmio.c_kmmio_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }

@kmmio_page_table = common dso_local global %struct.list_head* null, align 8
@KMMIO_PAGE_HASH_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (i64)* @kmmio_page_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @kmmio_page_list(i64 %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32* @lookup_address(i64 %6, i32* %4)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.list_head* null, %struct.list_head** %2, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @page_level_mask(i32 %12)
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %3, align 8
  %16 = load %struct.list_head*, %struct.list_head** @kmmio_page_table, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @KMMIO_PAGE_HASH_BITS, align 4
  %19 = call i64 @hash_long(i64 %17, i32 %18)
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %16, i64 %19
  store %struct.list_head* %20, %struct.list_head** %2, align 8
  br label %21

21:                                               ; preds = %11, %10
  %22 = load %struct.list_head*, %struct.list_head** %2, align 8
  ret %struct.list_head* %22
}

declare dso_local i32* @lookup_address(i64, i32*) #1

declare dso_local i64 @page_level_mask(i32) #1

declare dso_local i64 @hash_long(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
