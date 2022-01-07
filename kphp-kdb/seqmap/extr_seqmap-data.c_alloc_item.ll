; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_alloc_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_alloc_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.item = type { i32, i32, i32, i32, i32, i64, i8* }

@items_memory = common dso_local global i32 0, align 4
@items_count = common dso_local global i64 0, align 8
@item_tree = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.item* @alloc_item(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.item*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, -1
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i1 [ true, %4 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i8* @zzmalloc(i32 40)
  %20 = bitcast i8* %19 to %struct.item*
  store %struct.item* %20, %struct.item** %9, align 8
  %21 = load %struct.item*, %struct.item** %9, align 8
  %22 = call i32 @memset(%struct.item* %21, i32 0, i32 40)
  %23 = load i32, i32* @items_memory, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 40
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* @items_memory, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.item*, %struct.item** %9, align 8
  %29 = getelementptr inbounds %struct.item, %struct.item* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 4, %30
  %32 = call i8* @zzmalloc(i32 %31)
  %33 = load %struct.item*, %struct.item** %9, align 8
  %34 = getelementptr inbounds %struct.item, %struct.item* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load %struct.item*, %struct.item** %9, align 8
  %36 = getelementptr inbounds %struct.item, %struct.item* %35, i32 0, i32 6
  %37 = load i8*, i8** %36, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 4, %39
  %41 = call i32 @memcpy(i8* %37, i32* %38, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %42, 4
  %44 = load i32, i32* @items_memory, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* @items_memory, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.item*, %struct.item** %9, align 8
  %48 = getelementptr inbounds %struct.item, %struct.item* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.item*, %struct.item** %9, align 8
  %50 = getelementptr inbounds %struct.item, %struct.item* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load i64, i64* @items_count, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* @items_count, align 8
  %53 = load %struct.item*, %struct.item** %9, align 8
  %54 = getelementptr inbounds %struct.item, %struct.item* %53, i32 0, i32 2
  store i32 -1, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.item*, %struct.item** %9, align 8
  %57 = getelementptr inbounds %struct.item, %struct.item* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = call i32 (...) @lrand48()
  %59 = load %struct.item*, %struct.item** %9, align 8
  %60 = getelementptr inbounds %struct.item, %struct.item* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @item_tree, align 8
  %62 = load %struct.item*, %struct.item** %9, align 8
  %63 = call %struct.TYPE_4__* @tree_insert(%struct.TYPE_4__* %61, %struct.item* %62)
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** @item_tree, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @item_tree, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @items_count, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.item*, %struct.item** %9, align 8
  ret %struct.item* %71
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @zzmalloc(i32) #1

declare dso_local i32 @memset(%struct.item*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local %struct.TYPE_4__* @tree_insert(%struct.TYPE_4__*, %struct.item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
