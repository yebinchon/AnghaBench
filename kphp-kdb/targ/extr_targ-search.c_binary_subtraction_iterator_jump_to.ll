; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_binary_subtraction_iterator_jump_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_binary_subtraction_iterator_jump_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binary_operation_iterator = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_5__*, i32)* }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_6__*, i32)* }

@INFTY = common dso_local global i32 0, align 4
@empty_iterator_jump_to = common dso_local global i32 0, align 4
@dummy_iterator_jump_to = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binary_subtraction_iterator_jump_to(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.binary_operation_iterator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.binary_operation_iterator*
  store %struct.binary_operation_iterator* %10, %struct.binary_operation_iterator** %6, align 8
  %11 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %12 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %17 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %26 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %28, align 8
  %30 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %31 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 %29(%struct.TYPE_6__* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %24, %2
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %41 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %43, align 8
  %45 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %46 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 %44(%struct.TYPE_5__* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %39, %35
  br label %51

51:                                               ; preds = %66, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @INFTY, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* @empty_iterator_jump_to, align 4
  %61 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %62 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %65 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 %63, i32* %3, align 4
  br label %100

66:                                               ; preds = %55
  %67 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %68 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %67, i32 0, i32 3
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %70, align 8
  %72 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %73 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %72, i32 0, i32 3
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 %71(%struct.TYPE_6__* %74, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %79 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %81, align 8
  %83 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %84 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 %82(%struct.TYPE_5__* %85, i32 %86)
  store i32 %87, i32* %8, align 4
  br label %51

88:                                               ; preds = %51
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @INFTY, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* @dummy_iterator_jump_to, align 4
  %94 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %95 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %99 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  store i32 %97, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %59
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
