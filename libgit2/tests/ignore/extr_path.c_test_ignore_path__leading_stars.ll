; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_path.c_test_ignore_path__leading_stars.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_path.c_test_ignore_path__leading_stars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"attr/.gitignore\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"*/onestar\0A**/twostars\0A*/parent1/kid1/*\0A**/parent2/kid2/*\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"dir1/onestar\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"dir1/onestar/child\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"dir1/dir2/onestar\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"dir1/twostars\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"dir1/twostars/child\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"dir1/dir2/twostars\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"dir1/dir2/twostars/child\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"dir1/dir2/dir3/twostars\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"dir1/parent1/kid1/file\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"dir1/parent1/kid1/file/inside/parent\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"dir1/dir2/parent1/kid1/file\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"dir1/parent1/file\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"dir1/kid1/file\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"dir1/parent2/kid2/file\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"dir1/parent2/kid2/file/inside/parent\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"dir1/dir2/parent2/kid2/file\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"dir1/dir2/dir3/parent2/kid2/file\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"dir1/parent2/file\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"dir1/kid2/file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_path__leading_stars() #0 {
  %1 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %2 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %3 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %4 = call i32 @assert_is_ignored(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %5 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %6 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %7 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %8 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %9 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %10 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %11 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %12 = call i32 @assert_is_ignored(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %13 = call i32 @assert_is_ignored(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %14 = call i32 @assert_is_ignored(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %15 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %16 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  %17 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %18 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  %19 = call i32 @assert_is_ignored(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %20 = call i32 @assert_is_ignored(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @assert_is_ignored(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
