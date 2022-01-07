; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_parse.c_unescape_line.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_parse.c_unescape_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@git_config_escapes = common dso_local global i8* null, align 8
@git_config_escaped = common dso_local global i32* null, align 8
@GIT_ERROR_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid escape at %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i8*, i32)* @unescape_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unescape_line(i8** %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %13, align 8
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  %18 = load i64, i64* %13, align 8
  %19 = call i64 @GIT_ADD_SIZET_OVERFLOW(i64* %14, i64 %18, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %14, align 8
  %23 = call i8* @git__malloc(i64 %22)
  store i8* %23, i8** %10, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %4
  store i32 -1, i32* %5, align 4
  br label %94

26:                                               ; preds = %21
  %27 = load i8*, i8** %10, align 8
  store i8* %27, i8** %11, align 8
  br label %28

28:                                               ; preds = %86, %26
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %89

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 34
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %86

41:                                               ; preds = %33
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 92
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %11, align 8
  store i8 %48, i8* %49, align 1
  br label %85

51:                                               ; preds = %41
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32*, i32** %7, align 8
  store i32 1, i32* %59, align 4
  br label %90

60:                                               ; preds = %51
  %61 = load i8*, i8** @git_config_escapes, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i8* @strchr(i8* %61, i8 signext %63)
  store i8* %64, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load i32*, i32** @git_config_escaped, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** @git_config_escapes, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %11, align 8
  store i8 %75, i8* %76, align 1
  br label %84

78:                                               ; preds = %60
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @git__free(i8* %79)
  %81 = load i32, i32* @GIT_ERROR_CONFIG, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @git_error_set(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %82)
  store i32 -1, i32* %5, align 4
  br label %94

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84, %46
  br label %86

86:                                               ; preds = %85, %38
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %8, align 8
  br label %28

89:                                               ; preds = %28
  br label %90

90:                                               ; preds = %89, %58
  %91 = load i8*, i8** %11, align 8
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %10, align 8
  %93 = load i8**, i8*** %6, align 8
  store i8* %92, i8** %93, align 8
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %78, %25
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @GIT_ADD_SIZET_OVERFLOW(i64*, i64, i32) #1

declare dso_local i8* @git__malloc(i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
