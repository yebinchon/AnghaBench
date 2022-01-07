; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_browsers.c_parse_browser.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_browsers.c_parse_browser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BROWSER_TYPE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"rv:11\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Trident/7.0\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"MSIE/11.0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"OPR\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Opera\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"MSIE\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c";)-\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c";) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32, i8***)* @parse_browser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_browser(i8* %0, i8* %1, i32 %2, i8*** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8***, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8*** %3, i8**** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %15 = load i8***, i8**** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8**, i8*** %15, i64 %17
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @count_matches(i8* %21, i8 signext 32)
  store i64 %22, i64* %13, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %39, %27
  %29 = load i64, i64* %14, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %13, align 8
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i8*, i8** %10, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 32)
  store i8* %35, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i1 [ false, %28 ], [ %36, %33 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %10, align 8
  br label %28

42:                                               ; preds = %37
  br label %45

43:                                               ; preds = %24, %4
  %44 = load i8*, i8** %6, align 8
  store i8* %44, i8** %10, align 8
  br label %45

45:                                               ; preds = %43, %42
  %46 = load i8*, i8** %7, align 8
  %47 = load i8***, i8**** %9, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8**, i8*** %47, i64 %49
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @BROWSER_TYPE_LEN, align 4
  %55 = call i32 @xstrncpy(i8* %46, i8* %53, i32 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = call i32* @strstr(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %45
  %60 = load i8*, i8** %6, align 8
  %61 = call i32* @strstr(i8* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i8* @alloc_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %64, i8** %5, align 8
  br label %119

65:                                               ; preds = %59, %45
  %66 = load i8*, i8** %6, align 8
  %67 = call i32* @strstr(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = call i8* @strrchr(i8* %70, i8 signext 47)
  store i8* %71, i8** %12, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** %12, align 8
  %75 = call i8* @parse_opera(i8* %74)
  store i8* %75, i8** %5, align 8
  br label %119

76:                                               ; preds = %69, %65
  %77 = load i8*, i8** %6, align 8
  %78 = call i32* @strstr(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load i8*, i8** %6, align 8
  %82 = call i8* @strrchr(i8* %81, i8 signext 47)
  store i8* %82, i8** %12, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load i8*, i8** %6, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = icmp ult i8* %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 5
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = call i64 @strlen(i8* %92)
  %94 = add nsw i64 %93, 1
  %95 = call i32 @memmove(i8* %90, i8* %91, i64 %94)
  br label %96

96:                                               ; preds = %88, %84, %80, %76
  %97 = load i8*, i8** %6, align 8
  %98 = call i32* @strstr(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i8*, i8** %6, align 8
  %102 = call i8* @strpbrk(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i8* %102, i8** %11, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i8*, i8** %11, align 8
  store i8 0, i8* %105, align 1
  br label %106

106:                                              ; preds = %104, %100
  %107 = load i8*, i8** %6, align 8
  %108 = call i8* @char_replace(i8* %107, i8 signext 32, i8 signext 47)
  store i8* %108, i8** %6, align 8
  br label %116

109:                                              ; preds = %96
  %110 = load i8*, i8** %10, align 8
  %111 = call i8* @strpbrk(i8* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i8* %111, i8** %11, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i8*, i8** %11, align 8
  store i8 0, i8* %114, align 1
  br label %115

115:                                              ; preds = %113, %109
  br label %116

116:                                              ; preds = %115, %106
  %117 = load i8*, i8** %6, align 8
  %118 = call i8* @alloc_string(i8* %117)
  store i8* %118, i8** %5, align 8
  br label %119

119:                                              ; preds = %116, %73, %63
  %120 = load i8*, i8** %5, align 8
  ret i8* %120
}

declare dso_local i64 @count_matches(i8*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @xstrncpy(i8*, i8*, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i8* @alloc_string(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @parse_opera(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i8* @char_replace(i8*, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
