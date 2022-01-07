; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_prng.c_test_prng_lg_range_zu.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_prng.c_test_prng_lg_range_zu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@LG_SIZEOF_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Repeated generation should produce repeated results\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Equivalent generation should produce equivalent results\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Full-width results must not immediately repeat\00", align 1
@SIZE_T_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"High order bits should be 0, lg_range=%u\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Expected high order bits of full-width result, lg_range=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_prng_lg_range_zu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_prng_lg_range_zu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @ATOMIC_RELAXED, align 4
  %9 = call i32 @atomic_store_zu(i32* %3, i32 42, i32 %8)
  %10 = call i32 @ZU(i32 1)
  %11 = load i32, i32* @LG_SIZEOF_PTR, align 4
  %12 = add nsw i32 3, %11
  %13 = shl i32 %10, %12
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @prng_lg_range_zu(i32* %3, i32 %13, i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* @ATOMIC_RELAXED, align 4
  %17 = call i32 @atomic_store_zu(i32* %3, i32 42, i32 %16)
  %18 = call i32 @ZU(i32 1)
  %19 = load i32, i32* @LG_SIZEOF_PTR, align 4
  %20 = add nsw i32 3, %19
  %21 = shl i32 %18, %20
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @prng_lg_range_zu(i32* %3, i32 %21, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 (i64, i64, i8*, ...) @assert_zu_eq(i64 %24, i64 %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ATOMIC_RELAXED, align 4
  %28 = call i32 @atomic_store_zu(i32* %4, i32 42, i32 %27)
  %29 = call i32 @ZU(i32 1)
  %30 = load i32, i32* @LG_SIZEOF_PTR, align 4
  %31 = add nsw i32 3, %30
  %32 = shl i32 %29, %31
  %33 = load i32, i32* %2, align 4
  %34 = call i64 @prng_lg_range_zu(i32* %4, i32 %32, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 (i64, i64, i8*, ...) @assert_zu_eq(i64 %35, i64 %36, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ATOMIC_RELAXED, align 4
  %39 = call i32 @atomic_store_zu(i32* %3, i32 42, i32 %38)
  %40 = call i32 @ZU(i32 1)
  %41 = load i32, i32* @LG_SIZEOF_PTR, align 4
  %42 = add nsw i32 3, %41
  %43 = shl i32 %40, %42
  %44 = load i32, i32* %2, align 4
  %45 = call i64 @prng_lg_range_zu(i32* %3, i32 %43, i32 %44)
  store i64 %45, i64* %5, align 8
  %46 = call i32 @ZU(i32 1)
  %47 = load i32, i32* @LG_SIZEOF_PTR, align 4
  %48 = add nsw i32 3, %47
  %49 = shl i32 %46, %48
  %50 = load i32, i32* %2, align 4
  %51 = call i64 @prng_lg_range_zu(i32* %3, i32 %49, i32 %50)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @assert_zu_ne(i64 %52, i64 %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @ATOMIC_RELAXED, align 4
  %56 = call i32 @atomic_store_zu(i32* %3, i32 42, i32 %55)
  %57 = call i32 @ZU(i32 1)
  %58 = load i32, i32* @LG_SIZEOF_PTR, align 4
  %59 = add nsw i32 3, %58
  %60 = shl i32 %57, %59
  %61 = load i32, i32* %2, align 4
  %62 = call i64 @prng_lg_range_zu(i32* %3, i32 %60, i32 %61)
  store i64 %62, i64* %5, align 8
  %63 = call i32 @ZU(i32 1)
  %64 = load i32, i32* @LG_SIZEOF_PTR, align 4
  %65 = add nsw i32 3, %64
  %66 = shl i32 %63, %65
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %97, %1
  %69 = load i32, i32* %7, align 4
  %70 = icmp ugt i32 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %68
  %72 = load i32, i32* @ATOMIC_RELAXED, align 4
  %73 = call i32 @atomic_store_zu(i32* %4, i32 42, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %2, align 4
  %76 = call i64 @prng_lg_range_zu(i32* %4, i32 %74, i32 %75)
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i32, i32* @SIZE_T_MAX, align 4
  %79 = load i32, i32* %7, align 4
  %80 = shl i32 %78, %79
  %81 = zext i32 %80 to i64
  %82 = and i64 %77, %81
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (i64, i64, i8*, ...) @assert_zu_eq(i64 %82, i64 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @ZU(i32 1)
  %88 = load i32, i32* @LG_SIZEOF_PTR, align 4
  %89 = add nsw i32 3, %88
  %90 = shl i32 %87, %89
  %91 = load i32, i32* %7, align 4
  %92 = sub i32 %90, %91
  %93 = zext i32 %92 to i64
  %94 = lshr i64 %86, %93
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i64, i64, i8*, ...) @assert_zu_eq(i64 %85, i64 %94, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %71
  %98 = load i32, i32* %7, align 4
  %99 = add i32 %98, -1
  store i32 %99, i32* %7, align 4
  br label %68

100:                                              ; preds = %68
  ret void
}

declare dso_local i32 @atomic_store_zu(i32*, i32, i32) #1

declare dso_local i64 @prng_lg_range_zu(i32*, i32, i32) #1

declare dso_local i32 @ZU(i32) #1

declare dso_local i32 @assert_zu_eq(i64, i64, i8*, ...) #1

declare dso_local i32 @assert_zu_ne(i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
