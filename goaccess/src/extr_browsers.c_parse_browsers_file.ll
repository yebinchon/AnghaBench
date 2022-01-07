; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_browsers.c_parse_browsers_file.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_browsers.c_parse_browsers_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32 }

@MAX_LINE_BROWSERS = common dso_local global i32 0, align 4
@browsers = common dso_local global i32** null, align 8
@browsers_hash = common dso_local global i8* null, align 8
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to open browser's file: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@MAX_CUSTOM_BROWSERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Maximum number of custom browsers has been reached\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_browsers_file() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_LINE_BROWSERS, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  store i32 0, i32* %4, align 4
  %13 = load i32**, i32*** @browsers, align 8
  %14 = call i32 @ARRAY_SIZE(i32** %13)
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  %16 = load i32**, i32*** @browsers, align 8
  %17 = call i32 @ARRAY_SIZE(i32** %16)
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = call i8* @xmalloc(i32 %20)
  store i8* %21, i8** @browsers_hash, align 8
  store i64 0, i64* %5, align 8
  br label %22

22:                                               ; preds = %42, %0
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load i8*, i8** @browsers_hash, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32**, i32*** @browsers, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32**, i32*** @browsers, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @set_browser(i8* %27, i64 %28, i32 %34, i32 %40)
  br label %42

42:                                               ; preds = %26
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %22

45:                                               ; preds = %22
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 2), align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %116

49:                                               ; preds = %45
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 2), align 8
  %51 = call i32* @fopen(i32 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %51, i32** %3, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 @strerror(i32 %54)
  %56 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @MAX_CUSTOM_BROWSERS, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = trunc i64 %60 to i32
  %62 = call i8* @xmalloc(i32 %61)
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  br label %63

63:                                               ; preds = %109, %102, %57
  %64 = trunc i64 %10 to i32
  %65 = load i32*, i32** %3, align 8
  %66 = call i32* @fgets(i8* %12, i32 %64, i32* %65)
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %113

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %81, %68
  %70 = getelementptr inbounds i8, i8* %12, i64 0
  %71 = load i8, i8* %70, align 16
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 32
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds i8, i8* %12, i64 0
  %76 = load i8, i8* %75, align 16
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 9
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ true, %69 ], [ %78, %74 ]
  br i1 %80, label %81, label %85

81:                                               ; preds = %79
  %82 = getelementptr inbounds i8, i8* %12, i64 1
  %83 = call i32 @strlen(i8* %12)
  %84 = call i32 @memmove(i8* %12, i8* %82, i32 %83)
  br label %69

85:                                               ; preds = %79
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  %88 = getelementptr inbounds i8, i8* %12, i64 0
  %89 = load i8, i8* %88, align 16
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %102, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds i8, i8* %12, i64 0
  %94 = load i8, i8* %93, align 16
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 13
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds i8, i8* %12, i64 0
  %99 = load i8, i8* %98, align 16
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 35
  br i1 %101, label %102, label %103

102:                                              ; preds = %97, %92, %85
  br label %63

103:                                              ; preds = %97
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %105 = load i32, i32* @MAX_CUSTOM_BROWSERS, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @parse_browser_token(i8* %110, i8* %12, i32 %111)
  br label %63

113:                                              ; preds = %63
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @fclose(i32* %114)
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %113, %48
  %117 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %7, align 4
  switch i32 %118, label %120 [
    i32 0, label %119
    i32 1, label %119
  ]

119:                                              ; preds = %116, %116
  ret void

120:                                              ; preds = %116
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(i32**) #2

declare dso_local i8* @xmalloc(i32) #2

declare dso_local i32 @set_browser(i8*, i64, i32, i32) #2

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @FATAL(i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @parse_browser_token(i8*, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
