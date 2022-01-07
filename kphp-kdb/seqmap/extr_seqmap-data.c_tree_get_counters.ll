; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_get_counters.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_get_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i64, %struct.item*, i64, i64, %struct.item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.item*, %struct.item*, i32*)* @tree_get_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_get_counters(%struct.item* %0, %struct.item* %1, i32* %2) #0 {
  %4 = alloca %struct.item*, align 8
  %5 = alloca %struct.item*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.item* %0, %struct.item** %4, align 8
  store %struct.item* %1, %struct.item** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.item*, %struct.item** %4, align 8
  %9 = icmp ne %struct.item* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %75

11:                                               ; preds = %3
  %12 = load %struct.item*, %struct.item** %4, align 8
  %13 = load %struct.item*, %struct.item** %5, align 8
  %14 = call i32 @item_cmp(%struct.item* %12, %struct.item* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.item*, %struct.item** %4, align 8
  %19 = getelementptr inbounds %struct.item, %struct.item* %18, i32 0, i32 1
  %20 = load %struct.item*, %struct.item** %19, align 8
  %21 = load %struct.item*, %struct.item** %5, align 8
  %22 = load i32*, i32** %6, align 8
  call void @tree_get_counters(%struct.item* %20, %struct.item* %21, i32* %22)
  br label %75

23:                                               ; preds = %11
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.item*, %struct.item** %4, align 8
  %28 = getelementptr inbounds %struct.item, %struct.item* %27, i32 0, i32 4
  %29 = load %struct.item*, %struct.item** %28, align 8
  %30 = load %struct.item*, %struct.item** %5, align 8
  %31 = load i32*, i32** %6, align 8
  call void @tree_get_counters(%struct.item* %29, %struct.item* %30, i32* %31)
  %32 = load %struct.item*, %struct.item** %4, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @tree_count_one(%struct.item* %32, i32* %33)
  br label %35

35:                                               ; preds = %26, %23
  %36 = load %struct.item*, %struct.item** %4, align 8
  %37 = getelementptr inbounds %struct.item, %struct.item* %36, i32 0, i32 1
  %38 = load %struct.item*, %struct.item** %37, align 8
  %39 = icmp ne %struct.item* %38, null
  br i1 %39, label %40, label %74

40:                                               ; preds = %35
  %41 = load %struct.item*, %struct.item** %4, align 8
  %42 = getelementptr inbounds %struct.item, %struct.item* %41, i32 0, i32 1
  %43 = load %struct.item*, %struct.item** %42, align 8
  %44 = getelementptr inbounds %struct.item, %struct.item* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.item*, %struct.item** %4, align 8
  %53 = getelementptr inbounds %struct.item, %struct.item* %52, i32 0, i32 1
  %54 = load %struct.item*, %struct.item** %53, align 8
  %55 = getelementptr inbounds %struct.item, %struct.item* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load %struct.item*, %struct.item** %4, align 8
  %64 = getelementptr inbounds %struct.item, %struct.item* %63, i32 0, i32 1
  %65 = load %struct.item*, %struct.item** %64, align 8
  %66 = getelementptr inbounds %struct.item, %struct.item* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  br label %74

74:                                               ; preds = %40, %35
  br label %75

75:                                               ; preds = %10, %74, %17
  ret void
}

declare dso_local i32 @item_cmp(%struct.item*, %struct.item*) #1

declare dso_local i32 @tree_count_one(%struct.item*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
