; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit_header_field.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit_header_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@GIT_ERROR_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no such field '%s'\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"malformed header\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_commit_header_field(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @git_buf_clear(i32* %13)
  br label %15

15:                                               ; preds = %47, %33, %25, %3
  %16 = load i8*, i8** %9, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 10)
  store i8* %17, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %99

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %9, align 8
  br label %15

28:                                               ; preds = %19
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @git__prefixcmp(i8* %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %35, i8** %9, align 8
  br label %15

36:                                               ; preds = %28
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = load i8*, i8** %9, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 32
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %9, align 8
  br label %15

50:                                               ; preds = %36
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %9, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @git_buf_put(i32* %53, i8* %54, i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = call i64 @git_buf_oom(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %107

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %83, %66
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 32
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @git_buf_putc(i32* %74, i8 signext 10)
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i8* @strchr(i8* %78, i8 signext 10)
  store i8* %79, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  br label %104

83:                                               ; preds = %73
  %84 = load i32*, i32** %5, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @git_buf_put(i32* %84, i8* %85, i32 %91)
  br label %67

93:                                               ; preds = %67
  %94 = load i32*, i32** %5, align 8
  %95 = call i64 @git_buf_oom(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %107

98:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %109

99:                                               ; preds = %15
  %100 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 (i32, i8*, ...) @git_error_set(i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %101)
  %103 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %103, i32* %4, align 4
  br label %109

104:                                              ; preds = %82
  %105 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %106 = call i32 (i32, i8*, ...) @git_error_set(i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %109

107:                                              ; preds = %97, %65
  %108 = call i32 (...) @git_error_set_oom()
  store i32 -1, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %104, %99, %98
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @git__prefixcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @git_buf_put(i32*, i8*, i32) #1

declare dso_local i64 @git_buf_oom(i32*) #1

declare dso_local i32 @git_buf_putc(i32*, i8 signext) #1

declare dso_local i32 @git_error_set(i32, i8*, ...) #1

declare dso_local i32 @git_error_set_oom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
