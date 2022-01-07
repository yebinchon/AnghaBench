; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_free_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_free_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.item = type { i32, i32, %struct.item*, %struct.item* }

@item_tree = common dso_local global %struct.TYPE_4__* null, align 8
@items_count = common dso_local global i64 0, align 8
@items_memory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_item(%struct.item* %0) #0 {
  %2 = alloca %struct.item*, align 8
  store %struct.item* %0, %struct.item** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @item_tree, align 8
  %4 = load %struct.item*, %struct.item** %2, align 8
  %5 = getelementptr inbounds %struct.item, %struct.item* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.item*, %struct.item** %2, align 8
  %8 = getelementptr inbounds %struct.item, %struct.item* %7, i32 0, i32 3
  %9 = load %struct.item*, %struct.item** %8, align 8
  %10 = call %struct.TYPE_4__* @tree_delete(%struct.TYPE_4__* %3, i32 %6, %struct.item* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** @item_tree, align 8
  %11 = load i64, i64* @items_count, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* @items_count, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @item_tree, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @item_tree, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @items_count, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  br label %27

22:                                               ; preds = %1
  %23 = load i64, i64* @items_count, align 8
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %22, %15
  %28 = phi i32 [ %21, %15 ], [ %26, %22 ]
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.item*, %struct.item** %2, align 8
  %31 = getelementptr inbounds %struct.item, %struct.item* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %27
  %35 = load %struct.item*, %struct.item** %2, align 8
  %36 = getelementptr inbounds %struct.item, %struct.item* %35, i32 0, i32 3
  %37 = load %struct.item*, %struct.item** %36, align 8
  %38 = load %struct.item*, %struct.item** %2, align 8
  %39 = getelementptr inbounds %struct.item, %struct.item* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 4, %40
  %42 = call i32 @zzfree(%struct.item* %37, i32 %41)
  %43 = load %struct.item*, %struct.item** %2, align 8
  %44 = getelementptr inbounds %struct.item, %struct.item* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 4, %45
  %47 = load i32, i32* @items_memory, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* @items_memory, align 4
  br label %49

49:                                               ; preds = %34, %27
  %50 = load %struct.item*, %struct.item** %2, align 8
  %51 = getelementptr inbounds %struct.item, %struct.item* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load %struct.item*, %struct.item** %2, align 8
  %56 = getelementptr inbounds %struct.item, %struct.item* %55, i32 0, i32 2
  %57 = load %struct.item*, %struct.item** %56, align 8
  %58 = load %struct.item*, %struct.item** %2, align 8
  %59 = getelementptr inbounds %struct.item, %struct.item* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 4, %60
  %62 = call i32 @zzfree(%struct.item* %57, i32 %61)
  %63 = load %struct.item*, %struct.item** %2, align 8
  %64 = getelementptr inbounds %struct.item, %struct.item* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 4, %65
  %67 = load i32, i32* @items_memory, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* @items_memory, align 4
  br label %69

69:                                               ; preds = %54, %49
  %70 = load %struct.item*, %struct.item** %2, align 8
  %71 = call i32 @zzfree(%struct.item* %70, i32 24)
  %72 = load i32, i32* @items_memory, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 %73, 24
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* @items_memory, align 4
  ret void
}

declare dso_local %struct.TYPE_4__* @tree_delete(%struct.TYPE_4__*, i32, %struct.item*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zzfree(%struct.item*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
