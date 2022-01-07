; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_check_ocb.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_check_ocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cf_aes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64)* @check_ocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_ocb(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7, i8* %8, i64 %9, i8* %10, i64 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca [40 x i32], align 16
  %26 = alloca [16 x i32], align 16
  %27 = alloca i32, align 4
  %28 = alloca [40 x i32], align 16
  %29 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i64 %1, i64* %14, align 8
  store i8* %2, i8** %15, align 8
  store i64 %3, i64* %16, align 8
  store i8* %4, i8** %17, align 8
  store i64 %5, i64* %18, align 8
  store i8* %6, i8** %19, align 8
  store i64 %7, i64* %20, align 8
  store i8* %8, i8** %21, align 8
  store i64 %9, i64* %22, align 8
  store i8* %10, i8** %23, align 8
  store i64 %11, i64* %24, align 8
  %30 = load i64, i64* %22, align 8
  %31 = load i64, i64* %18, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i64, i64* %22, align 8
  %36 = icmp ule i64 %35, 160
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64, i64* %24, align 8
  %40 = icmp ule i64 %39, 64
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i8*, i8** %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @cf_aes_init(i32* %27, i8* %43, i64 %44)
  %46 = load i8*, i8** %17, align 8
  %47 = load i64, i64* %18, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load i64, i64* %16, align 8
  %50 = load i8*, i8** %19, align 8
  %51 = load i64, i64* %20, align 8
  %52 = getelementptr inbounds [40 x i32], [40 x i32]* %25, i64 0, i64 0
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %54 = load i64, i64* %24, align 8
  %55 = call i32 @cf_ocb_encrypt(i32* @cf_aes, i32* %27, i8* %46, i64 %47, i8* %48, i64 %49, i8* %50, i64 %51, i32* %52, i32* %53, i64 %54)
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %57 = load i8*, i8** %23, align 8
  %58 = load i64, i64* %24, align 8
  %59 = call i64 @memcmp(i32* %56, i8* %57, i64 %58)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @TEST_CHECK(i32 %61)
  %63 = getelementptr inbounds [40 x i32], [40 x i32]* %25, i64 0, i64 0
  %64 = load i8*, i8** %21, align 8
  %65 = load i64, i64* %22, align 8
  %66 = call i64 @memcmp(i32* %63, i8* %64, i64 %65)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @TEST_CHECK(i32 %68)
  %70 = load i8*, i8** %21, align 8
  %71 = load i64, i64* %22, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i8*, i8** %19, align 8
  %75 = load i64, i64* %20, align 8
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %77 = load i64, i64* %24, align 8
  %78 = getelementptr inbounds [40 x i32], [40 x i32]* %28, i64 0, i64 0
  %79 = call i32 @cf_ocb_decrypt(i32* @cf_aes, i32* %27, i8* %70, i64 %71, i8* %72, i64 %73, i8* %74, i64 %75, i32* %76, i64 %77, i32* %78)
  store i32 %79, i32* %29, align 4
  %80 = load i32, i32* %29, align 4
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @TEST_CHECK(i32 %82)
  %84 = getelementptr inbounds [40 x i32], [40 x i32]* %28, i64 0, i64 0
  %85 = load i8*, i8** %17, align 8
  %86 = load i64, i64* %18, align 8
  %87 = call i64 @memcmp(i32* %84, i8* %85, i64 %86)
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @TEST_CHECK(i32 %89)
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %92 = load i32, i32* %91, align 16
  %93 = xor i32 %92, 255
  store i32 %93, i32* %91, align 16
  %94 = load i8*, i8** %21, align 8
  %95 = load i64, i64* %22, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i8*, i8** %19, align 8
  %99 = load i64, i64* %20, align 8
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %101 = load i64, i64* %24, align 8
  %102 = getelementptr inbounds [40 x i32], [40 x i32]* %28, i64 0, i64 0
  %103 = call i32 @cf_ocb_decrypt(i32* @cf_aes, i32* %27, i8* %94, i64 %95, i8* %96, i64 %97, i8* %98, i64 %99, i32* %100, i64 %101, i32* %102)
  store i32 %103, i32* %29, align 4
  %104 = load i32, i32* %29, align 4
  %105 = icmp eq i32 %104, 1
  %106 = zext i1 %105 to i32
  %107 = call i32 @TEST_CHECK(i32 %106)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cf_aes_init(i32*, i8*, i64) #1

declare dso_local i32 @cf_ocb_encrypt(i32*, i32*, i8*, i64, i8*, i64, i8*, i64, i32*, i32*, i64) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i64) #1

declare dso_local i32 @cf_ocb_decrypt(i32*, i32*, i8*, i64, i8*, i64, i8*, i64, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
