; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_base64.c_base64_encode.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_base64.c_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_encode.base64 = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @base64_encode(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = add i64 %10, 3
  %12 = mul i64 %11, 4
  %13 = udiv i64 %12, 3
  %14 = add i64 %13, 1
  %15 = call i64 @malloc(i64 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %109, %2
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %110

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %8, align 8
  %27 = getelementptr inbounds i8, i8* %24, i64 %25
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 %30, 256
  store i32 %31, i32* %9, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %23
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %35, %23
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %46, 256
  store i32 %47, i32* %9, align 4
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %51, %43
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 16515072
  %64 = ashr i32 %63, 18
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_encode.base64, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  store i8 %67, i8* %68, align 1
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 258048
  %72 = ashr i32 %71, 12
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_encode.base64, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %4, align 8
  %80 = add i64 %79, 1
  %81 = icmp ugt i64 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %59
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %6, align 8
  store i8 61, i8* %83, align 1
  br label %94

85:                                               ; preds = %59
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 4032
  %88 = ashr i32 %87, 6
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_encode.base64, i64 0, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %6, align 8
  store i8 %91, i8* %92, align 1
  br label %94

94:                                               ; preds = %85, %82
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* %4, align 8
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  store i8 61, i8* %99, align 1
  br label %109

101:                                              ; preds = %94
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, 63
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_encode.base64, i64 0, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %6, align 8
  store i8 %106, i8* %107, align 1
  br label %109

109:                                              ; preds = %101, %98
  br label %19

110:                                              ; preds = %19
  %111 = load i8*, i8** %6, align 8
  store i8 0, i8* %111, align 1
  %112 = load i8*, i8** %5, align 8
  ret i8* %112
}

declare dso_local i64 @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
