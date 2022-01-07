; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_box7.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_box7.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_ZEROBYTES = common dso_local global i64 0, align 8
@alicepk = common dso_local global i32 0, align 4
@alicesk = common dso_local global i32 0, align 4
@bobpk = common dso_local global i32 0, align 4
@bobsk = common dso_local global i32 0, align 4
@n = common dso_local global i8* null, align 8
@crypto_box_NONCEBYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"bad decryption\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ciphertext fails verification\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i64 1000, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @sodium_malloc(i64 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %2, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @sodium_malloc(i64 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @sodium_malloc(i64 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %20 = call i32 @memset(i8* %18, i32 0, i64 %19)
  %21 = load i32, i32* @alicepk, align 4
  %22 = load i32, i32* @alicesk, align 4
  %23 = call i32 @crypto_box_keypair(i32 %21, i32 %22)
  %24 = load i32, i32* @bobpk, align 4
  %25 = load i32, i32* @bobsk, align 4
  %26 = call i32 @crypto_box_keypair(i32 %24, i32 %25)
  store i64 0, i64* %5, align 8
  br label %27

27:                                               ; preds = %94, %0
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %30 = add i64 %28, %29
  %31 = load i64, i64* %6, align 8
  %32 = icmp ule i64 %30, %31
  br i1 %32, label %33, label %97

33:                                               ; preds = %27
  %34 = load i8*, i8** @n, align 8
  %35 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %36 = call i32 @randombytes_buf(i8* %34, i64 %35)
  %37 = load i8*, i8** %2, align 8
  %38 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @randombytes_buf(i8* %39, i64 %40)
  %42 = load i8*, i8** %3, align 8
  %43 = load i8*, i8** %2, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %46 = add i64 %44, %45
  %47 = load i8*, i8** @n, align 8
  %48 = load i32, i32* @bobpk, align 4
  %49 = load i32, i32* @alicesk, align 4
  %50 = call i32 @crypto_box(i8* %42, i8* %43, i64 %46, i8* %47, i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %59 = add i64 %57, %58
  %60 = load i8*, i8** @n, align 8
  %61 = load i32, i32* @alicepk, align 4
  %62 = load i32, i32* @bobsk, align 4
  %63 = call i64 @crypto_box_open(i8* %55, i8* %56, i64 %59, i8* %60, i32 %61, i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %33
  store i64 0, i64* %7, align 8
  br label %66

66:                                               ; preds = %87, %65
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %70 = add i64 %68, %69
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  %73 = load i8*, i8** %4, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8*, i8** %2, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp ne i32 %77, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %90

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %7, align 8
  br label %66

90:                                               ; preds = %84, %66
  br label %93

91:                                               ; preds = %33
  %92 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %90
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %5, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %5, align 8
  br label %27

97:                                               ; preds = %27
  %98 = load i8*, i8** %2, align 8
  %99 = call i32 @sodium_free(i8* %98)
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 @sodium_free(i8* %100)
  %102 = load i8*, i8** %4, align 8
  %103 = call i32 @sodium_free(i8* %102)
  ret i32 0
}

declare dso_local i64 @sodium_malloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @crypto_box_keypair(i32, i32) #1

declare dso_local i32 @randombytes_buf(i8*, i64) #1

declare dso_local i32 @crypto_box(i8*, i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @crypto_box_open(i8*, i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
