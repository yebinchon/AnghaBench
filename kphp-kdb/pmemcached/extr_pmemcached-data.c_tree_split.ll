; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_tree_split.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_tree_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__**, %struct.TYPE_5__**, %struct.TYPE_5__*, i32*)* @tree_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_split(%struct.TYPE_5__** %0, %struct.TYPE_5__** %1, %struct.TYPE_5__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %13, align 8
  br label %41

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @node_cmp(i32* %15, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %23, align 8
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32*, i32** %8, align 8
  call void @tree_split(%struct.TYPE_5__** %24, %struct.TYPE_5__** %26, %struct.TYPE_5__* %29, i32* %30)
  br label %41

31:                                               ; preds = %14
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32*, i32** %8, align 8
  call void @tree_split(%struct.TYPE_5__** %35, %struct.TYPE_5__** %36, %struct.TYPE_5__* %39, i32* %40)
  br label %41

41:                                               ; preds = %11, %31, %21
  ret void
}

declare dso_local i64 @node_cmp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
