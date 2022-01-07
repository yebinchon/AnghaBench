; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_handle_ignore_submodules_arg.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_handle_ignore_submodules_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"untracked\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"bad --ignore-submodules argument: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_ignore_submodules_arg(%struct.diff_options* %0, i8* %1) #0 {
  %3 = alloca %struct.diff_options*, align 8
  %4 = alloca i8*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %6 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %9 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %12 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %19 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %47

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %27 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %46

29:                                               ; preds = %21
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %35 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 1, i32* %36, align 4
  br label %45

37:                                               ; preds = %29
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %33
  br label %46

46:                                               ; preds = %45, %25
  br label %47

47:                                               ; preds = %46, %17
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
