; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_encoding.c_test_core_encoding__decode.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_encoding.c_test_core_encoding__decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\FE\DC\BAXY\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\AA\AA\FE\DC\BAXY\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\AA\AA\AA\AA\AA\AA\AA\FE\DC\BAXY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_encoding__decode() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i64 @git_decode_varint(i8* %3, i64* %2)
  %5 = icmp eq i64 %4, 65
  %6 = zext i1 %5 to i32
  %7 = call i32 @cl_assert(i32 %6)
  %8 = load i64, i64* %2, align 8
  %9 = icmp eq i64 %8, 1
  %10 = zext i1 %9 to i32
  %11 = call i32 @cl_assert(i32 %10)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = call i64 @git_decode_varint(i8* %12, i64* %2)
  %14 = icmp eq i64 %13, 267869656
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  %17 = load i64, i64* %2, align 8
  %18 = icmp eq i64 %17, 4
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  %21 = load i8*, i8** %1, align 8
  %22 = call i64 @git_decode_varint(i8* %21, i64* %2)
  %23 = icmp eq i64 %22, 1489279344088
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = load i64, i64* %2, align 8
  %27 = icmp eq i64 %26, 6
  %28 = zext i1 %27 to i32
  %29 = call i32 @cl_assert(i32 %28)
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  %30 = load i8*, i8** %1, align 8
  %31 = call i64 @git_decode_varint(i8* %30, i64* %2)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  %35 = load i64, i64* %2, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @cl_assert(i32 %37)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_decode_varint(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
