; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_honors_symlink.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_honors_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }

@g_repo = common dso_local global i32 0, align 4
@GIT_CONFIGMAP_SYMLINKS = common dso_local global i32 0, align 4
@g_idx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"README.txt\00", align 1
@GIT_FILEMODE_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"submod2/README.txt\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Modified but still a (fake) symlink\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_bypath__add_honors_symlink() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @g_repo, align 4
  %5 = load i32, i32* @GIT_CONFIGMAP_SYMLINKS, align 4
  %6 = call i32 @git_repository__configmap_lookup(i32* %3, i32 %4, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @cl_skip()
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @g_idx, align 4
  %14 = call %struct.TYPE_6__* @git_index_get_bypath(i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %1, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @cl_assert(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %19 = call i32 @memcpy(%struct.TYPE_6__* %2, %struct.TYPE_6__* %18, i32 16)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* @GIT_FILEMODE_LINK, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @g_idx, align 4
  %24 = call i32 @git_index_add(i32 %23, %struct.TYPE_6__* %2)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @g_idx, align 4
  %27 = call i32 @git_index_write(i32 %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @g_idx, align 4
  %31 = call i32 @git_index_add_bypath(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32, i32* @g_idx, align 4
  %34 = call i32 @git_index_write(i32 %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32, i32* @g_idx, align 4
  %37 = call %struct.TYPE_6__* @git_index_get_bypath(i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %1, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @cl_assert(i32 %39)
  %41 = load i32, i32* @GIT_FILEMODE_LINK, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cl_assert_equal_i(i32 %41, i32 %44)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository__configmap_lookup(i32*, i32, i32) #1

declare dso_local i32 @cl_skip(...) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_6__* @git_index_get_bypath(i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

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
