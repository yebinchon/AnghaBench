; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_dirent.c_test_core_dirent__diriter_with_fullname.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_dirent.c_test_core_dirent__diriter_with_fullname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GIT_PATH_DIRITER_INIT = common dso_local global i32 0, align 4
@dirent_cleanup__cb = common dso_local global i32 0, align 4
@sub = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_dirent__diriter_with_fullname() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GIT_PATH_DIRITER_INIT, align 4
  store i32 %3, i32* %1, align 4
  %4 = call i32 @cl_set_cleanup(i32* @dirent_cleanup__cb, %struct.TYPE_8__* @sub)
  %5 = call i32 @setup(%struct.TYPE_8__* @sub)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sub, i32 0, i32 0, i32 0), align 4
  %7 = call i32 @git_path_diriter_init(i32* %1, i32 %6, i32 0)
  %8 = call i32 @cl_git_pass(i32 %7)
  br label %9

9:                                                ; preds = %12, %0
  %10 = call i32 @git_path_diriter_next(i32* %1)
  store i32 %10, i32* %2, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @handle_next(i32* %1, %struct.TYPE_8__* @sub)
  br label %9

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @GIT_ITEROVER, align 4
  %17 = call i32 @cl_assert_equal_i(i32 %15, i32 %16)
  %18 = call i32 @git_path_diriter_free(i32* %1)
  %19 = call i32 @check_counts(%struct.TYPE_8__* @sub)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @setup(%struct.TYPE_8__*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_path_diriter_init(i32*, i32, i32) #1

declare dso_local i32 @git_path_diriter_next(i32*) #1

declare dso_local i32 @handle_next(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_path_diriter_free(i32*) #1

declare dso_local i32 @check_counts(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
