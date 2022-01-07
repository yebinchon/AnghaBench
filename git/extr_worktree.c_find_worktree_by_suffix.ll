; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_find_worktree_by_suffix.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_find_worktree_by_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worktree = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.worktree* (%struct.worktree**, i8*)* @find_worktree_by_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.worktree* @find_worktree_by_suffix(%struct.worktree** %0, i8* %1) #0 {
  %3 = alloca %struct.worktree*, align 8
  %4 = alloca %struct.worktree**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.worktree*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.worktree** %0, %struct.worktree*** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.worktree* null, %struct.worktree** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.worktree* null, %struct.worktree** %3, align 8
  br label %76

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %65, %17
  %19 = load %struct.worktree**, %struct.worktree*** %4, align 8
  %20 = load %struct.worktree*, %struct.worktree** %19, align 8
  %21 = icmp ne %struct.worktree* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 2
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ]
  br i1 %26, label %27, label %68

27:                                               ; preds = %25
  %28 = load %struct.worktree**, %struct.worktree*** %4, align 8
  %29 = load %struct.worktree*, %struct.worktree** %28, align 8
  %30 = getelementptr inbounds %struct.worktree, %struct.worktree* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @strlen(i8* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %27
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @is_dir_sep(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %42, %27
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = call i32 @fspathcmp(i8* %52, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = load %struct.worktree**, %struct.worktree*** %4, align 8
  %61 = load %struct.worktree*, %struct.worktree** %60, align 8
  store %struct.worktree* %61, %struct.worktree** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %59, %51, %42, %39
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.worktree**, %struct.worktree*** %4, align 8
  %67 = getelementptr inbounds %struct.worktree*, %struct.worktree** %66, i32 1
  store %struct.worktree** %67, %struct.worktree*** %4, align 8
  br label %18

68:                                               ; preds = %25
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load %struct.worktree*, %struct.worktree** %6, align 8
  br label %74

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi %struct.worktree* [ %72, %71 ], [ null, %73 ]
  store %struct.worktree* %75, %struct.worktree** %3, align 8
  br label %76

76:                                               ; preds = %74, %16
  %77 = load %struct.worktree*, %struct.worktree** %3, align 8
  ret %struct.worktree* %77
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @is_dir_sep(i8 signext) #1

declare dso_local i32 @fspathcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
