; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_string.c_test_core_string__prefixncmp_icase.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_string.c_test_core_string__prefixncmp_icase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"Ab\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ac\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"Ac\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"aa\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_string__prefixncmp_icase() #0 {
  %1 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %2 = icmp eq i64 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i32 @cl_assert(i32 %3)
  %5 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @cl_assert(i32 %7)
  %9 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp slt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @cl_assert(i32 %11)
  %13 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %14 = icmp slt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  %17 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp slt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp sgt i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @cl_assert(i32 %27)
  %29 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp sgt i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  %33 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp sgt i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  %37 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @cl_assert(i32 %39)
  %41 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @cl_assert(i32 %43)
  %45 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @cl_assert(i32 %47)
  %49 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @cl_assert(i32 %51)
  %53 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %54 = icmp slt i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @cl_assert(i32 %55)
  %57 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %58 = icmp slt i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @cl_assert(i32 %59)
  %61 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %62 = icmp slt i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @cl_assert(i32 %63)
  %65 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %66 = icmp slt i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @cl_assert(i32 %67)
  %69 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %70 = icmp slt i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @cl_assert(i32 %71)
  %73 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %74 = icmp sgt i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @cl_assert(i32 %75)
  %77 = call i64 @git__prefixncmp_icase(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %78 = icmp slt i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @cl_assert(i32 %79)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git__prefixncmp_icase(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
