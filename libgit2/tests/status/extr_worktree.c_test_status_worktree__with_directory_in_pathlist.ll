; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__with_directory_in_pathlist.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__with_directory_in_pathlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8**, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"testrepo2\00", align 1
@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"subdir\00", align 1
@GIT_INDEX_CAPABILITY_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_DEFAULTS = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH = common dso_local global i32 0, align 4
@GIT_STATUS_SHOW_WORKDIR_ONLY = common dso_local global i32 0, align 4
@testrepo2_subdir_paths_icase = common dso_local global i32* null, align 8
@testrepo2_subdir_paths = common dso_local global i32* null, align 8
@GIT_STATUS_SHOW_INDEX_ONLY = common dso_local global i32 0, align 4
@GIT_STATUS_SHOW_INDEX_AND_WORKDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree__with_directory_in_pathlist() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_16__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %1, align 8
  %11 = bitcast %struct.TYPE_16__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_16__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 24, i1 false)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_repository_index(i32** %2, i32* %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_index_caps(i32* %15)
  %17 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_index_free(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i8** %9, i8*** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* @GIT_STATUS_OPT_DEFAULTS, align 4
  %28 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNMODIFIED, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH, align 4
  %31 = or i32 %29, %30
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @GIT_STATUS_SHOW_WORKDIR_ONLY, align 4
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @git_status_list_new(i32** %4, i32* %35, %struct.TYPE_16__* %3)
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @git_status_list_entrycount(i32* %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @cl_assert_equal_i(i32 4, i64 %39)
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %74, %0
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  %46 = load i32*, i32** %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call %struct.TYPE_17__* @git_status_byindex(i32* %46, i64 %47)
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %5, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @cl_assert_equal_i(i32 0, i64 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load i32*, i32** @testrepo2_subdir_paths_icase, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  br label %65

60:                                               ; preds = %45
  %61 = load i32*, i32** @testrepo2_subdir_paths, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i32 [ %59, %55 ], [ %64, %60 ]
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cl_assert_equal_s(i32 %66, i32 %72)
  br label %74

74:                                               ; preds = %65
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %6, align 8
  br label %41

77:                                               ; preds = %41
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @git_status_list_free(i32* %78)
  %80 = load i32, i32* @GIT_STATUS_SHOW_INDEX_ONLY, align 4
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %1, align 8
  %83 = call i32 @git_status_list_new(i32** %4, i32* %82, %struct.TYPE_16__* %3)
  %84 = load i32*, i32** %4, align 8
  %85 = call i64 @git_status_list_entrycount(i32* %84)
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @cl_assert_equal_i(i32 4, i64 %86)
  store i64 0, i64* %6, align 8
  br label %88

88:                                               ; preds = %121, %77
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %88
  %93 = load i32*, i32** %4, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call %struct.TYPE_17__* @git_status_byindex(i32* %93, i64 %94)
  store %struct.TYPE_17__* %95, %struct.TYPE_17__** %5, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @cl_assert_equal_i(i32 0, i64 %98)
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load i32*, i32** @testrepo2_subdir_paths_icase, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  br label %112

107:                                              ; preds = %92
  %108 = load i32*, i32** @testrepo2_subdir_paths, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  br label %112

112:                                              ; preds = %107, %102
  %113 = phi i32 [ %106, %102 ], [ %111, %107 ]
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @cl_assert_equal_s(i32 %113, i32 %119)
  br label %121

121:                                              ; preds = %112
  %122 = load i64, i64* %6, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %6, align 8
  br label %88

124:                                              ; preds = %88
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @git_status_list_free(i32* %125)
  %127 = load i32, i32* @GIT_STATUS_SHOW_INDEX_AND_WORKDIR, align 4
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %1, align 8
  %130 = call i32 @git_status_list_new(i32** %4, i32* %129, %struct.TYPE_16__* %3)
  %131 = load i32*, i32** %4, align 8
  %132 = call i64 @git_status_list_entrycount(i32* %131)
  store i64 %132, i64* %7, align 8
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @cl_assert_equal_i(i32 4, i64 %133)
  store i64 0, i64* %6, align 8
  br label %135

135:                                              ; preds = %168, %124
  %136 = load i64, i64* %6, align 8
  %137 = load i64, i64* %7, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %171

139:                                              ; preds = %135
  %140 = load i32*, i32** %4, align 8
  %141 = load i64, i64* %6, align 8
  %142 = call %struct.TYPE_17__* @git_status_byindex(i32* %140, i64 %141)
  store %struct.TYPE_17__* %142, %struct.TYPE_17__** %5, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @cl_assert_equal_i(i32 0, i64 %145)
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %139
  %150 = load i32*, i32** @testrepo2_subdir_paths_icase, align 8
  %151 = load i64, i64* %6, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  br label %159

154:                                              ; preds = %139
  %155 = load i32*, i32** @testrepo2_subdir_paths, align 8
  %156 = load i64, i64* %6, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  br label %159

159:                                              ; preds = %154, %149
  %160 = phi i32 [ %153, %149 ], [ %158, %154 ]
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @cl_assert_equal_s(i32 %160, i32 %166)
  br label %168

168:                                              ; preds = %159
  %169 = load i64, i64* %6, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %6, align 8
  br label %135

171:                                              ; preds = %135
  %172 = load i32*, i32** %4, align 8
  %173 = call i32 @git_status_list_free(i32* %172)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_index_caps(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_status_list_new(i32**, i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @git_status_list_entrycount(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i64) #1

declare dso_local %struct.TYPE_17__* @git_status_byindex(i32*, i64) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local i32 @git_status_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
