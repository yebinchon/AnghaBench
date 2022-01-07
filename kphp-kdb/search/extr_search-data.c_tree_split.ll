; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_tree_split.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_tree_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__**, %struct.TYPE_9__**, %struct.TYPE_9__*, i64, %struct.TYPE_10__*)* @tree_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_split(%struct.TYPE_9__** %0, %struct.TYPE_9__** %1, %struct.TYPE_9__* %2, i64 %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %10, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %15, align 8
  br label %60

16:                                               ; preds = %5
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %38, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %31, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %28, %16
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %40, align 8
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  call void @tree_split(%struct.TYPE_9__** %41, %struct.TYPE_9__** %43, %struct.TYPE_9__* %46, i64 %47, %struct.TYPE_10__* %48)
  br label %60

49:                                               ; preds = %28, %22
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  call void @tree_split(%struct.TYPE_9__** %53, %struct.TYPE_9__** %54, %struct.TYPE_9__* %57, i64 %58, %struct.TYPE_10__* %59)
  br label %60

60:                                               ; preds = %13, %49, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
