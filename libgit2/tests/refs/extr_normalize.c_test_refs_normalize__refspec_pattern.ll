; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_normalize.c_test_refs_normalize__refspec_pattern.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_normalize.c_test_refs_normalize__refspec_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_REFERENCE_FORMAT_REFSPEC_PATTERN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"heads/*foo/bar\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"heads/foo*/bar\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"heads/f*o/bar\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@ONE_LEVEL_AND_REFSPEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"FOO\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"foo/bar\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"*/foo\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"foo/*/bar\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"foo/*/*\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"*/foo/*\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"*/*/foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_normalize__refspec_pattern() #0 {
  %1 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  %2 = call i32 @ensure_refname_normalized(i32 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  %4 = call i32 @ensure_refname_normalized(i32 %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  %6 = call i32 @ensure_refname_normalized(i32 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  %8 = call i32 @ensure_refname_invalid(i32 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @ONE_LEVEL_AND_REFSPEC, align 4
  %10 = call i32 @ensure_refname_normalized(i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %11 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  %12 = call i32 @ensure_refname_normalized(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32, i32* @ONE_LEVEL_AND_REFSPEC, align 4
  %14 = call i32 @ensure_refname_normalized(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %15 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  %16 = call i32 @ensure_refname_normalized(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %17 = load i32, i32* @ONE_LEVEL_AND_REFSPEC, align 4
  %18 = call i32 @ensure_refname_normalized(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %19 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  %20 = call i32 @ensure_refname_normalized(i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %21 = load i32, i32* @ONE_LEVEL_AND_REFSPEC, align 4
  %22 = call i32 @ensure_refname_normalized(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %23 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  %24 = call i32 @ensure_refname_invalid(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %25 = load i32, i32* @ONE_LEVEL_AND_REFSPEC, align 4
  %26 = call i32 @ensure_refname_normalized(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %27 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  %28 = call i32 @ensure_refname_invalid(i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %29 = load i32, i32* @ONE_LEVEL_AND_REFSPEC, align 4
  %30 = call i32 @ensure_refname_invalid(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %31 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  %32 = call i32 @ensure_refname_invalid(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %33 = load i32, i32* @ONE_LEVEL_AND_REFSPEC, align 4
  %34 = call i32 @ensure_refname_invalid(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %35 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  %36 = call i32 @ensure_refname_invalid(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %37 = load i32, i32* @ONE_LEVEL_AND_REFSPEC, align 4
  %38 = call i32 @ensure_refname_invalid(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ensure_refname_normalized(i32, i8*, i8*) #1

declare dso_local i32 @ensure_refname_invalid(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
