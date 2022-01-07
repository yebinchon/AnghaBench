; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_legacy_tree_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_legacy_tree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__*, i64, i32, i32)* @legacy_tree_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @legacy_tree_insert(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__**, align 8
  %11 = alloca %struct.TYPE_6__**, align 8
  %12 = alloca %struct.TYPE_6__**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__** %9, %struct.TYPE_6__*** %10, align 8
  br label %14

14:                                               ; preds = %37, %4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %20, %21
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i1 [ false, %14 ], [ %22, %17 ]
  br i1 %24, label %25, label %41

25:                                               ; preds = %23
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = call i64 @legacy_tree_less(i64 %26, i32 %27, %struct.TYPE_6__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  br label %37

34:                                               ; preds = %25
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi %struct.TYPE_6__** [ %33, %31 ], [ %36, %34 ]
  store %struct.TYPE_6__** %38, %struct.TYPE_6__*** %10, align 8
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %5, align 8
  br label %14

41:                                               ; preds = %23
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.TYPE_6__* @new_ltree_node(i64 %42, i32 %43, i32 %44)
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %46, align 8
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store %struct.TYPE_6__** %49, %struct.TYPE_6__*** %11, align 8
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store %struct.TYPE_6__** %52, %struct.TYPE_6__*** %12, align 8
  br label %53

53:                                               ; preds = %76, %41
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = call i64 @legacy_tree_less(i64 %57, i32 %58, %struct.TYPE_6__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store %struct.TYPE_6__** %66, %struct.TYPE_6__*** %12, align 8
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %5, align 8
  br label %76

69:                                               ; preds = %56
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store %struct.TYPE_6__** %73, %struct.TYPE_6__*** %11, align 8
  %74 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %5, align 8
  br label %76

76:                                               ; preds = %69, %62
  br label %53

77:                                               ; preds = %53
  %78 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %78, align 8
  %79 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  ret %struct.TYPE_6__* %80
}

declare dso_local i64 @legacy_tree_less(i64, i32, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @new_ltree_node(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
