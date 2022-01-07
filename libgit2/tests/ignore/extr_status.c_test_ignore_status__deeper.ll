; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__deeper.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__deeper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"empty_standard_repo/foo.data\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"empty_standard_repo/bar.data\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"empty_standard_repo/dont_ignore/foo.data\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"empty_standard_repo/dont_ignore/bar.data\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/.gitignore\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"*.data\0A!dont_ignore/*.data\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"foo.data\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"bar.data\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"dont_ignore/foo.data\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"dont_ignore/bar.data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__deeper() #0 {
  %1 = alloca [5 x i8*], align 16
  %2 = bitcast [5 x i8*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false)
  %3 = bitcast i8* %2 to [5 x i8*]*
  %4 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8** %4, align 16
  %5 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8** %5, align 8
  %6 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i32 0, i32 2
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8** %6, align 16
  %7 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i32 0, i32 3
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8** %7, align 8
  %8 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 0
  %9 = call i32 @make_test_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  %10 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %11 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %12 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %13 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %14 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @make_test_data(i8*, i8**) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @assert_is_ignored(i8*) #2

declare dso_local i32 @refute_is_ignored(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
