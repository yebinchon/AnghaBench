; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revparse.c_retrieve_previously_checked_out_branch_or_revision.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revparse.c_retrieve_previously_checked_out_branch_or_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"checkout: moving from (.*) to .*\00", align 1
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i32*, i8*, i64)* @retrieve_previously_checked_out_branch_or_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retrieve_previously_checked_out_branch_or_revision(i32** %0, i32** %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [2 x %struct.TYPE_3__], align 16
  store i32** %0, i32*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32 -1, i32* %15, align 4
  %23 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %23, i32* %21, align 4
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %18, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %5
  %30 = load i32**, i32*** %8, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %5
  %34 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %34, i32* %6, align 4
  br label %129

35:                                               ; preds = %29
  %36 = call i64 @build_regex(i32* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 -1, i32* %6, align 4
  br label %129

39:                                               ; preds = %35
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @GIT_HEAD_FILE, align 4
  %42 = call i64 @git_reference_lookup(i32** %12, i32* %40, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %121

45:                                               ; preds = %39
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @GIT_HEAD_FILE, align 4
  %48 = call i64 @git_reflog_read(i32** %13, i32* %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %121

51:                                               ; preds = %45
  %52 = load i32*, i32** %13, align 8
  %53 = call i64 @git_reflog_entrycount(i32* %52)
  store i64 %53, i64* %17, align 8
  store i64 0, i64* %16, align 8
  br label %54

54:                                               ; preds = %116, %51
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* %17, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %119

58:                                               ; preds = %54
  %59 = load i32*, i32** %13, align 8
  %60 = load i64, i64* %16, align 8
  %61 = call i32* @git_reflog_entry_byindex(i32* %59, i64 %60)
  store i32* %61, i32** %19, align 8
  %62 = load i32*, i32** %19, align 8
  %63 = call i8* @git_reflog_entry_message(i32* %62)
  store i8* %63, i8** %20, align 8
  %64 = load i8*, i8** %20, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %116

67:                                               ; preds = %58
  %68 = load i8*, i8** %20, align 8
  %69 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %22, i64 0, i64 0
  %70 = call i64 @git_regexp_search(i32* %14, i8* %68, i32 2, %struct.TYPE_3__* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %116

73:                                               ; preds = %67
  %74 = load i64, i64* %18, align 8
  %75 = add i64 %74, -1
  store i64 %75, i64* %18, align 8
  %76 = load i64, i64* %18, align 8
  %77 = icmp ugt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %116

79:                                               ; preds = %73
  %80 = load i8*, i8** %20, align 8
  %81 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %22, i64 0, i64 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  %86 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %22, i64 0, i64 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %22, i64 0, i64 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %88, %91
  %93 = call i64 @git_buf_put(i32* %21, i8* %85, i32 %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %79
  br label %121

96:                                               ; preds = %79
  %97 = load i32**, i32*** %8, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @git_buf_cstr(i32* %21)
  %100 = call i32 @git_reference_dwim(i32** %97, i32* %98, i32 %99)
  store i32 %100, i32* %15, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %121

103:                                              ; preds = %96
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @GIT_ENOTFOUND, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %121

111:                                              ; preds = %106, %103
  %112 = load i32**, i32*** %7, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @git_buf_cstr(i32* %21)
  %115 = call i32 @maybe_abbrev(i32** %112, i32* %113, i32 %114)
  store i32 %115, i32* %15, align 4
  br label %121

116:                                              ; preds = %78, %72, %66
  %117 = load i64, i64* %16, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %16, align 8
  br label %54

119:                                              ; preds = %54
  %120 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %119, %111, %110, %102, %95, %50, %44
  %122 = load i32*, i32** %12, align 8
  %123 = call i32 @git_reference_free(i32* %122)
  %124 = call i32 @git_buf_dispose(i32* %21)
  %125 = call i32 @git_regexp_dispose(i32* %14)
  %126 = load i32*, i32** %13, align 8
  %127 = call i32 @git_reflog_free(i32* %126)
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %121, %38, %33
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i64 @build_regex(i32*, i8*) #1

declare dso_local i64 @git_reference_lookup(i32**, i32*, i32) #1

declare dso_local i64 @git_reflog_read(i32**, i32*, i32) #1

declare dso_local i64 @git_reflog_entrycount(i32*) #1

declare dso_local i32* @git_reflog_entry_byindex(i32*, i64) #1

declare dso_local i8* @git_reflog_entry_message(i32*) #1

declare dso_local i64 @git_regexp_search(i32*, i8*, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @git_buf_put(i32*, i8*, i32) #1

declare dso_local i32 @git_reference_dwim(i32**, i32*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @maybe_abbrev(i32**, i32*, i32) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_regexp_dispose(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
