; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_ltree_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_ltree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.TYPE_5__*, i32)* @ltree_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @ltree_delete(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %96

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__** %6, %struct.TYPE_5__*** %7, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %96

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %44, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ltree_x_compare(i32 %21, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  br label %36

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi %struct.TYPE_5__** [ %32, %30 ], [ %35, %33 ]
  store %struct.TYPE_5__** %37, %struct.TYPE_5__*** %7, align 8
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %4, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %3, align 8
  br label %96

44:                                               ; preds = %36
  br label %20

45:                                               ; preds = %20
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %8, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %9, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = call i32 @free_ltree_node(%struct.TYPE_5__* %52)
  br label %54

54:                                               ; preds = %84, %45
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = icmp ne %struct.TYPE_5__* %58, null
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i1 [ false, %54 ], [ %59, %57 ]
  br i1 %61, label %62, label %85

62:                                               ; preds = %60
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store %struct.TYPE_5__** %74, %struct.TYPE_5__*** %7, align 8
  %75 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %8, align 8
  br label %84

77:                                               ; preds = %62
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %79 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store %struct.TYPE_5__** %81, %struct.TYPE_5__*** %7, align 8
  %82 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %9, align 8
  br label %84

84:                                               ; preds = %77, %70
  br label %54

85:                                               ; preds = %60
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = icmp ne %struct.TYPE_5__* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  br label %92

90:                                               ; preds = %85
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi %struct.TYPE_5__* [ %89, %88 ], [ %91, %90 ]
  %94 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %95, %struct.TYPE_5__** %3, align 8
  br label %96

96:                                               ; preds = %92, %42, %18, %13
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %97
}

declare dso_local i32 @ltree_x_compare(i32, i32) #1

declare dso_local i32 @free_ltree_node(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
