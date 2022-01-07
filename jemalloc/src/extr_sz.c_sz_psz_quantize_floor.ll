; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_sz.c_sz_psz_quantize_floor.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_sz.c_sz_psz_quantize_floor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@sz_large_pad = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sz_psz_quantize_floor(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ugt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @PAGE_MASK, align 8
  %12 = and i64 %10, %11
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @sz_large_pad, align 8
  %18 = sub i64 %16, %17
  %19 = add i64 %18, 1
  %20 = call i64 @sz_psz2ind(i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i64, i64* %3, align 8
  store i64 %24, i64* %2, align 8
  br label %37

25:                                               ; preds = %1
  %26 = load i64, i64* %5, align 8
  %27 = sub nsw i64 %26, 1
  %28 = call i64 @sz_pind2sz(i64 %27)
  %29 = load i64, i64* @sz_large_pad, align 8
  %30 = add i64 %28, %29
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp ule i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* %2, align 8
  br label %37

37:                                               ; preds = %25, %23
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sz_psz2ind(i64) #1

declare dso_local i64 @sz_pind2sz(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
