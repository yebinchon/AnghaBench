; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_check_eax.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_check_eax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cf_aes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i8*, i64)* @check_eax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_eax(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7, i8* %8, i8* %9, i64 %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca [32 x i32], align 16
  %24 = alloca [16 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [128 x i32], align 16
  store i8* %0, i8** %12, align 8
  store i64 %1, i64* %13, align 8
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store i8* %4, i8** %16, align 8
  store i64 %5, i64* %17, align 8
  store i8* %6, i8** %18, align 8
  store i64 %7, i64* %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  store i64 %10, i64* %22, align 8
  %28 = load i64, i64* %15, align 8
  %29 = icmp ule i64 %28, 128
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i64, i64* %22, align 8
  %33 = load i64, i64* %22, align 8
  %34 = icmp ule i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i8*, i8** %12, align 8
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @cf_aes_init(i32* %25, i8* %37, i64 %38)
  %40 = load i8*, i8** %14, align 8
  %41 = load i64, i64* %15, align 8
  %42 = load i8*, i8** %18, align 8
  %43 = load i64, i64* %19, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = load i64, i64* %17, align 8
  %46 = getelementptr inbounds [32 x i32], [32 x i32]* %23, i64 0, i64 0
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %48 = load i64, i64* %22, align 8
  %49 = call i32 @cf_eax_encrypt(i32* @cf_aes, i32* %25, i8* %40, i64 %41, i8* %42, i64 %43, i8* %44, i64 %45, i32* %46, i32* %47, i64 %48)
  %50 = load i8*, i8** %20, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* %23, i64 0, i64 0
  %53 = bitcast i32* %52 to i8*
  %54 = load i64, i64* %15, align 8
  %55 = call i64 @memcmp(i32* %51, i8* %53, i64 %54)
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @TEST_CHECK(i32 %57)
  %59 = load i8*, i8** %21, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %62 = bitcast i32* %61 to i8*
  %63 = load i64, i64* %22, align 8
  %64 = call i64 @memcmp(i32* %60, i8* %62, i64 %63)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @TEST_CHECK(i32 %66)
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %23, i64 0, i64 0
  %69 = load i64, i64* %15, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = load i64, i64* %19, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = load i64, i64* %17, align 8
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %75 = load i64, i64* %22, align 8
  %76 = getelementptr inbounds [128 x i32], [128 x i32]* %27, i64 0, i64 0
  %77 = call i32 @cf_eax_decrypt(i32* @cf_aes, i32* %25, i32* %68, i64 %69, i8* %70, i64 %71, i8* %72, i64 %73, i32* %74, i64 %75, i32* %76)
  store i32 %77, i32* %26, align 4
  %78 = load i32, i32* %26, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @TEST_CHECK(i32 %80)
  %82 = getelementptr inbounds [128 x i32], [128 x i32]* %27, i64 0, i64 0
  %83 = load i8*, i8** %14, align 8
  %84 = load i64, i64* %15, align 8
  %85 = call i64 @memcmp(i32* %82, i8* %83, i64 %84)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @TEST_CHECK(i32 %87)
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %90 = load i32, i32* %89, align 16
  %91 = xor i32 %90, 255
  store i32 %91, i32* %89, align 16
  %92 = getelementptr inbounds [32 x i32], [32 x i32]* %23, i64 0, i64 0
  %93 = load i64, i64* %15, align 8
  %94 = load i8*, i8** %18, align 8
  %95 = load i64, i64* %19, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = load i64, i64* %17, align 8
  %98 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %99 = load i64, i64* %22, align 8
  %100 = getelementptr inbounds [128 x i32], [128 x i32]* %27, i64 0, i64 0
  %101 = call i32 @cf_eax_decrypt(i32* @cf_aes, i32* %25, i32* %92, i64 %93, i8* %94, i64 %95, i8* %96, i64 %97, i32* %98, i64 %99, i32* %100)
  store i32 %101, i32* %26, align 4
  %102 = load i32, i32* %26, align 4
  %103 = icmp eq i32 %102, 1
  %104 = zext i1 %103 to i32
  %105 = call i32 @TEST_CHECK(i32 %104)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cf_aes_init(i32*, i8*, i64) #1

declare dso_local i32 @cf_eax_encrypt(i32*, i32*, i8*, i64, i8*, i64, i8*, i64, i32*, i32*, i64) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i64) #1

declare dso_local i32 @cf_eax_decrypt(i32*, i32*, i32*, i64, i8*, i64, i8*, i64, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
