; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_errors.c_test_core_errors__public_api.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_errors.c_test_core_errors__public_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@GIT_ERROR_NOMEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@GIT_ERROR_REPOSITORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"This is a test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_errors__public_api() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 (...) @git_error_clear()
  %3 = call %struct.TYPE_2__* (...) @git_error_last()
  %4 = icmp eq %struct.TYPE_2__* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @cl_assert(i32 %5)
  %7 = call i32 (...) @git_error_set_oom()
  %8 = call %struct.TYPE_2__* (...) @git_error_last()
  %9 = icmp ne %struct.TYPE_2__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @cl_assert(i32 %10)
  %12 = call %struct.TYPE_2__* (...) @git_error_last()
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GIT_ERROR_NOMEMORY, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @cl_assert(i32 %17)
  %19 = call %struct.TYPE_2__* (...) @git_error_last()
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @strstr(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %1, align 8
  %23 = load i8*, i8** %1, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  %27 = call i32 (...) @git_error_clear()
  %28 = load i32, i32* @GIT_ERROR_REPOSITORY, align 4
  %29 = call i32 @git_error_set_str(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %30 = call %struct.TYPE_2__* (...) @git_error_last()
  %31 = icmp ne %struct.TYPE_2__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = call %struct.TYPE_2__* (...) @git_error_last()
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @strstr(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* %37, i8** %1, align 8
  %38 = load i8*, i8** %1, align 8
  %39 = icmp ne i8* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = call i32 (...) @git_error_clear()
  %43 = call %struct.TYPE_2__* (...) @git_error_last()
  %44 = icmp eq %struct.TYPE_2__* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @cl_assert(i32 %45)
  ret void
}

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_2__* @git_error_last(...) #1

declare dso_local i32 @git_error_set_oom(...) #1

declare dso_local i8* @strstr(i32, i8*) #1

declare dso_local i32 @git_error_set_str(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
