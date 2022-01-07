; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-aho.c_trie_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-aho.c_trie_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_5__*, i32, %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trie_add(%struct.TYPE_5__** %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca i64*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = call i64 @trie_check(%struct.TYPE_5__* %6, i64* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %62

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %58
  br label %13

13:                                               ; preds = %27, %12
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %21, %23
  br label %25

25:                                               ; preds = %17, %13
  %26 = phi i1 [ false, %13 ], [ %24, %17 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  store %struct.TYPE_5__** %30, %struct.TYPE_5__*** %3, align 8
  br label %13

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp eq %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = call %struct.TYPE_5__* (...) @get_node()
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %37, align 8
  %38 = load i64*, i64** %4, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %35, %31
  %44 = load i64*, i64** %4, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %4, align 8
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load i64*, i64** %4, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 8
  br label %62

58:                                               ; preds = %43
  %59 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store %struct.TYPE_5__** %61, %struct.TYPE_5__*** %3, align 8
  br label %12

62:                                               ; preds = %10, %54
  ret void
}

declare dso_local i64 @trie_check(%struct.TYPE_5__*, i64*) #1

declare dso_local %struct.TYPE_5__* @get_node(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
