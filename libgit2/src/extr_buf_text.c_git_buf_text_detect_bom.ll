; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_buf_text.c_git_buf_text_detect_bom.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_buf_text.c_git_buf_text_detect_bom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@GIT_BOM_NONE = common dso_local global i32 0, align 4
@GIT_BOM_UTF32_BE = common dso_local global i32 0, align 4
@GIT_BOM_UTF8 = common dso_local global i32 0, align 4
@GIT_BOM_UTF16_BE = common dso_local global i32 0, align 4
@GIT_BOM_UTF32_LE = common dso_local global i32 0, align 4
@GIT_BOM_UTF16_LE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_buf_text_detect_bom(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load i32, i32* @GIT_BOM_NONE, align 4
  %9 = load i32*, i32** %4, align 8
  store i32 %8, i32* %9, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  %25 = load i8, i8* %23, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %107 [
    i32 0, label %27
    i32 -17, label %52
    i32 -2, label %71
    i32 -1, label %80
  ]

27:                                               ; preds = %15
  %28 = load i64, i64* %7, align 8
  %29 = icmp uge i64 %28, 4
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, -2
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @GIT_BOM_UTF32_BE, align 4
  %50 = load i32*, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  store i32 4, i32* %3, align 4
  br label %109

51:                                               ; preds = %42, %36, %30, %27
  br label %108

52:                                               ; preds = %15
  %53 = load i64, i64* %7, align 8
  %54 = icmp uge i64 %53, 3
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, -69
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, -65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @GIT_BOM_UTF8, align 4
  %69 = load i32*, i32** %4, align 8
  store i32 %68, i32* %69, align 4
  store i32 3, i32* %3, align 4
  br label %109

70:                                               ; preds = %61, %55, %52
  br label %108

71:                                               ; preds = %15
  %72 = load i8*, i8** %6, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @GIT_BOM_UTF16_BE, align 4
  %78 = load i32*, i32** %4, align 8
  store i32 %77, i32* %78, align 4
  store i32 2, i32* %3, align 4
  br label %109

79:                                               ; preds = %71
  br label %108

80:                                               ; preds = %15
  %81 = load i8*, i8** %6, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, -2
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %108

86:                                               ; preds = %80
  %87 = load i64, i64* %7, align 8
  %88 = icmp uge i64 %87, 4
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* @GIT_BOM_UTF32_LE, align 4
  %103 = load i32*, i32** %4, align 8
  store i32 %102, i32* %103, align 4
  store i32 4, i32* %3, align 4
  br label %109

104:                                              ; preds = %95, %89, %86
  %105 = load i32, i32* @GIT_BOM_UTF16_LE, align 4
  %106 = load i32*, i32** %4, align 8
  store i32 %105, i32* %106, align 4
  store i32 2, i32* %3, align 4
  br label %109

107:                                              ; preds = %15
  br label %108

108:                                              ; preds = %107, %85, %79, %70, %51
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %104, %101, %76, %67, %48, %14
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
