; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_auth5.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_auth5.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@key = common dso_local global i32 0, align 4
@c = common dso_local global i32* null, align 8
@a = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"fail %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"forgery %u\0A\00", align 1
@guard_page = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %79, %0
  %4 = load i64, i64* %2, align 8
  %5 = icmp ult i64 %4, 1000
  br i1 %5, label %6, label %82

6:                                                ; preds = %3
  %7 = load i32, i32* @key, align 4
  %8 = call i32 @crypto_auth_keygen(i32 %7)
  %9 = load i32*, i32** @c, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @randombytes_buf(i32* %9, i64 %10)
  %12 = load i32*, i32** @a, align 8
  %13 = load i32*, i32** @c, align 8
  %14 = load i64, i64* %2, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @key, align 4
  %17 = call i32 @crypto_auth(i32* %12, i32* %13, i32 %15, i32 %16)
  %18 = load i32*, i32** @a, align 8
  %19 = load i32*, i32** @c, align 8
  %20 = load i64, i64* %2, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @key, align 4
  %23 = call i64 @crypto_auth_verify(i32* %18, i32* %19, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = load i64, i64* %2, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 100, i32* %1, align 4
  br label %96

29:                                               ; preds = %6
  %30 = load i64, i64* %2, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %29
  %33 = call i32 (...) @rand()
  %34 = srem i32 %33, 255
  %35 = add nsw i32 1, %34
  %36 = load i32*, i32** @c, align 8
  %37 = call i32 (...) @rand()
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %2, align 8
  %40 = urem i64 %38, %39
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %35
  store i32 %43, i32* %41, align 4
  %44 = load i32*, i32** @a, align 8
  %45 = load i32*, i32** @c, align 8
  %46 = load i64, i64* %2, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @key, align 4
  %49 = call i64 @crypto_auth_verify(i32* %44, i32* %45, i32 %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %32
  %52 = load i64, i64* %2, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 100, i32* %1, align 4
  br label %96

55:                                               ; preds = %32
  %56 = call i32 (...) @rand()
  %57 = srem i32 %56, 255
  %58 = add nsw i32 1, %57
  %59 = load i32*, i32** @a, align 8
  %60 = call i32 (...) @rand()
  %61 = sext i32 %60 to i64
  %62 = urem i64 %61, 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %58
  store i32 %65, i32* %63, align 4
  %66 = load i32*, i32** @a, align 8
  %67 = load i32*, i32** @c, align 8
  %68 = load i64, i64* %2, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @key, align 4
  %71 = call i64 @crypto_auth_verify(i32* %66, i32* %67, i32 %69, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %55
  %74 = load i64, i64* %2, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  store i32 100, i32* %1, align 4
  br label %96

77:                                               ; preds = %55
  br label %78

78:                                               ; preds = %77, %29
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %2, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %2, align 8
  br label %3

82:                                               ; preds = %3
  %83 = load i32, i32* @key, align 4
  %84 = call i32 @crypto_auth_keygen(i32 %83)
  %85 = load i32*, i32** @a, align 8
  %86 = load i32*, i32** @guard_page, align 8
  %87 = load i32, i32* @key, align 4
  %88 = call i32 @crypto_auth(i32* %85, i32* %86, i32 0, i32 %87)
  %89 = load i32*, i32** @a, align 8
  %90 = load i32*, i32** @guard_page, align 8
  %91 = load i32, i32* @key, align 4
  %92 = call i64 @crypto_auth_verify(i32* %89, i32* %90, i32 0, i32 %91)
  %93 = icmp eq i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  store i32 0, i32* %1, align 4
  br label %96

96:                                               ; preds = %82, %73, %51, %25
  %97 = load i32, i32* %1, align 4
  ret i32 %97
}

declare dso_local i32 @crypto_auth_keygen(i32) #1

declare dso_local i32 @randombytes_buf(i32*, i64) #1

declare dso_local i32 @crypto_auth(i32*, i32*, i32, i32) #1

declare dso_local i64 @crypto_auth_verify(i32*, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
