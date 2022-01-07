; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_parse_submodule_params.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_parse_submodule_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"log\00", align 1
@DIFF_SUBMODULE_LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@DIFF_SUBMODULE_SHORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@DIFF_SUBMODULE_INLINE_DIFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_options*, i8*)* @parse_submodule_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_submodule_params(%struct.diff_options* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca i8*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @DIFF_SUBMODULE_LOG, align 4
  %11 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %12 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @DIFF_SUBMODULE_SHORT, align 4
  %19 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %20 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %31

21:                                               ; preds = %13
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @DIFF_SUBMODULE_INLINE_DIFF, align 4
  %27 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %28 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %30

29:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %33

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %17
  br label %32

32:                                               ; preds = %31, %9
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
