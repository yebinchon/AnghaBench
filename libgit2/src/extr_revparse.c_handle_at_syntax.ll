; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revparse.c_handle_at_syntax.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revparse.c_handle_at_syntax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"upstream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i8*, i64, i32*, i8*)* @handle_at_syntax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_at_syntax(i32** %0, i32** %1, i8* %2, i64 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32** %0, i32*** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %19 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %19, i32* %17, align 4
  %20 = load i32**, i32*** %8, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i64 @git_buf_put(i32* %17, i8* %25, i64 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %99

30:                                               ; preds = %6
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @try_parse_numeric(i32* %15, i8* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %14, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 45
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %15, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %47, i32* %16, align 4
  br label %96

48:                                               ; preds = %43, %30
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32**, i32*** %8, align 8
  %56 = load i32**, i32*** %9, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @git_buf_cstr(i32* %17)
  %59 = load i32, i32* %15, align 4
  %60 = sub nsw i32 0, %59
  %61 = call i32 @retrieve_previously_checked_out_branch_or_revision(i32** %55, i32** %56, i32* %57, i32 %58, i32 %60)
  store i32 %61, i32* %16, align 4
  br label %70

62:                                               ; preds = %51
  %63 = load i32**, i32*** %8, align 8
  %64 = load i32**, i32*** %9, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @git_buf_cstr(i32* %17)
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = call i32 @retrieve_revobject_from_reflog(i32** %63, i32** %64, i32* %65, i32 %66, i64 %68)
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %62, %54
  br label %96

71:                                               ; preds = %48
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75, %71
  %80 = load i32**, i32*** %9, align 8
  %81 = call i32 @git_buf_cstr(i32* %17)
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @retrieve_remote_tracking_reference(i32** %80, i32 %81, i32* %82)
  store i32 %83, i32* %16, align 4
  br label %96

84:                                               ; preds = %75
  %85 = load i8*, i8** %13, align 8
  %86 = call i64 @git__date_parse(i64* %18, i8* %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %96

89:                                               ; preds = %84
  %90 = load i32**, i32*** %8, align 8
  %91 = load i32**, i32*** %9, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @git_buf_cstr(i32* %17)
  %94 = load i64, i64* %18, align 8
  %95 = call i32 @retrieve_revobject_from_reflog(i32** %90, i32** %91, i32* %92, i32 %93, i64 %94)
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %89, %88, %79, %70, %46
  %97 = call i32 @git_buf_dispose(i32* %17)
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %96, %29
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_buf_put(i32*, i8*, i64) #1

declare dso_local i32 @try_parse_numeric(i32*, i8*) #1

declare dso_local i32 @retrieve_previously_checked_out_branch_or_revision(i32**, i32**, i32*, i32, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @retrieve_revobject_from_reflog(i32**, i32**, i32*, i32, i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @retrieve_remote_tracking_reference(i32**, i32, i32*) #1

declare dso_local i64 @git__date_parse(i64*, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
