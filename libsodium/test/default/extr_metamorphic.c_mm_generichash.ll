; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_metamorphic.c_mm_generichash.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_metamorphic.c_mm_generichash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ITER = common dso_local global i32 0, align 4
@MAXLEN = common dso_local global i64 0, align 8
@crypto_generichash_KEYBYTES_MAX = common dso_local global i64 0, align 8
@crypto_generichash_KEYBYTES_MIN = common dso_local global i64 0, align 8
@crypto_generichash_BYTES_MAX = common dso_local global i64 0, align 8
@crypto_generichash_BYTES_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mm_generichash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mm_generichash() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %105, %0
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @MAX_ITER, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %108

16:                                               ; preds = %12
  %17 = load i64, i64* @MAXLEN, align 8
  %18 = call i64 @randombytes_uniform(i64 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @sodium_malloc(i64 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %5, align 8
  %22 = load i64, i64* @crypto_generichash_KEYBYTES_MAX, align 8
  %23 = load i64, i64* @crypto_generichash_KEYBYTES_MIN, align 8
  %24 = sub i64 %22, %23
  %25 = add i64 %24, 1
  %26 = call i64 @randombytes_uniform(i64 %25)
  %27 = load i64, i64* @crypto_generichash_KEYBYTES_MIN, align 8
  %28 = add i64 %26, %27
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @sodium_malloc(i64 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %4, align 8
  %32 = load i64, i64* @crypto_generichash_BYTES_MAX, align 8
  %33 = load i64, i64* @crypto_generichash_BYTES_MIN, align 8
  %34 = sub i64 %32, %33
  %35 = add i64 %34, 1
  %36 = call i64 @randombytes_uniform(i64 %35)
  %37 = load i64, i64* @crypto_generichash_BYTES_MIN, align 8
  %38 = add i64 %36, %37
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @sodium_malloc(i64 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %2, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @sodium_malloc(i64 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %3, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @randombytes_buf(i8* %45, i64 %46)
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @randombytes_buf(i8* %48, i64 %49)
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @crypto_generichash_init(i32* %1, i8* %51, i64 %52, i64 %53)
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @randombytes_uniform(i64 %55)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = sub i64 %57, %58
  %60 = call i64 @randombytes_uniform(i64 %59)
  store i64 %60, i64* %10, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @crypto_generichash_update(i32* %1, i8* %61, i64 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @crypto_generichash_update(i32* %1, i8* %66, i64 %67)
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = sub i64 %74, %75
  %77 = load i64, i64* %10, align 8
  %78 = sub i64 %76, %77
  %79 = call i32 @crypto_generichash_update(i32* %1, i8* %73, i64 %78)
  %80 = load i8*, i8** %2, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @crypto_generichash_final(i32* %1, i8* %80, i64 %81)
  %83 = load i8*, i8** %3, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @crypto_generichash(i8* %83, i64 %84, i8* %85, i64 %86, i8* %87, i64 %88)
  %90 = load i8*, i8** %2, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i64 @memcmp(i8* %90, i8* %91, i64 %92)
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 @sodium_free(i8* %97)
  %99 = load i8*, i8** %2, align 8
  %100 = call i32 @sodium_free(i8* %99)
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @sodium_free(i8* %101)
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @sodium_free(i8* %103)
  br label %105

105:                                              ; preds = %16
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %12

108:                                              ; preds = %12
  ret void
}

declare dso_local i64 @randombytes_uniform(i64) #1

declare dso_local i64 @sodium_malloc(i64) #1

declare dso_local i32 @randombytes_buf(i8*, i64) #1

declare dso_local i32 @crypto_generichash_init(i32*, i8*, i64, i64) #1

declare dso_local i32 @crypto_generichash_update(i32*, i8*, i64) #1

declare dso_local i32 @crypto_generichash_final(i32*, i8*, i64) #1

declare dso_local i32 @crypto_generichash(i8*, i64, i8*, i64, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
