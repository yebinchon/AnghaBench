; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__negative_directory_ignores.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__negative_directory_ignores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ignore_status__negative_directory_ignores.test_files = internal global [9 x i8*] [i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [42 x i8] c"empty_standard_repo/parent/child1/bar.txt\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"empty_standard_repo/parent/child2/bar.txt\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"empty_standard_repo/parent/child3/foo.txt\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"empty_standard_repo/parent/child4/bar.txt\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"empty_standard_repo/parent/nested/child5/bar.txt\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"empty_standard_repo/parent/nested/child6/bar.txt\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"empty_standard_repo/parent/nested/child7/bar.txt\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"empty_standard_repo/padded_parent/child8/bar.txt\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/.gitignore\00", align 1
@.str.10 = private unnamed_addr constant [237 x i8] c"foo.txt\0Aparent/child1\0Aparent/child2\0Aparent/child4\0Aparent/nested/child5\0Anested/child6\0Anested/child7\0Apadded_parent/child8\0A!parent/child1\0A!parent/child2/bar.txt\0A!parent/child3\0A!child4\0A!nested/child5\0A!nested/child6\0A!child7/\0A!_parent/child8\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"parent/child1/bar.txt\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"parent/child2/bar.txt\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"parent/child3/foo.txt\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"parent/child4/bar.txt\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"parent/nested/child5/bar.txt\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"parent/nested/child6/bar.txt\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"parent/nested/child7/bar.txt\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"padded_parent/child8/bar.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__negative_directory_ignores() #0 {
  %1 = call i32 @make_test_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @test_ignore_status__negative_directory_ignores.test_files, i64 0, i64 0))
  %2 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([237 x i8], [237 x i8]* @.str.10, i64 0, i64 0))
  %3 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %4 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %5 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %6 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %7 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %8 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %9 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %10 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  ret void
}

declare dso_local i32 @make_test_data(i8*, i8**) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @refute_is_ignored(i8*) #1

declare dso_local i32 @assert_is_ignored(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
