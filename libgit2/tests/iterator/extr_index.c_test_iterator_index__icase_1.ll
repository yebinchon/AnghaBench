; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__icase_1.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__icase_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8* }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_INDEX_CAPABILITY_IGNORE_CASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"k/D\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"k/Z\00", align 1
@GIT_ITERATOR_INCLUDE_TREES = common dso_local global i8* null, align 8
@GIT_ITERATOR_DONT_AUTOEXPAND = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_index__icase_1() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 24, i1 false)
  %6 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* @g_repo, align 4
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @git_repository_index(i32** %3, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @git_index_caps(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @git_index_set_caps(i32* %12, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* @g_repo, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @git_iterator_for_index(i32** %1, i32 %21, i32* %22, %struct.TYPE_4__* %2)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @expect_iterator_items(i32* %25, i32 7, i32* null, i32 7, i32* null)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_iterator_free(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* @g_repo, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @git_iterator_for_index(i32** %1, i32 %31, i32* %32, %struct.TYPE_4__* %2)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @expect_iterator_items(i32* %35, i32 3, i32* null, i32 3, i32* null)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_iterator_free(i32* %37)
  %39 = load i8*, i8** @GIT_ITERATOR_INCLUDE_TREES, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %42, align 8
  %43 = load i32, i32* @g_repo, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @git_iterator_for_index(i32** %1, i32 %43, i32* %44, %struct.TYPE_4__* %2)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @expect_iterator_items(i32* %47, i32 8, i32* null, i32 8, i32* null)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @git_iterator_free(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %52, align 8
  %53 = load i32, i32* @g_repo, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @git_iterator_for_index(i32** %1, i32 %53, i32* %54, %struct.TYPE_4__* %2)
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @expect_iterator_items(i32* %57, i32 4, i32* null, i32 4, i32* null)
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @git_iterator_free(i32* %59)
  %61 = load i8*, i8** @GIT_ITERATOR_DONT_AUTOEXPAND, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* %61, i8** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %64, align 8
  %65 = load i32, i32* @g_repo, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @git_iterator_for_index(i32** %1, i32 %65, i32* %66, %struct.TYPE_4__* %2)
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @expect_iterator_items(i32* %69, i32 5, i32* null, i32 8, i32* null)
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @git_iterator_free(i32* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %74, align 8
  %75 = load i32, i32* @g_repo, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @git_iterator_for_index(i32** %1, i32 %75, i32* %76, %struct.TYPE_4__* %2)
  %78 = call i32 @cl_git_pass(i32 %77)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @expect_iterator_items(i32* %79, i32 1, i32* null, i32 4, i32* null)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @git_iterator_free(i32* %81)
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @git_index_set_caps(i32* %83, i32 %86)
  %88 = call i32 @cl_git_pass(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* null, i8** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %91, align 8
  %92 = load i32, i32* @g_repo, align 4
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @git_iterator_for_index(i32** %1, i32 %92, i32* %93, %struct.TYPE_4__* %2)
  %95 = call i32 @cl_git_pass(i32 %94)
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @expect_iterator_items(i32* %96, i32 13, i32* null, i32 13, i32* null)
  %98 = load i32*, i32** %1, align 8
  %99 = call i32 @git_iterator_free(i32* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %101, align 8
  %102 = load i32, i32* @g_repo, align 4
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @git_iterator_for_index(i32** %1, i32 %102, i32* %103, %struct.TYPE_4__* %2)
  %105 = call i32 @cl_git_pass(i32 %104)
  %106 = load i32*, i32** %1, align 8
  %107 = call i32 @expect_iterator_items(i32* %106, i32 5, i32* null, i32 5, i32* null)
  %108 = load i32*, i32** %1, align 8
  %109 = call i32 @git_iterator_free(i32* %108)
  %110 = load i8*, i8** @GIT_ITERATOR_INCLUDE_TREES, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* %110, i8** %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %113, align 8
  %114 = load i32, i32* @g_repo, align 4
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @git_iterator_for_index(i32** %1, i32 %114, i32* %115, %struct.TYPE_4__* %2)
  %117 = call i32 @cl_git_pass(i32 %116)
  %118 = load i32*, i32** %1, align 8
  %119 = call i32 @expect_iterator_items(i32* %118, i32 14, i32* null, i32 14, i32* null)
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @git_iterator_free(i32* %120)
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %123, align 8
  %124 = load i32, i32* @g_repo, align 4
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @git_iterator_for_index(i32** %1, i32 %124, i32* %125, %struct.TYPE_4__* %2)
  %127 = call i32 @cl_git_pass(i32 %126)
  %128 = load i32*, i32** %1, align 8
  %129 = call i32 @expect_iterator_items(i32* %128, i32 6, i32* null, i32 6, i32* null)
  %130 = load i32*, i32** %1, align 8
  %131 = call i32 @git_iterator_free(i32* %130)
  %132 = load i8*, i8** @GIT_ITERATOR_DONT_AUTOEXPAND, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* %132, i8** %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %135, align 8
  %136 = load i32, i32* @g_repo, align 4
  %137 = load i32*, i32** %3, align 8
  %138 = call i32 @git_iterator_for_index(i32** %1, i32 %136, i32* %137, %struct.TYPE_4__* %2)
  %139 = call i32 @cl_git_pass(i32 %138)
  %140 = load i32*, i32** %1, align 8
  %141 = call i32 @expect_iterator_items(i32* %140, i32 9, i32* null, i32 14, i32* null)
  %142 = load i32*, i32** %1, align 8
  %143 = call i32 @git_iterator_free(i32* %142)
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %145, align 8
  %146 = load i32, i32* @g_repo, align 4
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @git_iterator_for_index(i32** %1, i32 %146, i32* %147, %struct.TYPE_4__* %2)
  %149 = call i32 @cl_git_pass(i32 %148)
  %150 = load i32*, i32** %1, align 8
  %151 = call i32 @expect_iterator_items(i32* %150, i32 1, i32* null, i32 6, i32* null)
  %152 = load i32*, i32** %1, align 8
  %153 = call i32 @git_iterator_free(i32* %152)
  %154 = load i32*, i32** %3, align 8
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @git_index_set_caps(i32* %154, i32 %155)
  %157 = call i32 @cl_git_pass(i32 %156)
  %158 = load i32*, i32** %3, align 8
  %159 = call i32 @git_index_free(i32* %158)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_caps(i32*) #2

declare dso_local i32 @git_index_set_caps(i32*, i32) #2

declare dso_local i32 @git_iterator_for_index(i32**, i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @expect_iterator_items(i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
