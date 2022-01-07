; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_get_range_count.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_get_range_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@index_entries = common dso_local global i32 0, align 4
@item_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_range_count(i32 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @key_cmp(i32 %19, i32* %20, i32 %21, i32* %22)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %91

26:                                               ; preds = %18, %15, %4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @get_index_pos(i32 %31, i32* %32)
  br label %34

34:                                               ; preds = %30, %29
  %35 = phi i32 [ 0, %29 ], [ %33, %30 ]
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @index_entries, align 4
  br label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @get_index_pos(i32 %41, i32* %42)
  br label %44

44:                                               ; preds = %40, %38
  %45 = phi i32 [ %39, %38 ], [ %43, %40 ]
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, -2
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, -2
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %44
  store i32 -2, i32* %5, align 4
  br label %91

52:                                               ; preds = %48
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %54 = call i32 @memset(i32* %53, i32 0, i32 12)
  %55 = load i32, i32* @item_tree, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %61 = call i32 @tree_count(i32 %55, i32 %56, i32* %57, i32 %58, i32* %59, i32* %60)
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %52
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65, %52
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @index_load_unsure(i32 %70, i32* %71, i32 %72, i32* %73)
  store i32 -2, i32* %5, align 4
  br label %91

75:                                               ; preds = %65
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %79, %80
  %82 = icmp sge i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %75, %69, %51, %25
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @key_cmp(i32, i32*, i32, i32*) #1

declare dso_local i32 @get_index_pos(i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @tree_count(i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @index_load_unsure(i32, i32*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
