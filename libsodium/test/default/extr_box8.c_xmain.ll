; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_box8.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_box8.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alicepk = common dso_local global i32 0, align 4
@alicesk = common dso_local global i32 0, align 4
@bobpk = common dso_local global i32 0, align 4
@bobsk = common dso_local global i32 0, align 4
@crypto_box_ZEROBYTES = common dso_local global i64 0, align 8
@n = common dso_local global i8* null, align 8
@crypto_box_NONCEBYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"forgery\0A\00", align 1

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
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i64 1000, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @sodium_malloc(i64 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %2, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @sodium_malloc(i64 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %3, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @sodium_malloc(i64 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %4, align 8
  %19 = load i32, i32* @alicepk, align 4
  %20 = load i32, i32* @alicesk, align 4
  %21 = call i32 @crypto_box_keypair(i32 %19, i32 %20)
  %22 = load i32, i32* @bobpk, align 4
  %23 = load i32, i32* @bobsk, align 4
  %24 = call i32 @crypto_box_keypair(i32 %22, i32 %23)
  store i64 0, i64* %5, align 8
  br label %25

25:                                               ; preds = %107, %0
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %28 = add i64 %26, %27
  %29 = load i64, i64* %6, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %110

31:                                               ; preds = %25
  %32 = load i8*, i8** @n, align 8
  %33 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %34 = call i32 @randombytes_buf(i8* %32, i64 %33)
  %35 = load i8*, i8** %2, align 8
  %36 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @randombytes_buf(i8* %37, i64 %38)
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %44 = add i64 %42, %43
  %45 = load i8*, i8** @n, align 8
  %46 = load i32, i32* @bobpk, align 4
  %47 = load i32, i32* @alicesk, align 4
  %48 = call i32 @crypto_box(i8* %40, i8* %41, i64 %44, i8* %45, i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  store i32 5, i32* %8, align 4
  br label %53

53:                                               ; preds = %105, %31
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %106

56:                                               ; preds = %53
  %57 = call i64 (...) @rand()
  %58 = trunc i64 %57 to i8
  %59 = load i8*, i8** %3, align 8
  %60 = call i64 (...) @rand()
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %63 = add i64 %61, %62
  %64 = urem i64 %60, %63
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  store i8 %58, i8* %65, align 1
  %66 = load i8*, i8** %4, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %70 = add i64 %68, %69
  %71 = load i8*, i8** @n, align 8
  %72 = load i32, i32* @alicepk, align 4
  %73 = load i32, i32* @bobsk, align 4
  %74 = call i64 @crypto_box_open(i8* %66, i8* %67, i64 %70, i8* %71, i32 %72, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %56
  store i64 0, i64* %7, align 8
  br label %77

77:                                               ; preds = %98, %76
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %81 = add i64 %79, %80
  %82 = icmp ult i64 %78, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %77
  %84 = load i8*, i8** %4, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8*, i8** %2, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp ne i32 %88, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 100, i32* %1, align 4
  br label %117

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %7, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %7, align 8
  br label %77

101:                                              ; preds = %77
  br label %105

102:                                              ; preds = %56
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %102, %101
  br label %53

106:                                              ; preds = %53
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %5, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %5, align 8
  br label %25

110:                                              ; preds = %25
  %111 = load i8*, i8** %2, align 8
  %112 = call i32 @sodium_free(i8* %111)
  %113 = load i8*, i8** %3, align 8
  %114 = call i32 @sodium_free(i8* %113)
  %115 = load i8*, i8** %4, align 8
  %116 = call i32 @sodium_free(i8* %115)
  store i32 0, i32* %1, align 4
  br label %117

117:                                              ; preds = %110, %95
  %118 = load i32, i32* %1, align 4
  ret i32 %118
}

declare dso_local i64 @sodium_malloc(i64) #1

declare dso_local i32 @crypto_box_keypair(i32, i32) #1

declare dso_local i32 @randombytes_buf(i8*, i64) #1

declare dso_local i32 @crypto_box(i8*, i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @rand(...) #1

declare dso_local i64 @crypto_box_open(i8*, i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
