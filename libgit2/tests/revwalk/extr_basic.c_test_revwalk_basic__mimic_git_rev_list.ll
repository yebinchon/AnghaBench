; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__mimic_git_rev_list.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__mimic_git_rev_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_walk = common dso_local global i32 0, align 4
@GIT_SORT_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"refs/heads/br2\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"e90810b8df3e80c413d903f631643c716887138d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"6dcf9bf7541ee10456529833502442f385010c3d\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"a4a7dce85cf63874e984719f4fdd239f5145052f\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"be3563ae3f795b2b4353bcce3a527ad0a4f7f644\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"c47800c7266a2be04c571c04d5a6614691ea99bd\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"9fd738e8f7967c078dceed8190330fc8648ee56a\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"4a202b346bb0fb0db7eff3cffeb3c70babbd2045\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"5b5b025afb0b4c913b4c338a42934a3863bf3644\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"8496071c1b46c854b31185ea97743be6a8774479\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_basic__mimic_git_rev_list() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @revwalk_basic_setup_walk(i32* null)
  %3 = load i32, i32* @_walk, align 4
  %4 = load i32, i32* @GIT_SORT_TIME, align 4
  %5 = call i32 @git_revwalk_sorting(i32 %3, i32 %4)
  %6 = load i32, i32* @_walk, align 4
  %7 = call i32 @git_revwalk_push_ref(i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @_walk, align 4
  %10 = call i32 @git_revwalk_push_ref(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @_walk, align 4
  %15 = call i32 @git_revwalk_push(i32 %14, i32* %1)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @_walk, align 4
  %18 = call i32 @git_revwalk_next(i32* %1, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @git_oid_streq(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = load i32, i32* @_walk, align 4
  %26 = call i32 @git_revwalk_next(i32* %1, i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = call i32 @git_oid_streq(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  %33 = load i32, i32* @_walk, align 4
  %34 = call i32 @git_revwalk_next(i32* %1, i32 %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = call i32 @git_oid_streq(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @cl_assert(i32 %39)
  %41 = load i32, i32* @_walk, align 4
  %42 = call i32 @git_revwalk_next(i32* %1, i32 %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = call i32 @git_oid_streq(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @cl_assert(i32 %47)
  %49 = load i32, i32* @_walk, align 4
  %50 = call i32 @git_revwalk_next(i32* %1, i32 %49)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = call i32 @git_oid_streq(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @cl_assert(i32 %55)
  %57 = load i32, i32* @_walk, align 4
  %58 = call i32 @git_revwalk_next(i32* %1, i32 %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = call i32 @git_oid_streq(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @cl_assert(i32 %63)
  %65 = load i32, i32* @_walk, align 4
  %66 = call i32 @git_revwalk_next(i32* %1, i32 %65)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = call i32 @git_oid_streq(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @cl_assert(i32 %71)
  %73 = load i32, i32* @_walk, align 4
  %74 = call i32 @git_revwalk_next(i32* %1, i32 %73)
  %75 = call i32 @cl_git_pass(i32 %74)
  %76 = call i32 @git_oid_streq(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @cl_assert(i32 %79)
  %81 = load i32, i32* @_walk, align 4
  %82 = call i32 @git_revwalk_next(i32* %1, i32 %81)
  %83 = call i32 @cl_git_pass(i32 %82)
  %84 = call i32 @git_oid_streq(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @cl_assert(i32 %87)
  %89 = load i32, i32* @_walk, align 4
  %90 = call i32 @git_revwalk_next(i32* %1, i32 %89)
  %91 = call i32 @cl_git_pass(i32 %90)
  %92 = call i32 @git_oid_streq(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @cl_assert(i32 %95)
  %97 = load i32, i32* @_walk, align 4
  %98 = call i32 @git_revwalk_next(i32* %1, i32 %97)
  %99 = load i32, i32* @GIT_ITEROVER, align 4
  %100 = call i32 @cl_git_fail_with(i32 %98, i32 %99)
  ret void
}

declare dso_local i32 @revwalk_basic_setup_walk(i32*) #1

declare dso_local i32 @git_revwalk_sorting(i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_revwalk_push_ref(i32, i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_revwalk_push(i32, i32*) #1

declare dso_local i32 @git_revwalk_next(i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_oid_streq(i32*, i8*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
