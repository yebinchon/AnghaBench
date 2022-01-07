; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_generichash.c_tv.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_generichash.c_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@crypto_generichash_KEYBYTES_MAX = common dso_local global i32 0, align 4
@crypto_generichash_BYTES_MAX = common dso_local global i32 0, align 4
@tests = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Test vector #%u failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tv() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 0, i64* %5, align 8
  %7 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %8 = sext i32 %7 to i64
  %9 = call i64 @sodium_malloc(i64 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %3, align 8
  %11 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %12 = sext i32 %11 to i64
  %13 = call i64 @sodium_malloc(i64 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %4, align 8
  %15 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %16 = sext i32 %15 to i64
  %17 = call i64 @sodium_malloc(i64 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %1, align 8
  br label %19

19:                                               ; preds = %116, %0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strlen(i32 %24)
  %26 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %27 = mul nsw i32 2, %26
  %28 = icmp eq i32 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strlen(i32 %43)
  %45 = call i32 @sodium_hex2bin(i8* %31, i64 %33, i32 %38, i32 %44, i32* null, i32* null, i32* null)
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strlen(i32 %50)
  %52 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %53 = mul nsw i32 2, %52
  %54 = icmp eq i32 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i8*, i8** %1, align 8
  %58 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @strlen(i32 %69)
  %71 = call i32 @sodium_hex2bin(i8* %57, i64 %59, i32 %64, i32 %70, i32* null, i32* null, i32* null)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @strlen(i32 %76)
  %78 = sdiv i32 %77, 2
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @sodium_malloc(i64 %80)
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %2, align 8
  %83 = load i8*, i8** %2, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %91 = load i64, i64* %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @strlen(i32 %94)
  %96 = call i32 @sodium_hex2bin(i8* %83, i64 %84, i32 %89, i32 %95, i32* null, i32* null, i32* null)
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %99 = load i8*, i8** %2, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i8*, i8** %3, align 8
  %102 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %103 = call i32 @crypto_generichash(i8* %97, i32 %98, i8* %99, i64 %100, i8* %101, i32 %102)
  %104 = load i8*, i8** %4, align 8
  %105 = load i8*, i8** %1, align 8
  %106 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %107 = call i64 @memcmp(i8* %104, i8* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %19
  %110 = load i64, i64* %5, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %109, %19
  %114 = load i8*, i8** %2, align 8
  %115 = call i32 @sodium_free(i8* %114)
  br label %116

116:                                              ; preds = %113
  %117 = load i64, i64* %5, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %5, align 8
  %119 = icmp ult i64 %118, 0
  br i1 %119, label %19, label %120

120:                                              ; preds = %116
  %121 = load i8*, i8** %3, align 8
  %122 = call i32 @sodium_free(i8* %121)
  %123 = load i8*, i8** %4, align 8
  %124 = call i32 @sodium_free(i8* %123)
  %125 = load i8*, i8** %1, align 8
  %126 = call i32 @sodium_free(i8* %125)
  ret i32 0
}

declare dso_local i64 @sodium_malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @sodium_hex2bin(i8*, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @crypto_generichash(i8*, i32, i8*, i64, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
