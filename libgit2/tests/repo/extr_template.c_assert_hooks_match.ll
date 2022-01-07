; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_template.c_assert_hooks_match.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_template.c_assert_hooks_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.stat = type { i64, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_FILEMODE_LINK = common dso_local global i32 0, align 4
@g_umask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%07o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32)* @assert_hooks_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_hooks_match(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca %struct.stat, align 8
  %12 = alloca %struct.stat, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %15 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %9, i8* %16, i8* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @git_path_lstat(i32 %21, %struct.stat* %11)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %10, i8* %24, i8* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @git_path_lstat(i32 %29, %struct.stat* %12)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @cl_assert(i32 %37)
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @GIT_MODE_TYPE(i32 %40)
  %42 = load i32, i32* @GIT_FILEMODE_LINK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @GIT_MODE_TYPE(i32 %46)
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @GIT_PERMS_FOR_WRITE(i32 %49)
  %51 = load i32, i32* @g_umask, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = or i32 %47, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @CLEAR_FOR_CORE_FILEMODE(i32 %58)
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @CLEAR_FOR_CORE_FILEMODE(i32 %61)
  br label %63

63:                                               ; preds = %57, %44
  %64 = load i32, i32* %13, align 4
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @cl_assert_equal_i_fmt(i32 %64, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %4
  %69 = call i32 @git_buf_dispose(%struct.TYPE_5__* %9)
  %70 = call i32 @git_buf_dispose(%struct.TYPE_5__* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i8*, i8*) #2

declare dso_local i32 @git_path_lstat(i32, %struct.stat*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @GIT_MODE_TYPE(i32) #2

declare dso_local i32 @GIT_PERMS_FOR_WRITE(i32) #2

declare dso_local i32 @CLEAR_FOR_CORE_FILEMODE(i32) #2

declare dso_local i32 @cl_assert_equal_i_fmt(i32, i32, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
