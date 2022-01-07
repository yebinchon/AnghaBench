; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__ignore_all_toplevel_dirs_include_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__ignore_all_toplevel_dirs_include_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ignore_status__ignore_all_toplevel_dirs_include_files.test_files = internal global [6 x i8*] [i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [30 x i8] c"empty_standard_repo/README.md\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/src/main.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"empty_standard_repo/src/foo/foo.c\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/dist/foo.o\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"empty_standard_repo/dist/main.o\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/.gitignore\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"/*/\0A!/src\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"dist/foo.o\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"dist/main.o\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"README.md\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"src/foo.c\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"src/foo/foo.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__ignore_all_toplevel_dirs_include_files() #0 {
  %1 = call i32 @make_test_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @test_ignore_status__ignore_all_toplevel_dirs_include_files.test_files, i64 0, i64 0))
  %2 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %3 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %4 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %5 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %6 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %7 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @make_test_data(i8*, i8**) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @assert_is_ignored(i8*) #1

declare dso_local i32 @refute_is_ignored(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
