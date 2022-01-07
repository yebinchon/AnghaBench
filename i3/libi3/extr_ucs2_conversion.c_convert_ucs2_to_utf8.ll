; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_ucs2_conversion.c_convert_ucs2_to_utf8.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_ucs2_conversion.c_convert_ucs2_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf8_conversion_descriptor = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"UCS-2BE\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Error opening the conversion context\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Converting to UTF-8 failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @convert_ucs2_to_utf8(i32* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 1
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i8* @scalloc(i64 %15, i32 1)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = sub i64 %18, 1
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* @utf8_conversion_descriptor, align 8
  %21 = icmp eq i64 %20, -1
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = call i64 @iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i64 %23, i64* @utf8_conversion_descriptor, align 8
  %24 = load i64, i64* @utf8_conversion_descriptor, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = call i32 @err(i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %22
  br label %33

30:                                               ; preds = %2
  %31 = load i64, i64* @utf8_conversion_descriptor, align 8
  %32 = call i64 @iconv(i64 %31, i8** null, i64* null, i8** null, i64* null)
  br label %33

33:                                               ; preds = %30, %29
  %34 = load i64, i64* %5, align 8
  %35 = mul i64 %34, 4
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* @utf8_conversion_descriptor, align 8
  %37 = bitcast i32** %4 to i8**
  %38 = call i64 @iconv(i64 %36, i8** %37, i64* %10, i8** %8, i64* %9)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp eq i64 %39, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @free(i8* %43)
  store i8* null, i8** %3, align 8
  br label %47

45:                                               ; preds = %33
  %46 = load i8*, i8** %7, align 8
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i8* @scalloc(i64, i32) #1

declare dso_local i64 @iconv_open(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @iconv(i64, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
