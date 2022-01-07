; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-db-treap.c_tree_delete_sk.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-db-treap.c_tree_delete_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_8__*, %struct.TYPE_8__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tree_delete_sk(%struct.TYPE_8__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  br label %7

7:                                                ; preds = %35, %2
  %8 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %15, %16
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi i1 [ false, %7 ], [ %17, %11 ]
  br i1 %19, label %20, label %37

20:                                               ; preds = %18
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  br label %35

31:                                               ; preds = %20
  %32 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi %struct.TYPE_8__** [ %30, %27 ], [ %34, %31 ]
  store %struct.TYPE_8__** %36, %struct.TYPE_8__*** %3, align 8
  br label %7

37:                                               ; preds = %18
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @assert(%struct.TYPE_8__* %39)
  %41 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call %struct.TYPE_8__* @tree_merge_sk(%struct.TYPE_8__* %44, %struct.TYPE_8__* %48)
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %5, align 8
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %6, align 8
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = call i32 @zfree(%struct.TYPE_8__* %55, i32 32)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %58, align 8
  %59 = load i32*, i32** %6, align 8
  ret i32* %59
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @tree_merge_sk(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @zfree(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
