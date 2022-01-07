; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_lookup.c_test_submodule_lookup__accessors.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_lookup.c_test_submodule_lookup__accessors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"480095882d281ed676fe5b863569520e54a7d5c0\00", align 1
@g_repo = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"sm_unchanged\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"/submod2_target\00", align 1
@GIT_SUBMODULE_IGNORE_NONE = common dso_local global i64 0, align 8
@GIT_SUBMODULE_UPDATE_CHECKOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"sm_changed_head\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"3d9386c507f6b093471a3e324085657a3c2b4247\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"sm_added_and_uncommited\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"sm_missing_commits\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"5e4963595a9774b90524d35a807169049de8ccad\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_lookup__accessors() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = load i64, i64* @g_repo, align 8
  %4 = call i32 @git_submodule_lookup(i32** %1, i64 %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i64 @git_submodule_owner(i32* %6)
  %8 = load i64, i64* @g_repo, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @cl_assert(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_submodule_name(i32* %12)
  %14 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_submodule_path(i32* %15)
  %17 = call i64 @git__suffixcmp(i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_submodule_url(i32* %21)
  %23 = call i64 @git__suffixcmp(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32* @git_submodule_index_id(i32* %27)
  %29 = load i8*, i8** %2, align 8
  %30 = call i64 @git_oid_streq(i32* %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32* @git_submodule_head_id(i32* %34)
  %36 = load i8*, i8** %2, align 8
  %37 = call i64 @git_oid_streq(i32* %35, i8* %36)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @cl_assert(i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32* @git_submodule_wd_id(i32* %41)
  %43 = load i8*, i8** %2, align 8
  %44 = call i64 @git_oid_streq(i32* %42, i8* %43)
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i64 @git_submodule_ignore(i32* %48)
  %50 = load i64, i64* @GIT_SUBMODULE_IGNORE_NONE, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @cl_assert(i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i64 @git_submodule_update_strategy(i32* %54)
  %56 = load i64, i64* @GIT_SUBMODULE_UPDATE_CHECKOUT, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @cl_assert(i32 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @git_submodule_free(i32* %60)
  %62 = load i64, i64* @g_repo, align 8
  %63 = call i32 @git_submodule_lookup(i32** %1, i64 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @git_submodule_name(i32* %65)
  %67 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %1, align 8
  %69 = call i32* @git_submodule_index_id(i32* %68)
  %70 = load i8*, i8** %2, align 8
  %71 = call i64 @git_oid_streq(i32* %69, i8* %70)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @cl_assert(i32 %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32* @git_submodule_head_id(i32* %75)
  %77 = load i8*, i8** %2, align 8
  %78 = call i64 @git_oid_streq(i32* %76, i8* %77)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @cl_assert(i32 %80)
  %82 = load i32*, i32** %1, align 8
  %83 = call i32* @git_submodule_wd_id(i32* %82)
  %84 = call i64 @git_oid_streq(i32* %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @cl_assert(i32 %86)
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @git_submodule_free(i32* %88)
  %90 = load i64, i64* @g_repo, align 8
  %91 = call i32 @git_submodule_lookup(i32** %1, i64 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %92 = call i32 @cl_git_pass(i32 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @git_submodule_name(i32* %93)
  %95 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32*, i32** %1, align 8
  %97 = call i32* @git_submodule_index_id(i32* %96)
  %98 = load i8*, i8** %2, align 8
  %99 = call i64 @git_oid_streq(i32* %97, i8* %98)
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @cl_assert(i32 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i32* @git_submodule_head_id(i32* %103)
  %105 = icmp eq i32* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i32 @cl_assert(i32 %106)
  %108 = load i32*, i32** %1, align 8
  %109 = call i32* @git_submodule_wd_id(i32* %108)
  %110 = load i8*, i8** %2, align 8
  %111 = call i64 @git_oid_streq(i32* %109, i8* %110)
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @cl_assert(i32 %113)
  %115 = load i32*, i32** %1, align 8
  %116 = call i32 @git_submodule_free(i32* %115)
  %117 = load i64, i64* @g_repo, align 8
  %118 = call i32 @git_submodule_lookup(i32** %1, i64 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %119 = call i32 @cl_git_pass(i32 %118)
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @git_submodule_name(i32* %120)
  %122 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  %123 = load i32*, i32** %1, align 8
  %124 = call i32* @git_submodule_index_id(i32* %123)
  %125 = load i8*, i8** %2, align 8
  %126 = call i64 @git_oid_streq(i32* %124, i8* %125)
  %127 = icmp eq i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @cl_assert(i32 %128)
  %130 = load i32*, i32** %1, align 8
  %131 = call i32* @git_submodule_head_id(i32* %130)
  %132 = load i8*, i8** %2, align 8
  %133 = call i64 @git_oid_streq(i32* %131, i8* %132)
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @cl_assert(i32 %135)
  %137 = load i32*, i32** %1, align 8
  %138 = call i32* @git_submodule_wd_id(i32* %137)
  %139 = call i64 @git_oid_streq(i32* %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @cl_assert(i32 %141)
  %143 = load i32*, i32** %1, align 8
  %144 = call i32 @git_submodule_free(i32* %143)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_submodule_lookup(i32**, i64, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_submodule_owner(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_submodule_name(i32*) #1

declare dso_local i64 @git__suffixcmp(i32, i8*) #1

declare dso_local i32 @git_submodule_path(i32*) #1

declare dso_local i32 @git_submodule_url(i32*) #1

declare dso_local i64 @git_oid_streq(i32*, i8*) #1

declare dso_local i32* @git_submodule_index_id(i32*) #1

declare dso_local i32* @git_submodule_head_id(i32*) #1

declare dso_local i32* @git_submodule_wd_id(i32*) #1

declare dso_local i64 @git_submodule_ignore(i32*) #1

declare dso_local i64 @git_submodule_update_strategy(i32*) #1

declare dso_local i32 @git_submodule_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
