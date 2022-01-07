; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_preload_key.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_preload_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i64, i64 }

@item_tree = common dso_local global i32 0, align 4
@preload_key.T = internal global %struct.item zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.item* @preload_key(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.item*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.item*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @item_tree, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = call %struct.item* @tree_lookup(i32 %9, i32 %10, i32* %11)
  store %struct.item* %12, %struct.item** %8, align 8
  %13 = load %struct.item*, %struct.item** %8, align 8
  %14 = icmp ne %struct.item* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.item*, %struct.item** %8, align 8
  store %struct.item* %16, %struct.item** %4, align 8
  br label %25

17:                                               ; preds = %3
  store %struct.item* @preload_key.T, %struct.item** %8, align 8
  %18 = load %struct.item*, %struct.item** %8, align 8
  %19 = getelementptr inbounds %struct.item, %struct.item* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.item*, %struct.item** %8, align 8
  %21 = getelementptr inbounds %struct.item, %struct.item* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.item*, %struct.item** %8, align 8
  %23 = getelementptr inbounds %struct.item, %struct.item* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.item*, %struct.item** %8, align 8
  store %struct.item* %24, %struct.item** %4, align 8
  br label %25

25:                                               ; preds = %17, %15
  %26 = load %struct.item*, %struct.item** %4, align 8
  ret %struct.item* %26
}

declare dso_local %struct.item* @tree_lookup(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
