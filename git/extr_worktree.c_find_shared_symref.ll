; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_find_shared_symref.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_find_shared_symref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worktree = type { i64, i64 }
%struct.ref_store = type { i32 }

@find_shared_symref.worktrees = internal global %struct.worktree** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@REF_ISSYMREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.worktree* @find_shared_symref(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.worktree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.worktree*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ref_store*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.worktree* null, %struct.worktree** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.worktree**, %struct.worktree*** @find_shared_symref.worktrees, align 8
  %12 = icmp ne %struct.worktree** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.worktree**, %struct.worktree*** @find_shared_symref.worktrees, align 8
  %15 = call i32 @free_worktrees(%struct.worktree** %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = call %struct.worktree** @get_worktrees(i32 0)
  store %struct.worktree** %17, %struct.worktree*** @find_shared_symref.worktrees, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %81, %16
  %19 = load %struct.worktree**, %struct.worktree*** @find_shared_symref.worktrees, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.worktree*, %struct.worktree** %19, i64 %21
  %23 = load %struct.worktree*, %struct.worktree** %22, align 8
  %24 = icmp ne %struct.worktree* %23, null
  br i1 %24, label %25, label %84

25:                                               ; preds = %18
  %26 = load %struct.worktree**, %struct.worktree*** @find_shared_symref.worktrees, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.worktree*, %struct.worktree** %26, i64 %28
  %30 = load %struct.worktree*, %struct.worktree** %29, align 8
  store %struct.worktree* %30, %struct.worktree** %7, align 8
  %31 = load %struct.worktree*, %struct.worktree** %7, align 8
  %32 = getelementptr inbounds %struct.worktree, %struct.worktree* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %81

36:                                               ; preds = %25
  %37 = load %struct.worktree*, %struct.worktree** %7, align 8
  %38 = getelementptr inbounds %struct.worktree, %struct.worktree* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %41
  %46 = load %struct.worktree*, %struct.worktree** %7, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @is_worktree_being_rebased(%struct.worktree* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load %struct.worktree*, %struct.worktree** %7, align 8
  store %struct.worktree* %51, %struct.worktree** %5, align 8
  br label %84

52:                                               ; preds = %45
  %53 = load %struct.worktree*, %struct.worktree** %7, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @is_worktree_being_bisected(%struct.worktree* %53, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load %struct.worktree*, %struct.worktree** %7, align 8
  store %struct.worktree* %58, %struct.worktree** %5, align 8
  br label %84

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %41, %36
  %61 = load %struct.worktree*, %struct.worktree** %7, align 8
  %62 = call %struct.ref_store* @get_worktree_ref_store(%struct.worktree* %61)
  store %struct.ref_store* %62, %struct.ref_store** %9, align 8
  %63 = load %struct.ref_store*, %struct.ref_store** %9, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = call i8* @refs_resolve_ref_unsafe(%struct.ref_store* %63, i8* %64, i32 0, i32* null, i32* %10)
  store i8* %65, i8** %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @REF_ISSYMREF, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %60
  %71 = load i8*, i8** %8, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @strcmp(i8* %74, i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load %struct.worktree*, %struct.worktree** %7, align 8
  store %struct.worktree* %79, %struct.worktree** %5, align 8
  br label %84

80:                                               ; preds = %73, %70, %60
  br label %81

81:                                               ; preds = %80, %35
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %18

84:                                               ; preds = %78, %57, %50, %18
  %85 = load %struct.worktree*, %struct.worktree** %5, align 8
  ret %struct.worktree* %85
}

declare dso_local i32 @free_worktrees(%struct.worktree**) #1

declare dso_local %struct.worktree** @get_worktrees(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @is_worktree_being_rebased(%struct.worktree*, i8*) #1

declare dso_local i64 @is_worktree_being_bisected(%struct.worktree*, i8*) #1

declare dso_local %struct.ref_store* @get_worktree_ref_store(%struct.worktree*) #1

declare dso_local i8* @refs_resolve_ref_unsafe(%struct.ref_store*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
