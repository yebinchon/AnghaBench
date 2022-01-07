; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_honors_mode.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_honors_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }

@g_idx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"README.txt\00", align 1
@GIT_FILEMODE_BLOB_EXECUTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"submod2/README.txt\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Modified but still executable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_bypath__add_honors_mode() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = load i32, i32* @g_idx, align 4
  %4 = call %struct.TYPE_6__* @git_index_get_bypath(i32 %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %1, align 8
  %5 = icmp ne %struct.TYPE_6__* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @cl_assert(i32 %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %9 = call i32 @memcpy(%struct.TYPE_6__* %2, %struct.TYPE_6__* %8, i32 16)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = load i32, i32* @GIT_FILEMODE_BLOB_EXECUTABLE, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @GIT_FILEMODE_BLOB_EXECUTABLE, align 4
  %14 = call i32 @p_chmod(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = call i32 @cl_must_pass(i32 %14)
  %16 = load i32, i32* @g_idx, align 4
  %17 = call i32 @git_index_add(i32 %16, %struct.TYPE_6__* %2)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @g_idx, align 4
  %20 = call i32 @git_index_write(i32 %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @g_idx, align 4
  %24 = call i32 @git_index_add_bypath(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @g_idx, align 4
  %27 = call i32 @git_index_write(i32 %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @g_idx, align 4
  %30 = call %struct.TYPE_6__* @git_index_get_bypath(i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %1, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32, i32* @GIT_FILEMODE_BLOB_EXECUTABLE, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @cl_assert_equal_i(i32 %34, i32 %37)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_6__* @git_index_get_bypath(i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_chmod(i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_add(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @git_index_write(i32) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @git_index_add_bypath(i32, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
