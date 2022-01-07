; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_custom.c_test_filter_custom__filter_registry_failure_cases.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_custom.c_test_filter_custom__filter_registry_failure_cases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GIT_FILTER_VERSION = common dso_local global i32 0, align 4
@GIT_EEXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"bitflip\00", align 1
@GIT_FILTER_CRLF = common dso_local global i8* null, align 8
@GIT_FILTER_IDENT = common dso_local global i8* null, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"not-a-filter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_filter_custom__filter_registry_failure_cases() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %3 = load i32, i32* @GIT_FILTER_VERSION, align 4
  store i32 %3, i32* %2, align 4
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @GIT_EEXISTS, align 4
  %6 = call i32 @git_filter_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %1, i32 0)
  %7 = call i32 @cl_assert_equal_i(i32 %5, i32 %6)
  %8 = load i8*, i8** @GIT_FILTER_CRLF, align 8
  %9 = call i32 @git_filter_unregister(i8* %8)
  %10 = call i32 @cl_git_fail(i32 %9)
  %11 = load i8*, i8** @GIT_FILTER_IDENT, align 8
  %12 = call i32 @git_filter_unregister(i8* %11)
  %13 = call i32 @cl_git_fail(i32 %12)
  %14 = load i32, i32* @GIT_ENOTFOUND, align 4
  %15 = call i32 @git_filter_unregister(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @cl_assert_equal_i(i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_filter_register(i8*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_filter_unregister(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
