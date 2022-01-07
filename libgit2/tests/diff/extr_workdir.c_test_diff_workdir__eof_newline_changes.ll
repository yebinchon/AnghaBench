; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__eof_newline_changes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__eof_newline_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8**, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"current_file\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"status/current_file\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__eof_newline_changes() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 16, i1 false)
  store i32* null, i32** %2, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %7 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %7, i32* @g_repo, align 4
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i8** %4, i8*** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %12, i32* null, %struct.TYPE_10__* %1)
  %14 = call i32 @cl_git_pass(i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %75, %0
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %18, label %78

18:                                               ; preds = %15
  %19 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 40)
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @diff_file_cb, align 4
  %25 = load i32, i32* @diff_binary_cb, align 4
  %26 = load i32, i32* @diff_hunk_cb, align 4
  %27 = load i32, i32* @diff_line_cb, align 4
  %28 = call i32 @diff_foreach_via_iterator(i32* %23, i32 %24, i32 %25, i32 %26, i32 %27, %struct.TYPE_11__* %3)
  %29 = call i32 @cl_git_pass(i32 %28)
  br label %38

30:                                               ; preds = %18
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @diff_file_cb, align 4
  %33 = load i32, i32* @diff_binary_cb, align 4
  %34 = load i32, i32* @diff_hunk_cb, align 4
  %35 = load i32, i32* @diff_line_cb, align 4
  %36 = call i32 @git_diff_foreach(i32* %31, i32 %32, i32 %33, i32 %34, i32 %35, %struct.TYPE_11__* %3)
  %37 = call i32 @cl_git_pass(i32 %36)
  br label %38

38:                                               ; preds = %30, %22
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @cl_assert_equal_i(i32 0, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cl_assert_equal_i(i32 0, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cl_assert_equal_i(i32 0, i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cl_assert_equal_i(i32 0, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @cl_assert_equal_i(i32 0, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cl_assert_equal_i(i32 0, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @cl_assert_equal_i(i32 0, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cl_assert_equal_i(i32 0, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @cl_assert_equal_i(i32 0, i32 %73)
  br label %75

75:                                               ; preds = %38
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %15

78:                                               ; preds = %15
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @git_diff_free(i32* %79)
  %81 = call i32 @cl_git_append2file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @g_repo, align 4
  %83 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %82, i32* null, %struct.TYPE_10__* %1)
  %84 = call i32 @cl_git_pass(i32 %83)
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %145, %78
  %86 = load i32, i32* %5, align 4
  %87 = icmp sle i32 %86, 1
  br i1 %87, label %88, label %148

88:                                               ; preds = %85
  %89 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 40)
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i32*, i32** %2, align 8
  %94 = load i32, i32* @diff_file_cb, align 4
  %95 = load i32, i32* @diff_binary_cb, align 4
  %96 = load i32, i32* @diff_hunk_cb, align 4
  %97 = load i32, i32* @diff_line_cb, align 4
  %98 = call i32 @diff_foreach_via_iterator(i32* %93, i32 %94, i32 %95, i32 %96, i32 %97, %struct.TYPE_11__* %3)
  %99 = call i32 @cl_git_pass(i32 %98)
  br label %108

100:                                              ; preds = %88
  %101 = load i32*, i32** %2, align 8
  %102 = load i32, i32* @diff_file_cb, align 4
  %103 = load i32, i32* @diff_binary_cb, align 4
  %104 = load i32, i32* @diff_hunk_cb, align 4
  %105 = load i32, i32* @diff_line_cb, align 4
  %106 = call i32 @git_diff_foreach(i32* %101, i32 %102, i32 %103, i32 %104, i32 %105, %struct.TYPE_11__* %3)
  %107 = call i32 @cl_git_pass(i32 %106)
  br label %108

108:                                              ; preds = %100, %92
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @cl_assert_equal_i(i32 1, i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @cl_assert_equal_i(i32 0, i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @cl_assert_equal_i(i32 0, i32 %122)
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @cl_assert_equal_i(i32 1, i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @cl_assert_equal_i(i32 1, i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @cl_assert_equal_i(i32 2, i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @cl_assert_equal_i(i32 1, i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @cl_assert_equal_i(i32 1, i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @cl_assert_equal_i(i32 0, i32 %143)
  br label %145

145:                                              ; preds = %108
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %85

148:                                              ; preds = %85
  %149 = load i32*, i32** %2, align 8
  %150 = call i32 @git_diff_free(i32* %149)
  %151 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %152 = load i32, i32* @g_repo, align 4
  %153 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %152, i32* null, %struct.TYPE_10__* %1)
  %154 = call i32 @cl_git_pass(i32 %153)
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %215, %148
  %156 = load i32, i32* %5, align 4
  %157 = icmp sle i32 %156, 1
  br i1 %157, label %158, label %218

158:                                              ; preds = %155
  %159 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 40)
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load i32*, i32** %2, align 8
  %164 = load i32, i32* @diff_file_cb, align 4
  %165 = load i32, i32* @diff_binary_cb, align 4
  %166 = load i32, i32* @diff_hunk_cb, align 4
  %167 = load i32, i32* @diff_line_cb, align 4
  %168 = call i32 @diff_foreach_via_iterator(i32* %163, i32 %164, i32 %165, i32 %166, i32 %167, %struct.TYPE_11__* %3)
  %169 = call i32 @cl_git_pass(i32 %168)
  br label %178

170:                                              ; preds = %158
  %171 = load i32*, i32** %2, align 8
  %172 = load i32, i32* @diff_file_cb, align 4
  %173 = load i32, i32* @diff_binary_cb, align 4
  %174 = load i32, i32* @diff_hunk_cb, align 4
  %175 = load i32, i32* @diff_line_cb, align 4
  %176 = call i32 @git_diff_foreach(i32* %171, i32 %172, i32 %173, i32 %174, i32 %175, %struct.TYPE_11__* %3)
  %177 = call i32 @cl_git_pass(i32 %176)
  br label %178

178:                                              ; preds = %170, %162
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @cl_assert_equal_i(i32 1, i32 %180)
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @cl_assert_equal_i(i32 0, i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 5
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @cl_assert_equal_i(i32 0, i32 %192)
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 5
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @cl_assert_equal_i(i32 1, i32 %198)
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @cl_assert_equal_i(i32 1, i32 %201)
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @cl_assert_equal_i(i32 3, i32 %204)
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @cl_assert_equal_i(i32 0, i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @cl_assert_equal_i(i32 1, i32 %210)
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @cl_assert_equal_i(i32 2, i32 %213)
  br label %215

215:                                              ; preds = %178
  %216 = load i32, i32* %5, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %5, align 4
  br label %155

218:                                              ; preds = %155
  %219 = load i32*, i32** %2, align 8
  %220 = call i32 @git_diff_free(i32* %219)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @diff_foreach_via_iterator(i32*, i32, i32, i32, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @cl_git_append2file(i8*, i8*) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
