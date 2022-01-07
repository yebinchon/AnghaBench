; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_rev_compare_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_rev_compare_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.TYPE_8__, %struct.TYPE_5__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.commit = type { i32 }
%struct.tree = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@REV_TREE_NEW = common dso_local global i32 0, align 4
@REV_TREE_OLD = common dso_local global i32 0, align 4
@REV_TREE_DIFFERENT = common dso_local global i32 0, align 4
@REV_TREE_SAME = common dso_local global i32 0, align 4
@tree_difference = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.commit*, %struct.commit*)* @rev_compare_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rev_compare_tree(%struct.rev_info* %0, %struct.commit* %1, %struct.commit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.tree*, align 8
  %9 = alloca %struct.tree*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %5, align 8
  store %struct.commit* %1, %struct.commit** %6, align 8
  store %struct.commit* %2, %struct.commit** %7, align 8
  %10 = load %struct.commit*, %struct.commit** %6, align 8
  %11 = call %struct.tree* @get_commit_tree(%struct.commit* %10)
  store %struct.tree* %11, %struct.tree** %8, align 8
  %12 = load %struct.commit*, %struct.commit** %7, align 8
  %13 = call %struct.tree* @get_commit_tree(%struct.commit* %12)
  store %struct.tree* %13, %struct.tree** %9, align 8
  %14 = load %struct.tree*, %struct.tree** %8, align 8
  %15 = icmp ne %struct.tree* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @REV_TREE_NEW, align 4
  store i32 %17, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load %struct.tree*, %struct.tree** %9, align 8
  %20 = icmp ne %struct.tree* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @REV_TREE_OLD, align 4
  store i32 %22, i32* %4, align 4
  br label %64

23:                                               ; preds = %18
  %24 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %25 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.commit*, %struct.commit** %7, align 8
  %30 = getelementptr inbounds %struct.commit, %struct.commit* %29, i32 0, i32 0
  %31 = call i64 @get_name_decoration(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @REV_TREE_DIFFERENT, align 4
  store i32 %34, i32* %4, align 4
  br label %64

35:                                               ; preds = %28
  %36 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %37 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @REV_TREE_SAME, align 4
  store i32 %42, i32* %4, align 4
  br label %64

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i32, i32* @REV_TREE_SAME, align 4
  store i32 %45, i32* @tree_difference, align 4
  %46 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %47 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.tree*, %struct.tree** %8, align 8
  %51 = getelementptr inbounds %struct.tree, %struct.tree* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.tree*, %struct.tree** %9, align 8
  %54 = getelementptr inbounds %struct.tree, %struct.tree* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %57 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %56, i32 0, i32 0
  %58 = call i64 @diff_tree_oid(i32* %52, i32* %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %44
  %61 = load i32, i32* @REV_TREE_DIFFERENT, align 4
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %44
  %63 = load i32, i32* @tree_difference, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %60, %41, %33, %21, %16
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.tree* @get_commit_tree(%struct.commit*) #1

declare dso_local i64 @get_name_decoration(i32*) #1

declare dso_local i64 @diff_tree_oid(i32*, i32*, i8*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
