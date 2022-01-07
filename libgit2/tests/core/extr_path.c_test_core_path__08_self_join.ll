; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_path.c_test_core_path__08_self_join.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_path.c_test_core_path__08_self_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"/foo\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"this is a new string\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"/foo/this is a new string\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"/grow the buffer, grow the buffer, grow the buffer\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"/foo/this is a new string/grow the buffer, grow the buffer, grow the buffer\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"/foo/bar\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"baz\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"/bar/baz\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"somethinglongenoughtorealloc\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"/baz/somethinglongenoughtorealloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_path__08_self_join() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca i64, align 8
  %3 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  store i64 0, i64* %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %2, align 8
  %6 = call i32 @git_buf_sets(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @cl_assert_equal_s(i64 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @git_buf_joinpath(%struct.TYPE_6__* %1, i64 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @cl_assert_equal_s(i64 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i64, i64* %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @git_buf_joinpath(%struct.TYPE_6__* %1, i64 %35, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @cl_assert_equal_s(i64 %39, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i64, i64* %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @cl_assert(i32 %45)
  %47 = call i32 @git_buf_dispose(%struct.TYPE_6__* %1)
  %48 = call i32 @git_buf_sets(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 4
  %53 = call i32 @git_buf_joinpath(%struct.TYPE_6__* %1, i64 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @cl_assert_equal_s(i64 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 4
  %63 = call i32 @git_buf_joinpath(%struct.TYPE_6__* %1, i64 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @cl_assert_equal_s(i64 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %68 = load i64, i64* %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %68, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @cl_assert(i32 %72)
  %74 = call i32 @git_buf_dispose(%struct.TYPE_6__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i64, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_6__*, i64, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
