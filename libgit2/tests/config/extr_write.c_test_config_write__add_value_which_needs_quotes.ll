; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__add_value_which_needs_quotes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__add_value_which_needs_quotes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"config17\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"core.startwithspace\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" Something\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"core.endwithspace\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Something \00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"core.containscommentchar1\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"some#thing\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"core.containscommentchar2\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"some;thing\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"core.startwhithsapceandcontainsdoublequote\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" some\22thing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_write__add_value_which_needs_quotes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_config_set_string(i32* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_config_set_string(i32* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_config_set_string(i32* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_config_set_string(i32* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_config_set_string(i32* %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_config_free(i32* %25)
  %27 = call i32 @git_config_open_ondisk(i32** %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @git_config_snapshot(i32** %1, i32* %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_config_get_string(i8** %3, i32* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_config_get_string(i8** %4, i32* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @git_config_get_string(i8** %5, i32* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @git_config_get_string(i8** %6, i32* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @git_config_get_string(i8** %7, i32* %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @git_config_free(i32* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @git_config_free(i32* %59)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_config_snapshot(i32**, i32*) #1

declare dso_local i32 @git_config_get_string(i8**, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
