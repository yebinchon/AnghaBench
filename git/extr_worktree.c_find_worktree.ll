; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_find_worktree.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_find_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worktree = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.worktree* @find_worktree(%struct.worktree** %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.worktree*, align 8
  %5 = alloca %struct.worktree**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.worktree*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.worktree** %0, %struct.worktree*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %10, align 8
  %12 = load %struct.worktree**, %struct.worktree*** %5, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.worktree* @find_worktree_by_suffix(%struct.worktree** %12, i8* %13)
  store %struct.worktree* %14, %struct.worktree** %8, align 8
  %15 = icmp ne %struct.worktree* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.worktree*, %struct.worktree** %8, align 8
  store %struct.worktree* %17, %struct.worktree** %4, align 8
  br label %63

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @prefix_filename(i8* %22, i8* %23)
  store i8* %24, i8** %10, align 8
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @real_pathdup(i8* %26, i32 0)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @free(i8* %31)
  store %struct.worktree* null, %struct.worktree** %4, align 8
  br label %63

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %53, %33
  %35 = load %struct.worktree**, %struct.worktree*** %5, align 8
  %36 = load %struct.worktree*, %struct.worktree** %35, align 8
  %37 = icmp ne %struct.worktree* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load %struct.worktree**, %struct.worktree*** %5, align 8
  %40 = load %struct.worktree*, %struct.worktree** %39, align 8
  %41 = getelementptr inbounds %struct.worktree, %struct.worktree* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @real_path_if_valid(i32 %42)
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @fspathcmp(i8* %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %56

52:                                               ; preds = %46, %38
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.worktree**, %struct.worktree*** %5, align 8
  %55 = getelementptr inbounds %struct.worktree*, %struct.worktree** %54, i32 1
  store %struct.worktree** %55, %struct.worktree*** %5, align 8
  br label %34

56:                                               ; preds = %51, %34
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load %struct.worktree**, %struct.worktree*** %5, align 8
  %62 = load %struct.worktree*, %struct.worktree** %61, align 8
  store %struct.worktree* %62, %struct.worktree** %4, align 8
  br label %63

63:                                               ; preds = %56, %30, %16
  %64 = load %struct.worktree*, %struct.worktree** %4, align 8
  ret %struct.worktree* %64
}

declare dso_local %struct.worktree* @find_worktree_by_suffix(%struct.worktree**, i8*) #1

declare dso_local i8* @prefix_filename(i8*, i8*) #1

declare dso_local i8* @real_pathdup(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @real_path_if_valid(i32) #1

declare dso_local i32 @fspathcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
