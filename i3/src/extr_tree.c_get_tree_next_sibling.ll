; ModuleID = '/home/carl/AnghaBench/i3/src/extr_tree.c_get_tree_next_sibling.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_tree.c_get_tree_next_sibling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BEFORE = common dso_local global i64 0, align 8
@nodes_head = common dso_local global i32 0, align 4
@nodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_tree_next_sibling(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @BEFORE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @nodes_head, align 4
  %13 = load i32, i32* @nodes, align 4
  %14 = call i32* @TAILQ_PREV(i32* %11, i32 %12, i32 %13)
  br label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @nodes, align 4
  %18 = call i32* @TAILQ_NEXT(i32* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i32* [ %14, %10 ], [ %18, %15 ]
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @con_fullscreen_permits_focusing(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  store i32* %28, i32** %3, align 8
  br label %30

29:                                               ; preds = %23, %19
  store i32* null, i32** %3, align 8
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32*, i32** %3, align 8
  ret i32* %31
}

declare dso_local i32* @TAILQ_PREV(i32*, i32, i32) #1

declare dso_local i32* @TAILQ_NEXT(i32*, i32) #1

declare dso_local i64 @con_fullscreen_permits_focusing(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
