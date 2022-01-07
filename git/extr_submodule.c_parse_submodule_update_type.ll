; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_parse_submodule_update_type.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_parse_submodule_update_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@SM_UPDATE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@SM_UPDATE_CHECKOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"rebase\00", align 1
@SM_UPDATE_REBASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@SM_UPDATE_MERGE = common dso_local global i32 0, align 4
@SM_UPDATE_COMMAND = common dso_local global i32 0, align 4
@SM_UPDATE_UNSPECIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_submodule_update_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @SM_UPDATE_NONE, align 4
  store i32 %8, i32* %2, align 4
  br label %36

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @SM_UPDATE_CHECKOUT, align 4
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @SM_UPDATE_REBASE, align 4
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @SM_UPDATE_MERGE, align 4
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 33
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @SM_UPDATE_COMMAND, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @SM_UPDATE_UNSPECIFIED, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %32, %25, %19, %13, %7
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
