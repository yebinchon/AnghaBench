; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_stress.c_test_config_stress__comments.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_stress.c_test_config_stress__comments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"config/config12\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"some.section.test2\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"some.section.test3\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"welcome\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"some.section.other\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"hello! \22 ; ; ; \00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"some.section.other2\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"cool! \22 # # # \00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"some.section.multi\00", align 1
@.str.10 = private unnamed_addr constant [78 x i8] c"hi, this is a ; multiline comment # with ;\0A special chars and other stuff !@#\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"some.section.multi2\00", align 1
@.str.12 = private unnamed_addr constant [80 x i8] c"good, this is a ; multiline comment # with ;\0A special chars and other stuff !@#\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"some.section.back\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"this is \08a phrase\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_stress__comments() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @cl_fixture(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @git_config_open_ondisk(i32** %1, i32 %2)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @assert_config_value(i32* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @assert_config_value(i32* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @assert_config_value(i32* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @assert_config_value(i32* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @assert_config_value(i32* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.10, i64 0, i64 0))
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @assert_config_value(i32* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.12, i64 0, i64 0))
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @assert_config_value(i32* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_config_free(i32* %19)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @assert_config_value(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
