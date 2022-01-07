; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_errors.c_test_core_errors__new_school.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_errors.c_test_core_errors__new_school.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@GIT_ERROR_NOMEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@GIT_ERROR_REPOSITORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"This is a test\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"this_file_does_not_exist\00", align 1
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"stat failed\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"stat failed: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_errors__new_school() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.stat, align 4
  %3 = call i32 (...) @git_error_clear()
  %4 = call %struct.TYPE_2__* (...) @git_error_last()
  %5 = icmp eq %struct.TYPE_2__* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @cl_assert(i32 %6)
  %8 = call i32 (...) @git_error_set_oom()
  %9 = call %struct.TYPE_2__* (...) @git_error_last()
  %10 = icmp ne %struct.TYPE_2__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @cl_assert(i32 %11)
  %13 = call %struct.TYPE_2__* (...) @git_error_last()
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GIT_ERROR_NOMEMORY, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = call %struct.TYPE_2__* (...) @git_error_last()
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @strstr(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %1, align 8
  %24 = load i8*, i8** %1, align 8
  %25 = icmp ne i8* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @cl_assert(i32 %26)
  %28 = call i32 (...) @git_error_clear()
  %29 = load i32, i32* @GIT_ERROR_REPOSITORY, align 4
  %30 = call i32 @git_error_set(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %31 = call %struct.TYPE_2__* (...) @git_error_last()
  %32 = icmp ne %struct.TYPE_2__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  %35 = call %struct.TYPE_2__* (...) @git_error_last()
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @strstr(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* %38, i8** %1, align 8
  %39 = load i8*, i8** %1, align 8
  %40 = icmp ne i8* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = call i32 (...) @git_error_clear()
  %44 = call %struct.TYPE_2__* (...) @git_error_last()
  %45 = icmp eq %struct.TYPE_2__* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  br label %48

48:                                               ; preds = %0
  %49 = call i32 @memset(%struct.stat* %2, i32 0, i32 4)
  %50 = call i64 @p_lstat(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %2)
  %51 = icmp slt i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @cl_assert(i32 %52)
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @GIT_UNUSED(i32 %55)
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @GIT_ERROR_OS, align 4
  %59 = call i32 @git_error_set(i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %60 = call %struct.TYPE_2__* (...) @git_error_last()
  %61 = icmp ne %struct.TYPE_2__* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @cl_assert(i32 %62)
  %64 = call %struct.TYPE_2__* (...) @git_error_last()
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @strstr(i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i8* %67, i8** %1, align 8
  %68 = load i8*, i8** %1, align 8
  %69 = icmp ne i8* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @cl_assert(i32 %70)
  %72 = load i8*, i8** %1, align 8
  %73 = call i64 @git__prefixcmp(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @cl_assert(i32 %75)
  %77 = load i8*, i8** %1, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp sgt i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @cl_assert(i32 %81)
  %83 = call i32 (...) @git_error_clear()
  ret void
}

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_2__* @git_error_last(...) #1

declare dso_local i32 @git_error_set_oom(...) #1

declare dso_local i8* @strstr(i32, i8*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

declare dso_local i64 @p_lstat(i8*, %struct.stat*) #1

declare dso_local i32 @GIT_UNUSED(i32) #1

declare dso_local i64 @git__prefixcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
