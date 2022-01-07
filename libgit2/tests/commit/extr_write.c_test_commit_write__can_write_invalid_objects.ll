; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__can_write_invalid_objects.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__can_write_invalid_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OPT_ENABLE_STRICT_OBJECT_CREATION = common dso_local global i32 0, align 4
@tree_id_str = common dso_local global i8* null, align 8
@parent_id_str = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"c8571bbec3a72c4bcad31648902e5a453f1adece\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"1234567890123456789012345678901234567890\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"996008340b8e68d69bf3c28d7c57fb7ec3c8e202\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"d78f660cab89d9791ca6714b57978bf2a7e709fd\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"5d80c07414e3f18792949699dfcacadf7748f361\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_write__can_write_invalid_objects() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @GIT_OPT_ENABLE_STRICT_OBJECT_CREATION, align 4
  %6 = call i32 @git_libgit2_opts(i32 %5, i32 0)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i8*, i8** @tree_id_str, align 8
  %9 = call i32 @git_oid_fromstr(i32* %2, i8* %8)
  %10 = load i8*, i8** @parent_id_str, align 8
  %11 = call i32 @git_oid_fromstr(i32* %3, i8* %10)
  %12 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @create_commit_from_ids(i32* %4, i32* %2, i32* %3)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @cl_assert_equal_oid(i32* %1, i32* %4)
  %16 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i8*, i8** @parent_id_str, align 8
  %18 = call i32 @git_oid_fromstr(i32* %3, i8* %17)
  %19 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @create_commit_from_ids(i32* %4, i32* %2, i32* %3)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = call i32 @cl_assert_equal_oid(i32* %1, i32* %4)
  %23 = load i8*, i8** @tree_id_str, align 8
  %24 = call i32 @git_oid_fromstr(i32* %2, i8* %23)
  %25 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @create_commit_from_ids(i32* %4, i32* %2, i32* %3)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = call i32 @cl_assert_equal_oid(i32* %1, i32* %4)
  %30 = load i8*, i8** @parent_id_str, align 8
  %31 = call i32 @git_oid_fromstr(i32* %2, i8* %30)
  %32 = load i8*, i8** @tree_id_str, align 8
  %33 = call i32 @git_oid_fromstr(i32* %3, i8* %32)
  %34 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %35 = call i32 @create_commit_from_ids(i32* %4, i32* %2, i32* %3)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = call i32 @cl_assert_equal_oid(i32* %1, i32* %4)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_libgit2_opts(i32, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @create_commit_from_ids(i32*, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
