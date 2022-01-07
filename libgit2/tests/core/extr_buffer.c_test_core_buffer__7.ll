; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__7.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"This is fun\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_buffer__7() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %4 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 24, i1 false)
  store i8* null, i8** %3, align 8
  %5 = call i32 @git_buf_sets(%struct.TYPE_9__* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i64 @git_buf_oom(%struct.TYPE_9__* %2)
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = call i8* @git_buf_cstr(%struct.TYPE_9__* %2)
  %11 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %12 = call i8* @git_buf_detach(%struct.TYPE_9__* %2)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @git__free(i8* %18)
  %20 = call i8* @git_buf_detach(%struct.TYPE_9__* %2)
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @cl_assert_equal_s(i8* null, i8* %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = call i32 @git_buf_dispose(%struct.TYPE_9__* %2)
  %27 = load i8*, i8** %1, align 8
  %28 = call i8* @git__strdup(i8* %27)
  store i8* %28, i8** %3, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @git_buf_attach(%struct.TYPE_9__* %2, i8* %29, i64 0)
  %31 = load i8*, i8** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @cl_assert_equal_s(i8* %31, i8* %33)
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i8*, i8** %1, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = icmp eq i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i8*, i8** %1, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = add nsw i64 %45, 1
  %47 = icmp eq i64 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @cl_assert(i32 %48)
  %50 = call i32 @git_buf_dispose(%struct.TYPE_9__* %2)
  %51 = load i8*, i8** %1, align 8
  %52 = call i8* @git__strdup(i8* %51)
  store i8* %52, i8** %3, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = load i8*, i8** %1, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = add nsw i64 %55, 1
  %57 = call i32 @git_buf_attach(%struct.TYPE_9__* %2, i8* %53, i64 %56)
  %58 = load i8*, i8** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @cl_assert_equal_s(i8* %58, i8* %60)
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i8*, i8** %1, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = icmp eq i64 %63, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @cl_assert(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i8*, i8** %1, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = add nsw i64 %72, 1
  %74 = icmp eq i64 %70, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @cl_assert(i32 %75)
  %77 = call i32 @git_buf_dispose(%struct.TYPE_9__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_sets(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_9__*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i8* @git_buf_cstr(%struct.TYPE_9__*) #2

declare dso_local i8* @git_buf_detach(%struct.TYPE_9__*) #2

declare dso_local i32 @git__free(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

declare dso_local i8* @git__strdup(i8*) #2

declare dso_local i32 @git_buf_attach(%struct.TYPE_9__*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
