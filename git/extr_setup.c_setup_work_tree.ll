; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_setup_work_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_setup_work_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@setup_work_tree.initialized = internal global i32 0, align 4
@work_tree_config_is_bogus = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"unable to set up work tree using invalid config\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"this operation must be run in a work tree\00", align 1
@GIT_WORK_TREE_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_work_tree() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @setup_work_tree.initialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %30

5:                                                ; preds = %0
  %6 = load i64, i64* @work_tree_config_is_bogus, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @die(i32 %9)
  br label %11

11:                                               ; preds = %8, %5
  %12 = call i8* (...) @get_git_work_tree()
  store i8* %12, i8** %1, align 8
  %13 = load i8*, i8** %1, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i8*, i8** %1, align 8
  %17 = call i64 @chdir_notify(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %11
  %20 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @die(i32 %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, i32* @GIT_WORK_TREE_ENVIRONMENT, align 4
  %24 = call i64 @getenv(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @GIT_WORK_TREE_ENVIRONMENT, align 4
  %28 = call i32 @setenv(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %29

29:                                               ; preds = %26, %22
  store i32 1, i32* @setup_work_tree.initialized, align 4
  br label %30

30:                                               ; preds = %29, %4
  ret void
}

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @get_git_work_tree(...) #1

declare dso_local i64 @chdir_notify(i8*) #1

declare dso_local i64 @getenv(i32) #1

declare dso_local i32 @setenv(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
