; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__delete_value_at_specific_level.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__delete_value_at_specific_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"config15\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"core.dummy2\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"config9\00", align 1
@GIT_CONFIG_LEVEL_LOCAL = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_write__delete_value_at_specific_level() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i64 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i64 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i64 @git_config_get_int32(i32* %3, i32* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i64 %7)
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 7
  %11 = zext i1 %10 to i32
  %12 = call i32 @cl_assert(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_config_free(i32* %13)
  %15 = call i64 @git_config_new(i32** %1)
  %16 = call i32 @cl_git_pass(i64 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @GIT_CONFIG_LEVEL_LOCAL, align 4
  %19 = call i64 @git_config_add_file_ondisk(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %18, i32* null, i32 0)
  %20 = call i32 @cl_git_pass(i64 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %23 = call i64 @git_config_add_file_ondisk(i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22, i32* null, i32 0)
  %24 = call i32 @cl_git_pass(i64 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %27 = call i64 @git_config_open_level(i32** %2, i32* %25, i32 %26)
  %28 = call i32 @cl_git_pass(i64 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i64 @git_config_delete_entry(i32* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i64 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_config_free(i32* %32)
  %34 = call i64 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @cl_git_pass(i64 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i64 @git_config_get_int32(i32* %3, i32* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i64, i64* @GIT_ENOTFOUND, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i64 @git_config_set_int32(i32* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %44 = call i32 @cl_git_pass(i64 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @git_config_free(i32* %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @git_config_free(i32* %47)
  ret void
}

declare dso_local i32 @cl_git_pass(i64) #1

declare dso_local i64 @git_config_open_ondisk(i32**, i8*) #1

declare dso_local i64 @git_config_get_int32(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i64 @git_config_new(i32**) #1

declare dso_local i64 @git_config_add_file_ondisk(i32*, i8*, i32, i32*, i32) #1

declare dso_local i64 @git_config_open_level(i32**, i32*, i32) #1

declare dso_local i64 @git_config_delete_entry(i32*, i8*) #1

declare dso_local i64 @git_config_set_int32(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
