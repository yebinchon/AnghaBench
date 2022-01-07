; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_ltree_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_ltree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.TYPE_5__*, i32, i32)* @ltree_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @ltree_insert(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca %struct.TYPE_5__**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__** %7, %struct.TYPE_5__*** %8, align 8
  br label %12

12:                                               ; preds = %36, %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %18, %19
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i1 [ false, %12 ], [ %20, %15 ]
  br i1 %22, label %23, label %40

23:                                               ; preds = %21
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @ltree_x_less(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  br label %36

33:                                               ; preds = %23
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi %struct.TYPE_5__** [ %32, %30 ], [ %35, %33 ]
  store %struct.TYPE_5__** %37, %struct.TYPE_5__*** %8, align 8
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %4, align 8
  br label %12

40:                                               ; preds = %21
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.TYPE_5__* @new_ltree_node(i32 %41, i32 %42)
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %44, align 8
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store %struct.TYPE_5__** %47, %struct.TYPE_5__*** %9, align 8
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store %struct.TYPE_5__** %50, %struct.TYPE_5__*** %10, align 8
  br label %51

51:                                               ; preds = %75, %40
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @ltree_x_less(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %63, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store %struct.TYPE_5__** %65, %struct.TYPE_5__*** %10, align 8
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %4, align 8
  br label %75

68:                                               ; preds = %54
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store %struct.TYPE_5__** %72, %struct.TYPE_5__*** %9, align 8
  %73 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %4, align 8
  br label %75

75:                                               ; preds = %68, %61
  br label %51

76:                                               ; preds = %51
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %77, align 8
  %78 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %78, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %79
}

declare dso_local i64 @ltree_x_less(i32, i32) #1

declare dso_local %struct.TYPE_5__* @new_ltree_node(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
