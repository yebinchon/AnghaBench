; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_base.c_base_extent_bump_alloc_helper.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_base.c_base_extent_bump_alloc_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QUANTUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i64*, i64, i64)* @base_extent_bump_alloc_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @base_extent_bump_alloc_helper(i32* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @QUANTUM, align 8
  %13 = call i64 @ALIGNMENT_CEILING(i64 %11, i64 %12)
  %14 = icmp eq i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @ALIGNMENT_CEILING(i64 %18, i64 %19)
  %21 = icmp eq i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @extent_addr_get(i32* %24)
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @ALIGNMENT_CEILING(i64 %25, i64 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @extent_addr_get(i32* %28)
  %30 = sub i64 %27, %29
  %31 = load i64*, i64** %6, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @extent_addr_get(i32* %32)
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %33, %35
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %9, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @extent_bsize_get(i32* %38)
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %41, %42
  %44 = icmp uge i64 %39, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @extent_addr_get(i32* %48)
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %49, %51
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %52, %53
  %55 = inttoptr i64 %54 to i8*
  %56 = load i32*, i32** %5, align 8
  %57 = call i64 @extent_bsize_get(i32* %56)
  %58 = load i64*, i64** %6, align 8
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %57, %59
  %61 = load i64, i64* %7, align 8
  %62 = sub i64 %60, %61
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @extent_sn_get(i32* %63)
  %65 = call i32 @extent_binit(i32* %47, i8* %55, i64 %62, i32 %64)
  %66 = load i8*, i8** %9, align 8
  ret i8* %66
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALIGNMENT_CEILING(i64, i64) #1

declare dso_local i64 @extent_addr_get(i32*) #1

declare dso_local i64 @extent_bsize_get(i32*) #1

declare dso_local i32 @extent_binit(i32*, i8*, i64, i32) #1

declare dso_local i32 @extent_sn_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
