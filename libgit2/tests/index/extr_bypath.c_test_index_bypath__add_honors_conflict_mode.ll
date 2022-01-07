; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_honors_conflict_mode.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_honors_conflict_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32 }

@g_idx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"README.txt\00", align 1
@GIT_FILEMODE_BLOB_EXECUTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"submod2/README.txt\00", align 1
@GIT_INDEX_ENTRY_STAGESHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Modified but still executable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_bypath__add_honors_conflict_mode() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @g_idx, align 4
  %5 = call %struct.TYPE_6__* @git_index_get_bypath(i32 %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %1, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @cl_assert(i32 %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %10 = call i32 @memcpy(%struct.TYPE_6__* %2, %struct.TYPE_6__* %9, i32 16)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i32, i32* @GIT_FILEMODE_BLOB_EXECUTABLE, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @GIT_FILEMODE_BLOB_EXECUTABLE, align 4
  %15 = call i32 @p_chmod(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = call i32 @cl_must_pass(i32 %15)
  %17 = load i32, i32* @g_idx, align 4
  %18 = call i32 @git_index_remove_bypath(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %31, %0
  %21 = load i32, i32* %3, align 4
  %22 = icmp sle i32 %21, 3
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @GIT_INDEX_ENTRY_STAGESHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @g_idx, align 4
  %29 = call i32 @git_index_add(i32 %28, %struct.TYPE_6__* %2)
  %30 = call i32 @cl_git_pass(i32 %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load i32, i32* @g_idx, align 4
  %36 = call i32 @git_index_write(i32 %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @g_idx, align 4
  %40 = call i32 @git_index_add_bypath(i32 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32, i32* @g_idx, align 4
  %43 = call i32 @git_index_write(i32 %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32, i32* @g_idx, align 4
  %46 = call %struct.TYPE_6__* @git_index_get_bypath(i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %1, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @cl_assert(i32 %48)
  %50 = load i32, i32* @GIT_FILEMODE_BLOB_EXECUTABLE, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cl_assert_equal_i(i32 %50, i32 %53)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_6__* @git_index_get_bypath(i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_chmod(i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_remove_bypath(i32, i8*) #1

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
