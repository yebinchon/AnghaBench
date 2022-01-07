; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_vector.c_test_core_vector__grow_and_shrink.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_vector.c_test_core_vector__grow_and_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_VECTOR_INIT = common dso_local global i32 0, align 4
@__const.test_core_vector__grow_and_shrink.expected1 = private unnamed_addr constant [9 x i8*] [i8* inttoptr (i64 2 to i8*), i8* inttoptr (i64 3 to i8*), i8* inttoptr (i64 4 to i8*), i8* inttoptr (i64 5 to i8*), i8* inttoptr (i64 6 to i8*), i8* inttoptr (i64 7 to i8*), i8* inttoptr (i64 8 to i8*), i8* inttoptr (i64 9 to i8*), i8* inttoptr (i64 10 to i8*)], align 16
@__const.test_core_vector__grow_and_shrink.expected2 = private unnamed_addr constant [8 x i8*] [i8* inttoptr (i64 2 to i8*), i8* inttoptr (i64 4 to i8*), i8* inttoptr (i64 5 to i8*), i8* inttoptr (i64 6 to i8*), i8* inttoptr (i64 7 to i8*), i8* inttoptr (i64 8 to i8*), i8* inttoptr (i64 9 to i8*), i8* inttoptr (i64 10 to i8*)], align 16
@__const.test_core_vector__grow_and_shrink.expected4 = private unnamed_addr constant [3 x i8*] [i8* inttoptr (i64 2 to i8*), i8* inttoptr (i64 4 to i8*), i8* inttoptr (i64 5 to i8*)], align 16
@__const.test_core_vector__grow_and_shrink.expected9 = private unnamed_addr constant [4 x i8*] [i8* inttoptr (i64 4 to i8*), i8* null, i8* inttoptr (i64 5 to i8*), i8* null], align 16
@__const.test_core_vector__grow_and_shrink.expectedA = private unnamed_addr constant [2 x i8*] [i8* inttoptr (i64 4 to i8*), i8* null], align 16
@__const.test_core_vector__grow_and_shrink.expectedB = private unnamed_addr constant [1 x i8*] [i8* inttoptr (i64 4 to i8*)], align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_vector__grow_and_shrink() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [9 x i8*], align 16
  %3 = alloca [8 x i8*], align 16
  %4 = alloca [5 x i8*], align 16
  %5 = alloca [3 x i8*], align 16
  %6 = alloca [5 x i8*], align 16
  %7 = alloca [6 x i8*], align 16
  %8 = alloca [9 x i8*], align 16
  %9 = alloca [6 x i8*], align 16
  %10 = alloca [4 x i8*], align 16
  %11 = alloca [2 x i8*], align 16
  %12 = alloca [1 x i8*], align 8
  %13 = load i32, i32* @GIT_VECTOR_INIT, align 4
  store i32 %13, i32* %1, align 4
  %14 = bitcast [9 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([9 x i8*]* @__const.test_core_vector__grow_and_shrink.expected1 to i8*), i64 72, i1 false)
  %15 = bitcast [8 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([8 x i8*]* @__const.test_core_vector__grow_and_shrink.expected2 to i8*), i64 64, i1 false)
  %16 = bitcast [5 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 40, i1 false)
  %17 = bitcast i8* %16 to [5 x i8*]*
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 0
  store i8* inttoptr (i64 2 to i8*), i8** %18, align 16
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 1
  store i8* inttoptr (i64 4 to i8*), i8** %19, align 8
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 2
  store i8* inttoptr (i64 5 to i8*), i8** %20, align 16
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 3
  store i8* inttoptr (i64 6 to i8*), i8** %21, align 8
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 4
  store i8* inttoptr (i64 10 to i8*), i8** %22, align 16
  %23 = bitcast [3 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([3 x i8*]* @__const.test_core_vector__grow_and_shrink.expected4 to i8*), i64 24, i1 false)
  %24 = bitcast [5 x i8*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 40, i1 false)
  %25 = bitcast i8* %24 to [5 x i8*]*
  %26 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %26, align 16
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i32 0, i32 3
  store i8* inttoptr (i64 4 to i8*), i8** %27, align 8
  %28 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i32 0, i32 4
  store i8* inttoptr (i64 5 to i8*), i8** %28, align 16
  %29 = bitcast [6 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 48, i1 false)
  %30 = bitcast i8* %29 to [6 x i8*]*
  %31 = getelementptr inbounds [6 x i8*], [6 x i8*]* %30, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %31, align 16
  %32 = getelementptr inbounds [6 x i8*], [6 x i8*]* %30, i32 0, i32 3
  store i8* inttoptr (i64 4 to i8*), i8** %32, align 8
  %33 = getelementptr inbounds [6 x i8*], [6 x i8*]* %30, i32 0, i32 4
  store i8* inttoptr (i64 5 to i8*), i8** %33, align 16
  %34 = bitcast [9 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 72, i1 false)
  %35 = bitcast i8* %34 to [9 x i8*]*
  %36 = getelementptr inbounds [9 x i8*], [9 x i8*]* %35, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %36, align 16
  %37 = getelementptr inbounds [9 x i8*], [9 x i8*]* %35, i32 0, i32 3
  store i8* inttoptr (i64 4 to i8*), i8** %37, align 8
  %38 = getelementptr inbounds [9 x i8*], [9 x i8*]* %35, i32 0, i32 7
  store i8* inttoptr (i64 5 to i8*), i8** %38, align 8
  %39 = bitcast [6 x i8*]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %39, i8 0, i64 48, i1 false)
  %40 = bitcast i8* %39 to [6 x i8*]*
  %41 = getelementptr inbounds [6 x i8*], [6 x i8*]* %40, i32 0, i32 0
  store i8* inttoptr (i64 4 to i8*), i8** %41, align 16
  %42 = getelementptr inbounds [6 x i8*], [6 x i8*]* %40, i32 0, i32 4
  store i8* inttoptr (i64 5 to i8*), i8** %42, align 16
  %43 = bitcast [4 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %43, i8* align 16 bitcast ([4 x i8*]* @__const.test_core_vector__grow_and_shrink.expected9 to i8*), i64 32, i1 false)
  %44 = bitcast [2 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %44, i8* align 16 bitcast ([2 x i8*]* @__const.test_core_vector__grow_and_shrink.expectedA to i8*), i64 16, i1 false)
  %45 = bitcast [1 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 bitcast ([1 x i8*]* @__const.test_core_vector__grow_and_shrink.expectedB to i8*), i64 8, i1 false)
  %46 = call i32 @git_vector_insert(i32* %1, i8* inttoptr (i64 1 to i8*))
  %47 = call i32 @git_vector_insert(i32* %1, i8* inttoptr (i64 2 to i8*))
  %48 = call i32 @git_vector_insert(i32* %1, i8* inttoptr (i64 3 to i8*))
  %49 = call i32 @git_vector_insert(i32* %1, i8* inttoptr (i64 4 to i8*))
  %50 = call i32 @git_vector_insert(i32* %1, i8* inttoptr (i64 5 to i8*))
  %51 = call i32 @git_vector_insert(i32* %1, i8* inttoptr (i64 6 to i8*))
  %52 = call i32 @git_vector_insert(i32* %1, i8* inttoptr (i64 7 to i8*))
  %53 = call i32 @git_vector_insert(i32* %1, i8* inttoptr (i64 8 to i8*))
  %54 = call i32 @git_vector_insert(i32* %1, i8* inttoptr (i64 9 to i8*))
  %55 = call i32 @git_vector_insert(i32* %1, i8* inttoptr (i64 10 to i8*))
  %56 = call i32 @git_vector_remove_range(i32* %1, i32 0, i32 1)
  %57 = getelementptr inbounds [9 x i8*], [9 x i8*]* %2, i64 0, i64 0
  %58 = getelementptr inbounds [9 x i8*], [9 x i8*]* %2, i64 0, i64 0
  %59 = call i32 @ARRAY_SIZE(i8** %58)
  %60 = call i32 @assert_vector(i32* %1, i8** %57, i32 %59)
  %61 = call i32 @git_vector_remove_range(i32* %1, i32 1, i32 1)
  %62 = getelementptr inbounds [8 x i8*], [8 x i8*]* %3, i64 0, i64 0
  %63 = getelementptr inbounds [8 x i8*], [8 x i8*]* %3, i64 0, i64 0
  %64 = call i32 @ARRAY_SIZE(i8** %63)
  %65 = call i32 @assert_vector(i32* %1, i8** %62, i32 %64)
  %66 = call i32 @git_vector_remove_range(i32* %1, i32 4, i32 3)
  %67 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %68 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %69 = call i32 @ARRAY_SIZE(i8** %68)
  %70 = call i32 @assert_vector(i32* %1, i8** %67, i32 %69)
  %71 = call i32 @git_vector_remove_range(i32* %1, i32 3, i32 2)
  %72 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %73 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %74 = call i32 @ARRAY_SIZE(i8** %73)
  %75 = call i32 @assert_vector(i32* %1, i8** %72, i32 %74)
  %76 = call i32 @git_vector_insert_null(i32* %1, i32 0, i32 2)
  %77 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 0
  %78 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 0
  %79 = call i32 @ARRAY_SIZE(i8** %78)
  %80 = call i32 @assert_vector(i32* %1, i8** %77, i32 %79)
  %81 = call i32 @git_vector_insert_null(i32* %1, i32 5, i32 1)
  %82 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  %83 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  %84 = call i32 @ARRAY_SIZE(i8** %83)
  %85 = call i32 @assert_vector(i32* %1, i8** %82, i32 %84)
  %86 = call i32 @git_vector_insert_null(i32* %1, i32 4, i32 3)
  %87 = getelementptr inbounds [9 x i8*], [9 x i8*]* %8, i64 0, i64 0
  %88 = getelementptr inbounds [9 x i8*], [9 x i8*]* %8, i64 0, i64 0
  %89 = call i32 @ARRAY_SIZE(i8** %88)
  %90 = call i32 @assert_vector(i32* %1, i8** %87, i32 %89)
  %91 = call i32 @git_vector_remove_range(i32* %1, i32 0, i32 3)
  %92 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 0
  %93 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 0
  %94 = call i32 @ARRAY_SIZE(i8** %93)
  %95 = call i32 @assert_vector(i32* %1, i8** %92, i32 %94)
  %96 = call i32 @git_vector_remove_range(i32* %1, i32 1, i32 2)
  %97 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %98 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %99 = call i32 @ARRAY_SIZE(i8** %98)
  %100 = call i32 @assert_vector(i32* %1, i8** %97, i32 %99)
  %101 = call i32 @git_vector_remove_range(i32* %1, i32 2, i32 2)
  %102 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %103 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %104 = call i32 @ARRAY_SIZE(i8** %103)
  %105 = call i32 @assert_vector(i32* %1, i8** %102, i32 %104)
  %106 = call i32 @git_vector_remove_range(i32* %1, i32 1, i32 1)
  %107 = getelementptr inbounds [1 x i8*], [1 x i8*]* %12, i64 0, i64 0
  %108 = getelementptr inbounds [1 x i8*], [1 x i8*]* %12, i64 0, i64 0
  %109 = call i32 @ARRAY_SIZE(i8** %108)
  %110 = call i32 @assert_vector(i32* %1, i8** %107, i32 %109)
  %111 = call i32 @git_vector_remove_range(i32* %1, i32 0, i32 1)
  %112 = call i32 @assert_vector(i32* %1, i8** null, i32 0)
  %113 = call i32 @git_vector_free(i32* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_vector_insert(i32*, i8*) #2

declare dso_local i32 @git_vector_remove_range(i32*, i32, i32) #2

declare dso_local i32 @assert_vector(i32*, i8**, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @git_vector_insert_null(i32*, i32, i32) #2

declare dso_local i32 @git_vector_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
