; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_global.c_test_config_global__lock_missing_global_config.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_global.c_test_config_global__lock_missing_global_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"home/.gitconfig\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"assertion.fail\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"boom\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_global__lock_missing_global_config() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 @p_unlink(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @git_config_open_default(i32** %1)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_config_lock(i32** %3, i32* %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_config_set_string(i32* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @git_transaction_commit(i32* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @git_transaction_free(i32* %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_config_get_entry(%struct.TYPE_4__** %2, i32* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = call i32 @git_config_entry_free(%struct.TYPE_4__* %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_config_free(i32* %27)
  %29 = call i32 @git_config_open_default(i32** %1)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_config_get_entry(%struct.TYPE_4__** %2, i32* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = call i32 @git_config_entry_free(%struct.TYPE_4__* %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_config_free(i32* %40)
  ret void
}

declare dso_local i32 @p_unlink(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_default(i32**) #1

declare dso_local i32 @git_config_lock(i32**, i32*) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_transaction_commit(i32*) #1

declare dso_local i32 @git_transaction_free(i32*) #1

declare dso_local i32 @git_config_get_entry(%struct.TYPE_4__**, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_config_entry_free(%struct.TYPE_4__*) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
