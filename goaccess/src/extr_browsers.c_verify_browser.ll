; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_browsers.c_verify_browser.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_browsers.c_verify_browser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32** }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@browsers = common dso_local global i32 0, align 4
@browsers_hash = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@BROWSER_TYPE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @verify_browser(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i8* null, i8** %3, align 8
  br label %88

18:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %42, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @strstr(i8* %24, i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %42

35:                                               ; preds = %23
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %41 = call i8* @parse_browser(i8* %36, i8* %37, i64 %39, i32** %40)
  store i8* %41, i8** %3, align 8
  br label %88

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load i8*, i8** %4, align 8
  %47 = call i8* @check_http_crawler(i8* %46)
  store i8* %47, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i8* @parse_crawler(i8* %50, i8* %51, i8* %52)
  store i8* %53, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i8*, i8** %7, align 8
  store i8* %56, i8** %3, align 8
  br label %88

57:                                               ; preds = %49, %45
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %80, %57
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* @browsers, align 4
  %61 = call i64 @ARRAY_SIZE(i32 %60)
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = load i8*, i8** %4, align 8
  %65 = load i32**, i32*** @browsers_hash, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i32*, i32** %65, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @strstr(i8* %64, i32 %70)
  store i8* %71, i8** %6, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %80

74:                                               ; preds = %63
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i32**, i32*** @browsers_hash, align 8
  %79 = call i8* @parse_browser(i8* %75, i8* %76, i64 %77, i32** %78)
  store i8* %79, i8** %3, align 8
  br label %88

80:                                               ; preds = %73
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %9, align 8
  br label %58

83:                                               ; preds = %58
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* @BROWSER_TYPE_LEN, align 4
  %86 = call i32 @xstrncpy(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = call i8* @alloc_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %87, i8** %3, align 8
  br label %88

88:                                               ; preds = %83, %74, %55, %35, %17
  %89 = load i8*, i8** %3, align 8
  ret i8* %89
}

declare dso_local i8* @strstr(i8*, i32) #1

declare dso_local i8* @parse_browser(i8*, i8*, i64, i32**) #1

declare dso_local i8* @check_http_crawler(i8*) #1

declare dso_local i8* @parse_crawler(i8*, i8*, i8*) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @xstrncpy(i8*, i8*, i32) #1

declare dso_local i8* @alloc_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
