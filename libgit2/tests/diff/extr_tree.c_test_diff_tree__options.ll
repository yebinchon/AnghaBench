; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_tree.c_test_diff_tree__options.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_tree.c_test_diff_tree__options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64, i64*, i64, i64, i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"6bab5c79cd5140d0\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"605812ab7fe421fdd\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"f5b0af1fb4f5\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"a97cc019851\00", align 1
@GIT_DIFF_NORMAL = common dso_local global i32 0, align 4
@GIT_DIFF_REVERSE = common dso_local global i32 0, align 4
@GIT_DIFF_FORCE_TEXT = common dso_local global i32 0, align 4
@GIT_DIFF_IGNORE_WHITESPACE = common dso_local global i32 0, align 4
@GIT_DIFF_IGNORE_WHITESPACE_CHANGE = common dso_local global i32 0, align 4
@GIT_DIFF_IGNORE_WHITESPACE_EOL = common dso_local global i32 0, align 4
@__const.test_diff_tree__options.test_expects = private unnamed_addr constant [10 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 5, i32 0, i32 0, i32 4, i32 0, i32 0, i64 51, i64* inttoptr (i64 2 to i64*), i64 46, i64 3, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_4__ { i32 5, i32 0, i32 0, i32 4, i32 0, i32 0, i64 53, i64* inttoptr (i64 4 to i64*), i64 46, i64 3, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_4__ { i32 5, i32 0, i32 0, i32 4, i32 0, i32 0, i64 52, i64* inttoptr (i64 3 to i64*), i64 3, i64 46, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_4__ { i32 5, i32 0, i32 0, i32 5, i32 0, i32 0, i64 54, i64* inttoptr (i64 3 to i64*), i64 47, i64 4, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i64 22, i64* inttoptr (i64 9 to i64*), i64 10, i64 3, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i64 19, i64* inttoptr (i64 12 to i64*), i64 7, i64 0, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i64 20, i64* inttoptr (i64 11 to i64*), i64 8, i64 1, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i64 20, i64* inttoptr (i64 11 to i64*), i64 8, i64 1, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i64 18, i64* inttoptr (i64 11 to i64*), i64 0, i64 7, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_4__ zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@g_repo = common dso_local global i32 0, align 4
@a = common dso_local global i32* null, align 8
@b = common dso_local global i32* null, align 8
@opts = common dso_local global i32 0, align 4
@diff = common dso_local global i32* null, align 8
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DELTA_TYPECHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_tree__options() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca [9 x i32], align 16
  %9 = alloca [9 x i32], align 16
  %10 = alloca [10 x %struct.TYPE_4__], align 16
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %14 = bitcast [9 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 36, i1 false)
  %15 = bitcast i8* %14 to [9 x i32]*
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i32 0, i32 4
  store i32 1, i32* %16, align 16
  %17 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i32 0, i32 5
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i32 0, i32 6
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i32 0, i32 7
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i32 0, i32 8
  store i32 1, i32* %20, align 16
  %21 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %22 = load i32, i32* @GIT_DIFF_NORMAL, align 4
  %23 = call i32 @DIFF_OPTS(i32 %22, i32 1)
  store i32 %23, i32* %21, align 4
  %24 = getelementptr inbounds i32, i32* %21, i64 1
  %25 = load i32, i32* @GIT_DIFF_NORMAL, align 4
  %26 = call i32 @DIFF_OPTS(i32 %25, i32 3)
  store i32 %26, i32* %24, align 4
  %27 = getelementptr inbounds i32, i32* %24, i64 1
  %28 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %29 = call i32 @DIFF_OPTS(i32 %28, i32 2)
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds i32, i32* %27, i64 1
  %31 = load i32, i32* @GIT_DIFF_FORCE_TEXT, align 4
  %32 = call i32 @DIFF_OPTS(i32 %31, i32 2)
  store i32 %32, i32* %30, align 4
  %33 = getelementptr inbounds i32, i32* %30, i64 1
  %34 = load i32, i32* @GIT_DIFF_NORMAL, align 4
  %35 = call i32 @DIFF_OPTS(i32 %34, i32 3)
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds i32, i32* %33, i64 1
  %37 = load i32, i32* @GIT_DIFF_IGNORE_WHITESPACE, align 4
  %38 = call i32 @DIFF_OPTS(i32 %37, i32 3)
  store i32 %38, i32* %36, align 4
  %39 = getelementptr inbounds i32, i32* %36, i64 1
  %40 = load i32, i32* @GIT_DIFF_IGNORE_WHITESPACE_CHANGE, align 4
  %41 = call i32 @DIFF_OPTS(i32 %40, i32 3)
  store i32 %41, i32* %39, align 4
  %42 = getelementptr inbounds i32, i32* %39, i64 1
  %43 = load i32, i32* @GIT_DIFF_IGNORE_WHITESPACE_EOL, align 4
  %44 = call i32 @DIFF_OPTS(i32 %43, i32 3)
  store i32 %44, i32* %42, align 4
  %45 = getelementptr inbounds i32, i32* %42, i64 1
  %46 = load i32, i32* @GIT_DIFF_IGNORE_WHITESPACE, align 4
  %47 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @DIFF_OPTS(i32 %48, i32 1)
  store i32 %49, i32* %45, align 4
  %50 = bitcast [10 x %struct.TYPE_4__]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %50, i8* align 16 bitcast ([10 x %struct.TYPE_4__]* @__const.test_diff_tree__options.test_expects to i8*), i64 960, i1 false)
  %51 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %51, i32* @g_repo, align 4
  %52 = load i32, i32* @g_repo, align 4
  %53 = load i8*, i8** %1, align 8
  %54 = call i32* @resolve_commit_oid_to_tree(i32 %52, i8* %53)
  store i32* %54, i32** @a, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @cl_assert(i32 %56)
  %58 = load i32, i32* @g_repo, align 4
  %59 = load i8*, i8** %2, align 8
  %60 = call i32* @resolve_commit_oid_to_tree(i32 %58, i8* %59)
  store i32* %60, i32** @b, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @cl_assert(i32 %62)
  %64 = load i32, i32* @g_repo, align 4
  %65 = load i8*, i8** %3, align 8
  %66 = call i32* @resolve_commit_oid_to_tree(i32 %64, i8* %65)
  store i32* %66, i32** %5, align 8
  %67 = icmp ne i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @cl_assert(i32 %68)
  %70 = load i32, i32* @g_repo, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = call i32* @resolve_commit_oid_to_tree(i32 %70, i8* %71)
  store i32* %72, i32** %6, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @cl_assert(i32 %74)
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %179, %0
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %10, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %182

83:                                               ; preds = %76
  %84 = call i32 @memset(%struct.TYPE_4__* %7, i32 0, i32 96)
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* @opts, align 4
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %83
  %95 = load i32, i32* @g_repo, align 4
  %96 = load i32*, i32** @a, align 8
  %97 = load i32*, i32** @b, align 8
  %98 = call i32 @git_diff_tree_to_tree(i32** @diff, i32 %95, i32* %96, i32* %97, i32* @opts)
  %99 = call i32 @cl_git_pass(i32 %98)
  br label %106

100:                                              ; preds = %83
  %101 = load i32, i32* @g_repo, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @git_diff_tree_to_tree(i32** @diff, i32 %101, i32* %102, i32* %103, i32* @opts)
  %105 = call i32 @cl_git_pass(i32 %104)
  br label %106

106:                                              ; preds = %100, %94
  %107 = load i32*, i32** @diff, align 8
  %108 = load i32, i32* @diff_file_cb, align 4
  %109 = load i32, i32* @diff_binary_cb, align 4
  %110 = load i32, i32* @diff_hunk_cb, align 4
  %111 = load i32, i32* @diff_line_cb, align 4
  %112 = call i32 @git_diff_foreach(i32* %107, i32 %108, i32 %109, i32 %110, i32 %111, %struct.TYPE_4__* %7)
  %113 = call i32 @cl_git_pass(i32 %112)
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %10, i64 0, i64 %115
  store %struct.TYPE_4__* %116, %struct.TYPE_4__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @cl_assert_equal_i(i64 %118, i64 %121)
  %123 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %143, %106
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @GIT_DELTA_TYPECHANGE, align 4
  %127 = icmp sle i32 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 7
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @cl_assert_equal_i(i64 %135, i64 %141)
  br label %143

143:                                              ; preds = %128
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %124

146:                                              ; preds = %124
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 8
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @cl_assert_equal_i(i64 %148, i64 %151)
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 9
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 9
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @cl_assert_equal_i(i64 %154, i64 %157)
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 10
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 10
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @cl_assert_equal_i(i64 %160, i64 %163)
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 11
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 11
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @cl_assert_equal_i(i64 %166, i64 %169)
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 12
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 12
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @cl_assert_equal_i(i64 %172, i64 %175)
  %177 = load i32*, i32** @diff, align 8
  %178 = call i32 @git_diff_free(i32* %177)
  store i32* null, i32** @diff, align 8
  br label %179

179:                                              ; preds = %146
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %12, align 4
  br label %76

182:                                              ; preds = %76
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @git_tree_free(i32* %183)
  %185 = load i32*, i32** %6, align 8
  %186 = call i32 @git_tree_free(i32* %185)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DIFF_OPTS(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, i32*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_assert_equal_i(i64, i64) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
