; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_mark_treesame_root_parents.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_mark_treesame_root_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }

@TREESAME = common dso_local global i32 0, align 4
@TMP_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*)* @mark_treesame_root_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_treesame_root_parents(%struct.commit* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit*, align 8
  store %struct.commit* %0, %struct.commit** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.commit*, %struct.commit** %2, align 8
  %7 = getelementptr inbounds %struct.commit, %struct.commit* %6, i32 0, i32 1
  %8 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  store %struct.commit_list* %8, %struct.commit_list** %3, align 8
  br label %9

9:                                                ; preds = %38, %1
  %10 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %11 = icmp ne %struct.commit_list* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %14 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %13, i32 0, i32 0
  %15 = load %struct.commit*, %struct.commit** %14, align 8
  store %struct.commit* %15, %struct.commit** %5, align 8
  %16 = load %struct.commit*, %struct.commit** %5, align 8
  %17 = getelementptr inbounds %struct.commit, %struct.commit* %16, i32 0, i32 1
  %18 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %19 = icmp ne %struct.commit_list* %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %12
  %21 = load %struct.commit*, %struct.commit** %5, align 8
  %22 = getelementptr inbounds %struct.commit, %struct.commit* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TREESAME, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load i32, i32* @TMP_MARK, align 4
  %30 = load %struct.commit*, %struct.commit** %5, align 8
  %31 = getelementptr inbounds %struct.commit, %struct.commit* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %28, %20, %12
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %40 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %39, i32 0, i32 1
  %41 = load %struct.commit_list*, %struct.commit_list** %40, align 8
  store %struct.commit_list* %41, %struct.commit_list** %3, align 8
  br label %9

42:                                               ; preds = %9
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
