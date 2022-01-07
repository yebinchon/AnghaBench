; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_template.c_assert_mode_seems_okay.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_template.c_assert_mode_seems_okay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.stat = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@S_ISGID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%07o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32)* @assert_mode_seems_okay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_mode_seems_okay(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 4
  %12 = alloca %struct.stat, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = bitcast %struct.TYPE_5__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %11, i8* %14, i8* %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @git_path_lstat(i32 %19, %struct.stat* %12)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = call i32 @git_buf_dispose(%struct.TYPE_5__* %11)
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @CLEAR_FOR_CORE_FILEMODE(i32 %26)
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CLEAR_FOR_CORE_FILEMODE(i32 %29)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %25, %5
  %32 = load i32, i32* @S_ISGID, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @S_ISGID, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert_equal_b(i32 %35, i32 %41)
  br label %43

43:                                               ; preds = %34, %31
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @GIT_PERMS_IS_EXEC(i32 %44)
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @GIT_PERMS_IS_EXEC(i32 %47)
  %49 = call i32 @cl_assert_equal_b(i32 %45, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @GIT_MODE_TYPE(i32 %50)
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @GIT_MODE_TYPE(i32 %53)
  %55 = call i32 @cl_assert_equal_i_fmt(i32 %51, i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i8*, i8*) #2

declare dso_local i32 @git_path_lstat(i32, %struct.stat*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @CLEAR_FOR_CORE_FILEMODE(i32) #2

declare dso_local i32 @cl_assert_equal_b(i32, i32) #2

declare dso_local i32 @GIT_PERMS_IS_EXEC(i32) #2

declare dso_local i32 @cl_assert_equal_i_fmt(i32, i32, i8*) #2

declare dso_local i32 @GIT_MODE_TYPE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
