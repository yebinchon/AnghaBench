; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__add_pushspec.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__add_pushspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@_remote = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"refs/*:refs/*\00", align 1
@_refspec = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"refs/*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_remotes__add_pushspec() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @_remote, align 4
  %3 = call i64 @git_remote_refspec_count(i32 %2)
  store i64 %3, i64* %1, align 8
  %4 = load i32, i32* @_repo, align 4
  %5 = call i32 @git_remote_add_push(i32 %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i64, i64* %1, align 8
  %8 = add i64 %7, 1
  store i64 %8, i64* %1, align 8
  %9 = load i32, i32* @_remote, align 4
  %10 = call i32 @git_remote_free(i32 %9)
  %11 = load i32, i32* @_repo, align 4
  %12 = call i32 @git_remote_lookup(i32* @_remote, i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i64, i64* %1, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @_remote, align 4
  %17 = call i64 @git_remote_refspec_count(i32 %16)
  %18 = trunc i64 %17 to i32
  %19 = call i32 @cl_assert_equal_i(i32 %15, i32 %18)
  %20 = load i32, i32* @_remote, align 4
  %21 = load i64, i64* %1, align 8
  %22 = sub i64 %21, 1
  %23 = call %struct.TYPE_6__* @git_remote_get_refspec(i32 %20, i64 %22)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** @_refspec, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_refspec, align 8
  %25 = call i32 @git_refspec_src(%struct.TYPE_6__* %24)
  %26 = call i32 @cl_assert_equal_s(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_refspec, align 8
  %28 = call i32 @git_refspec_dst(%struct.TYPE_6__* %27)
  %29 = call i32 @cl_assert_equal_s(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_refspec, align 8
  %31 = call i32 @git_refspec_string(%struct.TYPE_6__* %30)
  %32 = call i32 @cl_assert_equal_s(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_refspec, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cl_assert_equal_b(i32 %35, i32 1)
  ret void
}

declare dso_local i64 @git_remote_refspec_count(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_remote_add_push(i32, i8*, i8*) #1

declare dso_local i32 @git_remote_free(i32) #1

declare dso_local i32 @git_remote_lookup(i32*, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local %struct.TYPE_6__* @git_remote_get_refspec(i32, i64) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @git_refspec_src(%struct.TYPE_6__*) #1

declare dso_local i32 @git_refspec_dst(%struct.TYPE_6__*) #1

declare dso_local i32 @git_refspec_string(%struct.TYPE_6__*) #1

declare dso_local i32 @cl_assert_equal_b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
