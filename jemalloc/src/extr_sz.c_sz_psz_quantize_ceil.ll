; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_sz.c_sz_psz_quantize_ceil.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_sz.c_sz_psz_quantize_ceil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sz_large_pad = common dso_local global i64 0, align 8
@SC_LARGE_MAXCLASS = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sz_psz_quantize_ceil(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ugt i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @sz_large_pad, align 8
  %10 = sub i64 %8, %9
  %11 = load i64, i64* @SC_LARGE_MAXCLASS, align 8
  %12 = icmp ule i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = and i64 %15, %16
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %2, align 8
  %22 = call i64 @sz_psz_quantize_floor(i64 %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %2, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @sz_large_pad, align 8
  %29 = sub i64 %27, %28
  %30 = add i64 %29, 1
  %31 = call i32 @sz_psz2ind(i64 %30)
  %32 = call i64 @sz_pind2sz(i32 %31)
  %33 = load i64, i64* @sz_large_pad, align 8
  %34 = add i64 %32, %33
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %26, %1
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sz_psz_quantize_floor(i64) #1

declare dso_local i64 @sz_pind2sz(i32) #1

declare dso_local i32 @sz_psz2ind(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
