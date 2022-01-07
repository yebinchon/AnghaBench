; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_multiple_union_iterator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_multiple_union_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.union_iterator = type { i64, %struct.TYPE_4__** }

@multiple_union_jump_to = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @build_multiple_union_iterator(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.union_iterator*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = bitcast %struct.TYPE_4__* %10 to %struct.union_iterator*
  store %struct.union_iterator* %11, %struct.union_iterator** %3, align 8
  %12 = load %struct.union_iterator*, %struct.union_iterator** %3, align 8
  %13 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load i32, i32* @multiple_union_jump_to, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* %4, align 8
  %19 = ashr i64 %18, 1
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %99, %1
  %21 = load i64, i64* %5, align 8
  %22 = icmp sge i64 %21, 1
  br i1 %22, label %23, label %102

23:                                               ; preds = %20
  %24 = load %struct.union_iterator*, %struct.union_iterator** %3, align 8
  %25 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %6, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i64, i64* %5, align 8
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %23, %79
  %35 = load i64, i64* %8, align 8
  %36 = shl i64 %35, 1
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %92

41:                                               ; preds = %34
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load %struct.union_iterator*, %struct.union_iterator** %3, align 8
  %47 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.union_iterator*, %struct.union_iterator** %3, align 8
  %55 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add nsw i64 %57, 1
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %53, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %45
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %64, %45, %41
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.union_iterator*, %struct.union_iterator** %3, align 8
  %70 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %71, i64 %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp sle i32 %68, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %92

79:                                               ; preds = %67
  %80 = load %struct.union_iterator*, %struct.union_iterator** %3, align 8
  %81 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %82, i64 %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load %struct.union_iterator*, %struct.union_iterator** %3, align 8
  %87 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %88, i64 %89
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %90, align 8
  %91 = load i64, i64* %9, align 8
  store i64 %91, i64* %8, align 8
  br label %34

92:                                               ; preds = %78, %40
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = load %struct.union_iterator*, %struct.union_iterator** %3, align 8
  %95 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %96, i64 %97
  store %struct.TYPE_4__* %93, %struct.TYPE_4__** %98, align 8
  br label %99

99:                                               ; preds = %92
  %100 = load i64, i64* %5, align 8
  %101 = add nsw i64 %100, -1
  store i64 %101, i64* %5, align 8
  br label %20

102:                                              ; preds = %20
  %103 = load %struct.union_iterator*, %struct.union_iterator** %3, align 8
  %104 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %105, i64 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
