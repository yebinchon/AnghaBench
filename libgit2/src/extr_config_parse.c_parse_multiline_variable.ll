; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_parse.c_parse_multiline_variable.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_parse.c_parse_multiline_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @parse_multiline_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_multiline_variable(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %13

13:                                               ; preds = %64, %3
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %76

16:                                               ; preds = %13
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @git_parse_advance_line(%struct.TYPE_5__* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @git__strndup(i32 %23, i32 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %29)
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %16
  store i32 0, i32* %12, align 4
  br label %70

37:                                               ; preds = %16
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @strip_comments(i8* %38, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %64

51:                                               ; preds = %37
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @unescape_line(i8** %11, i32* %9, i8* %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %70

57:                                               ; preds = %51
  %58 = load i32*, i32** %6, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @git_buf_puts(i32* %58, i8* %59)
  store i32 %60, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %70

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @git__free(i8* %65)
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @git__free(i8* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %7, align 4
  br label %13

70:                                               ; preds = %62, %56, %36
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @git__free(i8* %71)
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @git__free(i8* %73)
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %70
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @git_parse_advance_line(%struct.TYPE_5__*) #1

declare dso_local i8* @git__strndup(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i32 @strip_comments(i8*, i32) #1

declare dso_local i32 @unescape_line(i8**, i32*, i8*, i32) #1

declare dso_local i32 @git_buf_puts(i32*, i8*) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
