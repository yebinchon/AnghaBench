; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_unload_one_branch.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_unload_one_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i64, %struct.TYPE_2__, %struct.branch*, i64 }
%struct.TYPE_2__ = type { i32* }

@cur_active_branches = common dso_local global i64 0, align 8
@max_active_branches = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@active_branches = common dso_local global %struct.branch* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unload_one_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unload_one_branch() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.branch*, align 8
  %3 = alloca %struct.branch*, align 8
  %4 = alloca %struct.branch*, align 8
  br label %5

5:                                                ; preds = %73, %0
  %6 = load i64, i64* @cur_active_branches, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i64, i64* @cur_active_branches, align 8
  %10 = load i64, i64* @max_active_branches, align 8
  %11 = icmp sge i64 %9, %10
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi i1 [ false, %5 ], [ %11, %8 ]
  br i1 %13, label %14, label %76

14:                                               ; preds = %12
  %15 = load i64, i64* @ULONG_MAX, align 8
  store i64 %15, i64* %1, align 8
  store %struct.branch* null, %struct.branch** %3, align 8
  store %struct.branch* null, %struct.branch** %4, align 8
  %16 = load %struct.branch*, %struct.branch** @active_branches, align 8
  store %struct.branch* %16, %struct.branch** %2, align 8
  br label %17

17:                                               ; preds = %33, %14
  %18 = load %struct.branch*, %struct.branch** %2, align 8
  %19 = icmp ne %struct.branch* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load %struct.branch*, %struct.branch** %2, align 8
  %22 = getelementptr inbounds %struct.branch, %struct.branch* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %1, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.branch*, %struct.branch** %3, align 8
  store %struct.branch* %27, %struct.branch** %4, align 8
  %28 = load %struct.branch*, %struct.branch** %2, align 8
  %29 = getelementptr inbounds %struct.branch, %struct.branch* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %1, align 8
  br label %31

31:                                               ; preds = %26, %20
  %32 = load %struct.branch*, %struct.branch** %2, align 8
  store %struct.branch* %32, %struct.branch** %3, align 8
  br label %33

33:                                               ; preds = %31
  %34 = load %struct.branch*, %struct.branch** %2, align 8
  %35 = getelementptr inbounds %struct.branch, %struct.branch* %34, i32 0, i32 2
  %36 = load %struct.branch*, %struct.branch** %35, align 8
  store %struct.branch* %36, %struct.branch** %2, align 8
  br label %17

37:                                               ; preds = %17
  %38 = load %struct.branch*, %struct.branch** %4, align 8
  %39 = icmp ne %struct.branch* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.branch*, %struct.branch** %4, align 8
  %42 = getelementptr inbounds %struct.branch, %struct.branch* %41, i32 0, i32 2
  %43 = load %struct.branch*, %struct.branch** %42, align 8
  store %struct.branch* %43, %struct.branch** %2, align 8
  %44 = load %struct.branch*, %struct.branch** %2, align 8
  %45 = getelementptr inbounds %struct.branch, %struct.branch* %44, i32 0, i32 2
  %46 = load %struct.branch*, %struct.branch** %45, align 8
  %47 = load %struct.branch*, %struct.branch** %4, align 8
  %48 = getelementptr inbounds %struct.branch, %struct.branch* %47, i32 0, i32 2
  store %struct.branch* %46, %struct.branch** %48, align 8
  br label %54

49:                                               ; preds = %37
  %50 = load %struct.branch*, %struct.branch** @active_branches, align 8
  store %struct.branch* %50, %struct.branch** %2, align 8
  %51 = load %struct.branch*, %struct.branch** %2, align 8
  %52 = getelementptr inbounds %struct.branch, %struct.branch* %51, i32 0, i32 2
  %53 = load %struct.branch*, %struct.branch** %52, align 8
  store %struct.branch* %53, %struct.branch** @active_branches, align 8
  br label %54

54:                                               ; preds = %49, %40
  %55 = load %struct.branch*, %struct.branch** %2, align 8
  %56 = getelementptr inbounds %struct.branch, %struct.branch* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.branch*, %struct.branch** %2, align 8
  %58 = getelementptr inbounds %struct.branch, %struct.branch* %57, i32 0, i32 2
  store %struct.branch* null, %struct.branch** %58, align 8
  %59 = load %struct.branch*, %struct.branch** %2, align 8
  %60 = getelementptr inbounds %struct.branch, %struct.branch* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %54
  %65 = load %struct.branch*, %struct.branch** %2, align 8
  %66 = getelementptr inbounds %struct.branch, %struct.branch* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @release_tree_content_recursive(i32* %68)
  %70 = load %struct.branch*, %struct.branch** %2, align 8
  %71 = getelementptr inbounds %struct.branch, %struct.branch* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %64, %54
  %74 = load i64, i64* @cur_active_branches, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* @cur_active_branches, align 8
  br label %5

76:                                               ; preds = %12
  ret void
}

declare dso_local i32 @release_tree_content_recursive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
