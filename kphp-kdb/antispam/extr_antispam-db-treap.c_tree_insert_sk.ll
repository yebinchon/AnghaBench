; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-db-treap.c_tree_insert_sk.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-db-treap.c_tree_insert_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tree_insert_sk(%struct.TYPE_7__** %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = call i32 (...) @lrand48()
  store i32 %9, i32* %8, align 4
  br label %10

10:                                               ; preds = %38, %3
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %18, %19
  br label %21

21:                                               ; preds = %14, %10
  %22 = phi i1 [ false, %10 ], [ %20, %14 ]
  br i1 %22, label %23, label %40

23:                                               ; preds = %21
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  br label %38

34:                                               ; preds = %23
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi %struct.TYPE_7__** [ %33, %30 ], [ %37, %34 ]
  store %struct.TYPE_7__** %39, %struct.TYPE_7__*** %4, align 8
  br label %10

40:                                               ; preds = %21
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call %struct.TYPE_7__* @new_tree_node(i32 %41, i32 %42)
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %7, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @tree_split_sk(%struct.TYPE_7__** %48, %struct.TYPE_7__** %50, %struct.TYPE_7__* %52, i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %56, align 8
  ret void
}

declare dso_local i32 @lrand48(...) #1

declare dso_local %struct.TYPE_7__* @new_tree_node(i32, i32) #1

declare dso_local i32 @tree_split_sk(%struct.TYPE_7__**, %struct.TYPE_7__**, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
