; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_legacy_tree_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_legacy_tree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*, i64, i32)* @legacy_tree_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @legacy_tree_delete(%struct.TYPE_7__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__** %8, %struct.TYPE_7__*** %9, align 8
  br label %13

13:                                               ; preds = %37, %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @legacy_tree_equal(%struct.TYPE_7__* %17, i64 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %16, %13
  %24 = phi i1 [ false, %13 ], [ %22, %16 ]
  br i1 %24, label %25, label %41

25:                                               ; preds = %23
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = call i64 @legacy_tree_less(i64 %26, i32 %27, %struct.TYPE_7__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  br label %37

34:                                               ; preds = %25
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi %struct.TYPE_7__** [ %33, %31 ], [ %36, %34 ]
  store %struct.TYPE_7__** %38, %struct.TYPE_7__*** %9, align 8
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %5, align 8
  br label %13

41:                                               ; preds = %23
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %4, align 8
  br label %97

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %10, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %11, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = call i32 @free_ltree_node(%struct.TYPE_7__* %53)
  br label %55

55:                                               ; preds = %85, %46
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %60 = icmp ne %struct.TYPE_7__* %59, null
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i1 [ false, %55 ], [ %60, %58 ]
  br i1 %62, label %63, label %86

63:                                               ; preds = %61
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %73, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store %struct.TYPE_7__** %75, %struct.TYPE_7__*** %9, align 8
  %76 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %10, align 8
  br label %85

78:                                               ; preds = %63
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %80 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store %struct.TYPE_7__** %82, %struct.TYPE_7__*** %9, align 8
  %83 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %11, align 8
  br label %85

85:                                               ; preds = %78, %71
  br label %55

86:                                               ; preds = %61
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %88 = icmp ne %struct.TYPE_7__* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  br label %93

91:                                               ; preds = %86
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi %struct.TYPE_7__* [ %90, %89 ], [ %92, %91 ]
  %95 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %95, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %96, %struct.TYPE_7__** %4, align 8
  br label %97

97:                                               ; preds = %93, %44
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %98
}

declare dso_local i32 @legacy_tree_equal(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i64 @legacy_tree_less(i64, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @free_ltree_node(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
