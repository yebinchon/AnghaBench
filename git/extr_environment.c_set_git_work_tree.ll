; ModuleID = '/home/carl/AnghaBench/git/extr_environment.c_set_git_work_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_environment.c_set_git_work_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@git_work_tree_initialized = common dso_local global i32 0, align 4
@the_repository = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [85 x i8] c"internal error: work tree has already been set\0ACurrent worktree: %s\0ANew worktree: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_git_work_tree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @git_work_tree_initialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @real_path(i8* %6)
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_repository, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @strcmp(i8* %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_repository, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @die(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  br label %20

20:                                               ; preds = %14, %5
  br label %25

21:                                               ; preds = %1
  store i32 1, i32* @git_work_tree_initialized, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_repository, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @repo_set_worktree(%struct.TYPE_3__* %22, i8* %23)
  br label %25

25:                                               ; preds = %21, %20
  ret void
}

declare dso_local i8* @real_path(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @die(i8*, i32, i8*) #1

declare dso_local i32 @repo_set_worktree(%struct.TYPE_3__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
