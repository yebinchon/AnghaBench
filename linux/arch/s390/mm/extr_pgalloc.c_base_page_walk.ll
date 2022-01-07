; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c_base_page_walk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c_base_page_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_INDEX = common dso_local global i64 0, align 8
@_PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i32)* @base_page_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_page_walk(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %40

15:                                               ; preds = %4
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to i64*
  store i64* %17, i64** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @_PAGE_INDEX, align 8
  %20 = and i64 %18, %19
  %21 = load i64, i64* @_PAGE_SHIFT, align 8
  %22 = lshr i64 %20, %21
  %23 = load i64*, i64** %10, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 %22
  store i64* %24, i64** %10, align 8
  br label %25

25:                                               ; preds = %32, %15
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @base_page_addr_end(i64 %26, i64 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @base_lra(i64 %29)
  %31 = load i64*, i64** %10, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %25
  %33 = load i64*, i64** %10, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %10, align 8
  %35 = load i64, i64* %11, align 8
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %25, label %39

39:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %14
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i64 @base_page_addr_end(i64, i64) #1

declare dso_local i64 @base_lra(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
