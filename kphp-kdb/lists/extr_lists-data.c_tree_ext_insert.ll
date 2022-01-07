; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_tree_ext_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_tree_ext_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*, i32, i32, %struct.TYPE_9__*)* @tree_ext_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @tree_ext_insert(%struct.TYPE_9__* %0, i32 %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @object_id_less(i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = call %struct.TYPE_9__* @tree_ext_insert(%struct.TYPE_9__* %25, i32 %26, i32 %27, %struct.TYPE_9__* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %31, align 8
  br label %42

32:                                               ; preds = %15
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = call %struct.TYPE_9__* @tree_ext_insert(%struct.TYPE_9__* %35, i32 %36, i32 %37, %struct.TYPE_9__* %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %41, align 8
  br label %42

42:                                               ; preds = %32, %22
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = call i32 @tree_ext_relax(%struct.TYPE_9__* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %5, align 8
  br label %73

46:                                               ; preds = %4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @object_id_equal(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %56, %57
  br label %59

59:                                               ; preds = %53, %46
  %60 = phi i1 [ false, %46 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @tree_ext_split(%struct.TYPE_9__** %64, %struct.TYPE_9__** %66, %struct.TYPE_9__* %67, i32 %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = call i32 @tree_ext_relax(%struct.TYPE_9__* %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %5, align 8
  br label %73

73:                                               ; preds = %59, %42
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %74
}

declare dso_local i64 @object_id_less(i32, i32) #1

declare dso_local i32 @tree_ext_relax(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @object_id_equal(i32, i32) #1

declare dso_local i32 @tree_ext_split(%struct.TYPE_9__**, %struct.TYPE_9__**, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
