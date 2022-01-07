; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_check_diff_patches_at_line.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_check_diff_patches_at_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_DELTA_UNMODIFIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"<SKIP>\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"<UNTRACKED>\00", align 1
@GIT_DELTA_UNTRACKED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"<END>\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"expected diff did not match actual diff\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**, i8*, i32)* @check_diff_patches_at_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_diff_patches_at_line(i32* %0, i8** %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %10, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @git_diff_num_deltas(i32* %14)
  store i64 %15, i64* %12, align 8
  %16 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %16, i32* %13, align 4
  store i64 0, i64* %11, align 8
  br label %17

17:                                               ; preds = %124, %4
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %129

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @git_patch_from_diff(i32** %10, i32* %22, i64 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %10, align 8
  %27 = call %struct.TYPE_3__* @git_patch_get_delta(i32* %26)
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %9, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @cl_assert(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %21
  %37 = load i8**, i8*** %6, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %40, null
  %42 = zext i1 %41 to i32
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @cl_assert_at_line(i32 %42, i8* %43, i32 %44)
  br label %124

46:                                               ; preds = %21
  %47 = load i8**, i8*** %6, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i8*, i8** %47, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i8**, i8*** %6, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %124

60:                                               ; preds = %52, %46
  %61 = load i8**, i8*** %6, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load i8**, i8*** %6, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @cl_assert_at_line(i32 %79, i8* %80, i32 %81)
  br label %124

83:                                               ; preds = %66, %60
  %84 = load i8**, i8*** %6, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %111

89:                                               ; preds = %83
  %90 = load i8**, i8*** %6, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i8*, i8** %90, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %111, label %96

96:                                               ; preds = %89
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @git_patch_to_buf(i32* %13, i32* %97)
  %99 = call i32 @cl_git_pass(i32 %98)
  %100 = load i8**, i8*** %6, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds i8*, i8** %100, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @cl_assert_at_line(i32 %107, i8* %108, i32 %109)
  br label %111

111:                                              ; preds = %96, %89, %83
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @git_patch_to_buf(i32* %13, i32* %112)
  %114 = call i32 @cl_git_pass(i32 %113)
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i8**, i8*** %6, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds i8*, i8** %117, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @get_buf_ptr(i32* %13)
  %122 = call i32 @clar__assert_equal(i8* %115, i32 %116, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %120, i32 %121)
  %123 = call i32 @git_buf_dispose(i32* %13)
  br label %124

124:                                              ; preds = %111, %73, %59, %36
  %125 = load i64, i64* %11, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %11, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @git_patch_free(i32* %127)
  br label %17

129:                                              ; preds = %17
  %130 = load i8**, i8*** %6, align 8
  %131 = load i64, i64* %11, align 8
  %132 = getelementptr inbounds i8*, i8** %130, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load i8**, i8*** %6, align 8
  %137 = load i64, i64* %11, align 8
  %138 = getelementptr inbounds i8*, i8** %136, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  br label %143

143:                                              ; preds = %135, %129
  %144 = phi i1 [ false, %129 ], [ %142, %135 ]
  %145 = zext i1 %144 to i32
  %146 = load i8*, i8** %7, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @cl_assert_at_line(i32 %145, i8* %146, i32 %147)
  ret void
}

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i64) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_3__* @git_patch_get_delta(i32*) #1

declare dso_local i32 @cl_assert_at_line(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_patch_to_buf(i32*, i32*) #1

declare dso_local i32 @clar__assert_equal(i8*, i32, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @get_buf_ptr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_patch_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
