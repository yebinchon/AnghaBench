; ModuleID = '/home/carl/AnghaBench/git/extr_match-trees.c_score_trees.c'
source_filename = "/home/carl/AnghaBench/git/extr_match-trees.c_score_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.tree_desc = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*)* @score_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @score_trees(%struct.object_id* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.tree_desc, align 8
  %6 = alloca %struct.tree_desc, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %11 = load %struct.object_id*, %struct.object_id** %3, align 8
  %12 = call i8* @fill_tree_desc_strict(%struct.tree_desc* %5, %struct.object_id* %11)
  store i8* %12, i8** %7, align 8
  %13 = load %struct.object_id*, %struct.object_id** %4, align 8
  %14 = call i8* @fill_tree_desc_strict(%struct.tree_desc* %6, %struct.object_id* %13)
  store i8* %14, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %101, %2
  %16 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %5, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %6, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %5, i32 0, i32 0
  %25 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %6, i32 0, i32 0
  %26 = call i32 @base_name_entries_compare(%struct.TYPE_3__* %24, %struct.TYPE_3__* %25)
  store i32 %26, i32* %10, align 4
  br label %40

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %5, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %10, align 4
  br label %39

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %6, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  br label %38

37:                                               ; preds = %32
  br label %102

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38, %31
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %5, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @score_missing(i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = call i32 @update_tree_entry(%struct.tree_desc* %5)
  br label %101

53:                                               ; preds = %40
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %6, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @score_missing(i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %9, align 4
  %65 = call i32 @update_tree_entry(%struct.tree_desc* %6)
  br label %100

66:                                               ; preds = %53
  %67 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %5, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %6, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = call i32 @oideq(i32* %68, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %5, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %6, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @score_differs(i32 %76, i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %9, align 4
  br label %97

85:                                               ; preds = %66
  %86 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %5, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %6, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @score_matches(i32 %88, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %85, %73
  %98 = call i32 @update_tree_entry(%struct.tree_desc* %5)
  %99 = call i32 @update_tree_entry(%struct.tree_desc* %6)
  br label %100

100:                                              ; preds = %97, %56
  br label %101

101:                                              ; preds = %100, %43
  br label %15

102:                                              ; preds = %37
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i8* @fill_tree_desc_strict(%struct.tree_desc*, %struct.object_id*) #1

declare dso_local i32 @base_name_entries_compare(%struct.TYPE_3__*, %struct.TYPE_3__*) #1

declare dso_local i64 @score_missing(i32) #1

declare dso_local i32 @update_tree_entry(%struct.tree_desc*) #1

declare dso_local i32 @oideq(i32*, i32*) #1

declare dso_local i64 @score_differs(i32, i32) #1

declare dso_local i64 @score_matches(i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
