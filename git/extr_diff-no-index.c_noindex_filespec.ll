; ModuleID = '/home/carl/AnghaBench/git/extr_diff-no-index.c_noindex_filespec.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-no-index.c_noindex_filespec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filespec = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@null_oid = common dso_local global i32 0, align 4
@file_from_standard_input = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.diff_filespec* (i8*, i32)* @noindex_filespec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.diff_filespec* @noindex_filespec(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.diff_filespec*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.diff_filespec* @alloc_filespec(i8* %10)
  store %struct.diff_filespec* %11, %struct.diff_filespec** %5, align 8
  %12 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @fill_filespec(%struct.diff_filespec* %12, i32* @null_oid, i32 0, i32 %13)
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** @file_from_standard_input, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %20 = call i32 @populate_from_stdin(%struct.diff_filespec* %19)
  br label %21

21:                                               ; preds = %18, %9
  %22 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  ret %struct.diff_filespec* %22
}

declare dso_local %struct.diff_filespec* @alloc_filespec(i8*) #1

declare dso_local i32 @fill_filespec(%struct.diff_filespec*, i32*, i32, i32) #1

declare dso_local i32 @populate_from_stdin(%struct.diff_filespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
