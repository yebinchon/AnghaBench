; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_other_head_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_other_head_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.worktree = type { i64 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@RESOLVE_REF_READING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @other_head_refs(i32 (i32, %struct.object_id*, i32, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32 (i32, %struct.object_id*, i32, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.worktree**, align 8
  %6 = alloca %struct.worktree**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.worktree*, align 8
  %9 = alloca %struct.object_id, align 4
  %10 = alloca i32, align 4
  store i32 (i32, %struct.object_id*, i32, i8*)* %0, i32 (i32, %struct.object_id*, i32, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = call %struct.worktree** @get_worktrees(i32 0)
  store %struct.worktree** %11, %struct.worktree*** %5, align 8
  %12 = load %struct.worktree**, %struct.worktree*** %5, align 8
  store %struct.worktree** %12, %struct.worktree*** %6, align 8
  br label %13

13:                                               ; preds = %45, %2
  %14 = load %struct.worktree**, %struct.worktree*** %6, align 8
  %15 = load %struct.worktree*, %struct.worktree** %14, align 8
  %16 = icmp ne %struct.worktree* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load %struct.worktree**, %struct.worktree*** %6, align 8
  %19 = load %struct.worktree*, %struct.worktree** %18, align 8
  store %struct.worktree* %19, %struct.worktree** %8, align 8
  %20 = load %struct.worktree*, %struct.worktree** %8, align 8
  %21 = getelementptr inbounds %struct.worktree, %struct.worktree* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %45

25:                                               ; preds = %17
  %26 = load i32, i32* @the_repository, align 4
  %27 = call i32 @get_main_ref_store(i32 %26)
  %28 = load %struct.worktree*, %struct.worktree** %8, align 8
  %29 = call i32 @worktree_ref(%struct.worktree* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @RESOLVE_REF_READING, align 4
  %31 = call i32 @refs_read_ref_full(i32 %27, i32 %29, i32 %30, %struct.object_id* %9, i32* %10)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = load i32 (i32, %struct.object_id*, i32, i8*)*, i32 (i32, %struct.object_id*, i32, i8*)** %3, align 8
  %35 = load %struct.worktree*, %struct.worktree** %8, align 8
  %36 = call i32 @worktree_ref(%struct.worktree* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %10, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 %34(i32 %36, %struct.object_id* %9, i32 %37, i8* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %33, %25
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %48

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %24
  %46 = load %struct.worktree**, %struct.worktree*** %6, align 8
  %47 = getelementptr inbounds %struct.worktree*, %struct.worktree** %46, i32 1
  store %struct.worktree** %47, %struct.worktree*** %6, align 8
  br label %13

48:                                               ; preds = %43, %13
  %49 = load %struct.worktree**, %struct.worktree*** %5, align 8
  %50 = call i32 @free_worktrees(%struct.worktree** %49)
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local %struct.worktree** @get_worktrees(i32) #1

declare dso_local i32 @refs_read_ref_full(i32, i32, i32, %struct.object_id*, i32*) #1

declare dso_local i32 @get_main_ref_store(i32) #1

declare dso_local i32 @worktree_ref(%struct.worktree*, i8*) #1

declare dso_local i32 @free_worktrees(%struct.worktree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
