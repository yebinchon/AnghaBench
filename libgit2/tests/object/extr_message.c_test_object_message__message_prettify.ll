; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_message.c_test_object_message__message_prettify.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_message.c_test_object_message__message_prettify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Short\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Short\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"This is longer\0AAnd multiline\0A# with some comments still in\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"This is longer\0AAnd multiline\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_message__message_prettify() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = call i32 @memset(%struct.TYPE_5__* %1, i32 0, i32 8)
  %3 = call i32 @git_message_prettify(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i8 signext 35)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @cl_assert_equal_s(i8* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  %9 = call i32 @git_message_prettify(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1, i8 signext 35)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @cl_assert_equal_s(i8* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  %15 = call i32 @git_message_prettify(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0, i8 signext 35)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  %21 = call i32 @git_message_prettify(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 1, i8 signext 35)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  %27 = call i32 @git_message_prettify(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 0, i8 signext 35)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @cl_assert_equal_s(i8* %30, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  %33 = call i32 @git_message_prettify(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 1, i8 signext 35)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @cl_assert_equal_s(i8* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %38 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_message_prettify(%struct.TYPE_5__*, i8*, i32, i8 signext) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
