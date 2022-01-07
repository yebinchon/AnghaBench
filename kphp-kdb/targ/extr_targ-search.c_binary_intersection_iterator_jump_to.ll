; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_binary_intersection_iterator_jump_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_binary_intersection_iterator_jump_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binary_operation_iterator = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_5__*, i32)* }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_6__*, i32)* }

@INFTY = common dso_local global i32 0, align 4
@empty_iterator_jump_to = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binary_intersection_iterator_jump_to(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.binary_operation_iterator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to %struct.binary_operation_iterator*
  store %struct.binary_operation_iterator* %9, %struct.binary_operation_iterator** %5, align 8
  %10 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %11 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %16 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %25 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %27, align 8
  %29 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %30 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 %28(%struct.TYPE_6__* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %23, %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %40 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %42, align 8
  %44 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %45 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 %43(%struct.TYPE_5__* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %38, %34
  br label %50

50:                                               ; preds = %80, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %60 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %59, i32 0, i32 3
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %62, align 8
  %64 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %65 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 %63(%struct.TYPE_6__* %66, i32 %67)
  store i32 %68, i32* %6, align 4
  br label %80

69:                                               ; preds = %54
  %70 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %71 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %73, align 8
  %75 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %76 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %75, i32 0, i32 2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 %74(%struct.TYPE_5__* %77, i32 %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %69, %58
  br label %50

81:                                               ; preds = %50
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @INFTY, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @empty_iterator_jump_to, align 4
  %87 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %88 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %92 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
