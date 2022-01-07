; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_tree_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_tree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_5__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.TYPE_5__*, i32)* @tree_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @tree_delete(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__** %6, %struct.TYPE_5__*** %7, align 8
  br label %11

11:                                               ; preds = %37, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  br label %29

26:                                               ; preds = %17
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi %struct.TYPE_5__** [ %25, %23 ], [ %28, %26 ]
  store %struct.TYPE_5__** %30, %struct.TYPE_5__*** %7, align 8
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %4, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %3, align 8
  br label %89

37:                                               ; preds = %29
  br label %11

38:                                               ; preds = %11
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %8, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %9, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = call i32 @free_tree_node(%struct.TYPE_5__* %45)
  br label %47

47:                                               ; preds = %77, %38
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i1 [ false, %47 ], [ %52, %50 ]
  br i1 %54, label %55, label %78

55:                                               ; preds = %53
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  store %struct.TYPE_5__** %67, %struct.TYPE_5__*** %7, align 8
  %68 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %8, align 8
  br label %77

70:                                               ; preds = %55
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store %struct.TYPE_5__** %74, %struct.TYPE_5__*** %7, align 8
  %75 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %9, align 8
  br label %77

77:                                               ; preds = %70, %63
  br label %47

78:                                               ; preds = %53
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = icmp ne %struct.TYPE_5__* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  br label %85

83:                                               ; preds = %78
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi %struct.TYPE_5__* [ %82, %81 ], [ %84, %83 ]
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %87, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %3, align 8
  br label %89

89:                                               ; preds = %85, %35
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %90
}

declare dso_local i32 @free_tree_node(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
