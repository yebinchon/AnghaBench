; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache.c_clear_user_highpage.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache.c_clear_user_highpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_user_highpage(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call i8* @kmap_atomic(%struct.page* %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @clear_page(i8* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @PAGE_MASK, align 8
  %14 = and i64 %12, %13
  %15 = call i64 @pages_do_alias(i64 %11, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = call i32 @__flush_purge_region(i8* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @kunmap_atomic(i8* %22)
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @clear_page(i8*) #1

declare dso_local i64 @pages_do_alias(i64, i64) #1

declare dso_local i32 @__flush_purge_region(i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
