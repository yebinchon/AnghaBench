; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__can_validate_objects.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__can_validate_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree_id_str = common dso_local global i8* null, align 8
@parent_id_str = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"1234567890123456789012345678901234567890\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_write__can_validate_objects() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i8*, i8** @tree_id_str, align 8
  %5 = call i32 @git_oid_fromstr(i32* %1, i8* %4)
  %6 = load i8*, i8** @parent_id_str, align 8
  %7 = call i32 @git_oid_fromstr(i32* %2, i8* %6)
  %8 = call i32 @create_commit_from_ids(i32* %3, i32* %1, i32* %2)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** @parent_id_str, align 8
  %12 = call i32 @git_oid_fromstr(i32* %2, i8* %11)
  %13 = call i32 @create_commit_from_ids(i32* %3, i32* %1, i32* %2)
  %14 = call i32 @cl_git_fail(i32 %13)
  %15 = load i8*, i8** @tree_id_str, align 8
  %16 = call i32 @git_oid_fromstr(i32* %1, i8* %15)
  %17 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @create_commit_from_ids(i32* %3, i32* %1, i32* %2)
  %19 = call i32 @cl_git_fail(i32 %18)
  %20 = load i8*, i8** @parent_id_str, align 8
  %21 = call i32 @git_oid_fromstr(i32* %1, i8* %20)
  %22 = load i8*, i8** @tree_id_str, align 8
  %23 = call i32 @git_oid_fromstr(i32* %2, i8* %22)
  %24 = call i32 @create_commit_from_ids(i32* %3, i32* %1, i32* %2)
  %25 = call i32 @cl_git_fail(i32 %24)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @create_commit_from_ids(i32*, i32*, i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
