; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_ucs2_conversion.c_convert_utf8_to_ucs2.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_ucs2_conversion.c_convert_utf8_to_ucs2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ucs2_conversion_descriptor = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"UCS-2BE//IGNORE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"UCS-2BE\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Error opening the conversion context\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Converting to UCS-2 failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @convert_utf8_to_ucs2(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 4
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32* @smalloc(i64 %15)
  store i32* %16, i32** %7, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %9, align 8
  %19 = load i64, i64* @ucs2_conversion_descriptor, align 8
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = call i64 @iconv_open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i64 %22, i64* @ucs2_conversion_descriptor, align 8
  %23 = load i64, i64* @ucs2_conversion_descriptor, align 8
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i64 @iconv_open(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i64 %26, i64* @ucs2_conversion_descriptor, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i64, i64* @ucs2_conversion_descriptor, align 8
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EXIT_FAILURE, align 4
  %32 = call i32 @err(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  br label %37

34:                                               ; preds = %2
  %35 = load i64, i64* @ucs2_conversion_descriptor, align 8
  %36 = call i64 @iconv(i64 %35, i8** null, i64* null, i8** null, i64* null)
  br label %37

37:                                               ; preds = %34, %33
  %38 = load i64, i64* @ucs2_conversion_descriptor, align 8
  %39 = bitcast i32** %9 to i8**
  %40 = call i64 @iconv(i64 %38, i8** %3, i64* %5, i8** %39, i64* %8)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32* @srealloc(i32* %49, i64 %50)
  store i32* %51, i32** %7, align 8
  %52 = load i64*, i64** %4, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i64, i64* %6, align 8
  %56 = udiv i64 %55, 4
  %57 = load i64*, i64** %4, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %45
  %59 = load i32*, i32** %7, align 8
  ret i32* %59
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @smalloc(i64) #1

declare dso_local i64 @iconv_open(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @iconv(i64, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32* @srealloc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
