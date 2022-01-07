; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_oid.c_test_core_oid__strcmp.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_oid.c_test_core_oid__strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@id = common dso_local global i32 0, align 4
@str_oid = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"deadbeefdeadbeefdeadbeefdeadbeefdeadbeef\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"deadbeef\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"I'm not an oid.... :)\00", align 1
@idp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"ae90f12eea699729ed0000000000000000000000\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ae90f12eea699729ed\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"ae90f12eea699729ed1\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ae90f12eea699729ec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_oid__strcmp() #0 {
  %1 = load i8*, i8** @str_oid, align 8
  %2 = call i64 @git_oid_strcmp(i32* @id, i8* %1)
  %3 = call i32 @cl_assert_equal_i(i32 0, i64 %2)
  %4 = call i64 @git_oid_strcmp(i32* @id, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %5 = icmp slt i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @cl_assert(i32 %6)
  %8 = call i64 @git_oid_strcmp(i32* @id, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp slt i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @cl_assert(i32 %10)
  %12 = call i64 @git_oid_strcmp(i32* @id, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @cl_assert_equal_i(i32 -1, i64 %12)
  %14 = call i64 @git_oid_strcmp(i32* @idp, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @cl_assert_equal_i(i32 0, i64 %14)
  %16 = call i64 @git_oid_strcmp(i32* @idp, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @cl_assert_equal_i(i32 0, i64 %16)
  %18 = call i64 @git_oid_strcmp(i32* @idp, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %19 = icmp slt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  %22 = call i64 @git_oid_strcmp(i32* @idp, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %23 = icmp sgt i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = call i64 @git_oid_strcmp(i32* @idp, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %27 = icmp slt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @cl_assert(i32 %28)
  %30 = call i64 @git_oid_strcmp(i32* @idp, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp slt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = call i64 @git_oid_strcmp(i32* @idp, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 @cl_assert_equal_i(i32 -1, i64 %34)
  ret void
}

declare dso_local i32 @cl_assert_equal_i(i32, i64) #1

declare dso_local i64 @git_oid_strcmp(i32*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
