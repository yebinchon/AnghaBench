; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_filebuf.c_test_core_filebuf__umask.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_filebuf.c_test_core_filebuf__umask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.stat = type { i32 }

@GIT_FILEBUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@__const.test_core_filebuf__umask.test = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"libgit2 rocks\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_filebuf__umask() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca [5 x i8], align 1
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_FILEBUF_INIT to i8*), i64 8, i1 false)
  %7 = bitcast [5 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_core_filebuf__umask.test, i32 0, i32 0), i64 5, i1 false)
  store i32 511, i32* %5, align 4
  %8 = call i32 @p_umask(i32 0)
  store i32 %8, i32* %4, align 4
  %9 = call i32 @p_umask(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %16 = call i32 @git_filebuf_open(%struct.TYPE_6__* %1, i8* %15, i32 0, i32 438)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  %23 = call i32 @git_filebuf_printf(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @cl_assert(i32 %28)
  %30 = call i32 @git_filebuf_commit(%struct.TYPE_6__* %1)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  %37 = call i32 @p_stat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %3)
  %38 = call i32 @cl_must_pass(i32 %37)
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 438, %44
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @cl_assert_equal_i(i32 %42, i32 %47)
  %49 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %50 = call i32 @p_unlink(i8* %49)
  %51 = call i32 @cl_must_pass(i32 %50)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @p_umask(i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_filebuf_open(%struct.TYPE_6__*, i8*, i32, i32) #2

declare dso_local i32 @git_filebuf_printf(%struct.TYPE_6__*, i8*, i8*) #2

declare dso_local i32 @git_filebuf_commit(%struct.TYPE_6__*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_stat(i8*, %struct.stat*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @p_unlink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
