; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_stage.c_test_index_stage__find_gets_first_stage.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_stage.c_test_index_stage__find_gets_first_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"one.txt\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"two.txt\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"conflicts-one.txt\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"conflicts-two.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_stage__find_gets_first_stage() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @repo_index, align 4
  %4 = call i32 @git_index_find(i64* %1, i32 %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @cl_assert(i32 %7)
  %9 = load i32, i32* @repo_index, align 4
  %10 = load i64, i64* %1, align 8
  %11 = call i32* @git_index_get_byindex(i32 %9, i64 %10)
  store i32* %11, i32** %2, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_index_entry_stage(i32* %15)
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32, i32* @repo_index, align 4
  %21 = call i32 @git_index_find(i64* %1, i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = load i32, i32* @repo_index, align 4
  %27 = load i64, i64* %1, align 8
  %28 = call i32* @git_index_get_byindex(i32 %26, i64 %27)
  store i32* %28, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_index_entry_stage(i32* %32)
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  %37 = load i32, i32* @repo_index, align 4
  %38 = call i32 @git_index_find(i64* %1, i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = load i32, i32* @repo_index, align 4
  %44 = load i64, i64* %1, align 8
  %45 = call i32* @git_index_get_byindex(i32 %43, i64 %44)
  store i32* %45, i32** %2, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @cl_assert(i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @git_index_entry_stage(i32* %49)
  %51 = icmp eq i32 %50, 1
  %52 = zext i1 %51 to i32
  %53 = call i32 @cl_assert(i32 %52)
  %54 = load i32, i32* @repo_index, align 4
  %55 = call i32 @git_index_find(i64* %1, i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @cl_assert(i32 %58)
  %60 = load i32, i32* @repo_index, align 4
  %61 = load i64, i64* %1, align 8
  %62 = call i32* @git_index_get_byindex(i32 %60, i64 %61)
  store i32* %62, i32** %2, align 8
  %63 = icmp ne i32* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @cl_assert(i32 %64)
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @git_index_entry_stage(i32* %66)
  %68 = icmp eq i32 %67, 1
  %69 = zext i1 %68 to i32
  %70 = call i32 @cl_assert(i32 %69)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_find(i64*, i32, i8*) #1

declare dso_local i32* @git_index_get_byindex(i32, i64) #1

declare dso_local i32 @git_index_entry_stage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
