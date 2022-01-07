; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_encoding.c_test_core_encoding__encode.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_encoding.c_test_core_encoding__encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\FE\DC\BAX\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\AA\AA\FE\DC\BAX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_encoding__encode() #0 {
  %1 = alloca [100 x i8], align 16
  %2 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %3 = call i32 @git_encode_varint(i8* %2, i32 100, i64 65)
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i32
  %6 = call i32 @cl_assert(i32 %5)
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %8 = load i8, i8* %7, align 16
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 65
  %11 = zext i1 %10 to i32
  %12 = call i32 @cl_assert(i32 %11)
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %14 = call i32 @git_encode_varint(i8* %13, i32 1, i64 1)
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = call i32 @cl_assert(i32 %16)
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %19 = call i32 @memcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @cl_assert(i32 %22)
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %25 = call i32 @git_encode_varint(i8* %24, i32 100, i64 267869656)
  %26 = icmp eq i32 %25, 4
  %27 = zext i1 %26 to i32
  %28 = call i32 @cl_assert(i32 %27)
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %30 = call i32 @memcmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  %35 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %36 = call i32 @git_encode_varint(i8* %35, i32 100, i64 1489279344088)
  %37 = icmp eq i32 %36, 6
  %38 = zext i1 %37 to i32
  %39 = call i32 @cl_assert(i32 %38)
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %41 = call i32 @memcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @cl_assert(i32 %44)
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %47 = call i32 @git_encode_varint(i8* %46, i32 1, i64 1489279344088)
  %48 = icmp eq i32 %47, -1
  %49 = zext i1 %48 to i32
  %50 = call i32 @cl_assert(i32 %49)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_encode_varint(i8*, i32, i64) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
