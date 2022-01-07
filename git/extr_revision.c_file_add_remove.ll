; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_file_add_remove.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_file_add_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { %struct.TYPE_2__, %struct.rev_info* }
%struct.TYPE_2__ = type { i32 }
%struct.rev_info = type { i32 }
%struct.object_id = type { i32 }

@REV_TREE_NEW = common dso_local global i32 0, align 4
@REV_TREE_OLD = common dso_local global i32 0, align 4
@tree_difference = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, i32, i32, %struct.object_id*, i32, i8*, i32)* @file_add_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_add_remove(%struct.diff_options* %0, i32 %1, i32 %2, %struct.object_id* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.diff_options*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rev_info*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.object_id* %3, %struct.object_id** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 43
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = load i32, i32* @REV_TREE_NEW, align 4
  br label %23

21:                                               ; preds = %7
  %22 = load i32, i32* @REV_TREE_OLD, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %15, align 4
  %25 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %26 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %25, i32 0, i32 1
  %27 = load %struct.rev_info*, %struct.rev_info** %26, align 8
  store %struct.rev_info* %27, %struct.rev_info** %16, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @tree_difference, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* @tree_difference, align 4
  %31 = load %struct.rev_info*, %struct.rev_info** %16, align 8
  %32 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i32, i32* @tree_difference, align 4
  %37 = load i32, i32* @REV_TREE_NEW, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %23
  %40 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %41 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
