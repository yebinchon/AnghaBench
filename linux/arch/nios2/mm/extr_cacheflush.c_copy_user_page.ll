; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/mm/extr_cacheflush.c_copy_user_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/mm/extr_cacheflush.c_copy_user_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_user_page(i8* %0, i8* %1, i64 %2, %struct.page* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.page* %3, %struct.page** %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = add i64 %10, %11
  %13 = call i32 @__flush_dcache(i64 %9, i64 %12)
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @__flush_icache(i64 %14, i64 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @copy_page(i8* %19, i8* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load i8*, i8** %5, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @__flush_dcache(i64 %23, i64 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load i8*, i8** %5, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = add i64 %32, %33
  %35 = call i32 @__flush_icache(i64 %30, i64 %34)
  ret void
}

declare dso_local i32 @__flush_dcache(i64, i64) #1

declare dso_local i32 @__flush_icache(i64, i64) #1

declare dso_local i32 @copy_page(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
