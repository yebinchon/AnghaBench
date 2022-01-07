; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testchacha20poly1305.c_vector.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testchacha20poly1305.c_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i8*, i8*)* @vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vector(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [32 x i32], align 16
  %14 = alloca [12 x i32], align 16
  %15 = alloca [12 x i32], align 16
  %16 = alloca [16 x i32], align 16
  %17 = alloca [265 x i32], align 16
  %18 = alloca [265 x i32], align 16
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca [265 x i32], align 16
  %23 = alloca [16 x i32], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @unhex(i32* %24, i32 128, i8* %25)
  %27 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 0
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @unhex(i32* %27, i32 48, i8* %28)
  %30 = getelementptr inbounds [12 x i32], [12 x i32]* %15, i64 0, i64 0
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @unhex(i32* %30, i32 48, i8* %31)
  store i64 %32, i64* %19, align 8
  %33 = getelementptr inbounds [265 x i32], [265 x i32]* %18, i64 0, i64 0
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @unhex(i32* %33, i32 1060, i8* %34)
  store i64 %35, i64* %20, align 8
  %36 = getelementptr inbounds [265 x i32], [265 x i32]* %17, i64 0, i64 0
  %37 = load i8*, i8** %11, align 8
  %38 = call i64 @unhex(i32* %36, i32 1060, i8* %37)
  store i64 %38, i64* %21, align 8
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %40 = load i8*, i8** %12, align 8
  %41 = call i64 @unhex(i32* %39, i32 64, i8* %40)
  %42 = load i64, i64* %21, align 8
  %43 = load i64, i64* %20, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %48 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 0
  %49 = getelementptr inbounds [12 x i32], [12 x i32]* %15, i64 0, i64 0
  %50 = load i64, i64* %19, align 8
  %51 = getelementptr inbounds [265 x i32], [265 x i32]* %18, i64 0, i64 0
  %52 = load i64, i64* %20, align 8
  %53 = getelementptr inbounds [265 x i32], [265 x i32]* %22, i64 0, i64 0
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %55 = call i32 @cf_chacha20poly1305_encrypt(i32* %47, i32* %48, i32* %49, i64 %50, i32* %51, i64 %52, i32* %53, i32* %54)
  %56 = getelementptr inbounds [265 x i32], [265 x i32]* %22, i64 0, i64 0
  %57 = getelementptr inbounds [265 x i32], [265 x i32]* %17, i64 0, i64 0
  %58 = load i64, i64* %21, align 8
  %59 = call i64 @memcmp(i32* %56, i32* %57, i64 %58)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @TEST_CHECK(i32 %61)
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %65 = call i64 @memcmp(i32* %63, i32* %64, i64 64)
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @TEST_CHECK(i32 %67)
  %69 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %70 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 0
  %71 = getelementptr inbounds [12 x i32], [12 x i32]* %15, i64 0, i64 0
  %72 = load i64, i64* %19, align 8
  %73 = getelementptr inbounds [265 x i32], [265 x i32]* %17, i64 0, i64 0
  %74 = load i64, i64* %21, align 8
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %76 = getelementptr inbounds [265 x i32], [265 x i32]* %22, i64 0, i64 0
  %77 = call i32 @cf_chacha20poly1305_decrypt(i32* %69, i32* %70, i32* %71, i64 %72, i32* %73, i64 %74, i32* %75, i32* %76)
  %78 = icmp eq i32 0, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @TEST_CHECK(i32 %79)
  %81 = getelementptr inbounds [265 x i32], [265 x i32]* %22, i64 0, i64 0
  %82 = getelementptr inbounds [265 x i32], [265 x i32]* %18, i64 0, i64 0
  %83 = load i64, i64* %20, align 8
  %84 = call i64 @memcmp(i32* %81, i32* %82, i64 %83)
  %85 = icmp eq i64 0, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @TEST_CHECK(i32 %86)
  %88 = getelementptr inbounds [265 x i32], [265 x i32]* %17, i64 0, i64 0
  %89 = load i32, i32* %88, align 16
  %90 = xor i32 %89, 255
  store i32 %90, i32* %88, align 16
  %91 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %92 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 0
  %93 = getelementptr inbounds [12 x i32], [12 x i32]* %15, i64 0, i64 0
  %94 = load i64, i64* %19, align 8
  %95 = getelementptr inbounds [265 x i32], [265 x i32]* %17, i64 0, i64 0
  %96 = load i64, i64* %21, align 8
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %98 = getelementptr inbounds [265 x i32], [265 x i32]* %22, i64 0, i64 0
  %99 = call i32 @cf_chacha20poly1305_decrypt(i32* %91, i32* %92, i32* %93, i64 %94, i32* %95, i64 %96, i32* %97, i32* %98)
  %100 = icmp eq i32 1, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @TEST_CHECK(i32 %101)
  ret void
}

declare dso_local i64 @unhex(i32*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cf_chacha20poly1305_encrypt(i32*, i32*, i32*, i64, i32*, i64, i32*, i32*) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @cf_chacha20poly1305_decrypt(i32*, i32*, i32*, i64, i32*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
