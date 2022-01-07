; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/test/extr_kbit_test.c_sse2_bit_count32.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/test/extr_kbit_test.c_sse2_bit_count32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @sse2_bit_count32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sse2_bit_count32(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i64], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1431655765, i32* %5, align 4
  store i32 858993459, i32* %6, align 4
  store i32 252645135, i32* %7, align 4
  store i32 63, i32* %8, align 4
  %18 = call i32 @_mm_set_epi32(i32 1431655765, i32 1431655765, i32 1431655765, i32 1431655765)
  store i32 %18, i32* %10, align 4
  %19 = call i32 @_mm_set_epi32(i32 858993459, i32 858993459, i32 858993459, i32 858993459)
  store i32 %19, i32* %11, align 4
  %20 = call i32 @_mm_set_epi32(i32 252645135, i32 252645135, i32 252645135, i32 252645135)
  store i32 %20, i32* %12, align 4
  %21 = call i32 @_mm_set_epi32(i32 63, i32 63, i32 63, i32 63)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @_mm_xor_si128(i32 %22, i32 %23)
  store i32 %24, i32* %14, align 4
  br label %25

25:                                               ; preds = %76, %2
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @_mm_load_si128(i32* %26)
  store i32 %27, i32* %17, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %3, align 8
  %30 = load i32, i32* %17, align 4
  %31 = call i32 @_mm_srli_epi32(i32 %30, i32 1)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @_mm_and_si128(i32 %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @_mm_and_si128(i32 %35, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @_mm_add_epi32(i32 %38, i32 %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @_mm_srli_epi32(i32 %41, i32 2)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @_mm_and_si128(i32 %43, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @_mm_and_si128(i32 %46, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @_mm_add_epi32(i32 %49, i32 %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @_mm_srli_epi32(i32 %52, i32 4)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @_mm_add_epi32(i32 %54, i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @_mm_and_si128(i32 %57, i32 %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @_mm_srli_epi32(i32 %60, i32 8)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @_mm_add_epi32(i32 %62, i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @_mm_srli_epi32(i32 %65, i32 16)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @_mm_add_epi32(i32 %67, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @_mm_and_si128(i32 %70, i32 %71)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @_mm_add_epi32(i32 %73, i32 %74)
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %25
  %77 = load i32*, i32** %3, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = icmp ult i32* %77, %78
  br i1 %79, label %25, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %82 = bitcast i64* %81 to i32*
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @_mm_store_si128(i32* %82, i32 %83)
  %85 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %86 = load i64, i64* %85, align 16
  %87 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %86, %88
  %90 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 2
  %91 = load i64, i64* %90, align 16
  %92 = add nsw i64 %89, %91
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 3
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %92, %94
  ret i64 %95
}

declare dso_local i32 @_mm_set_epi32(i32, i32, i32, i32) #1

declare dso_local i32 @_mm_xor_si128(i32, i32) #1

declare dso_local i32 @_mm_load_si128(i32*) #1

declare dso_local i32 @_mm_srli_epi32(i32, i32) #1

declare dso_local i32 @_mm_and_si128(i32, i32) #1

declare dso_local i32 @_mm_add_epi32(i32, i32) #1

declare dso_local i32 @_mm_store_si128(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
