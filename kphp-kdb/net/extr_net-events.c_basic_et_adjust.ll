; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_basic_et_adjust.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_basic_et_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@et_heap = common dso_local global %struct.TYPE_4__** null, align 8
@et_heap_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @basic_et_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basic_et_adjust(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %24, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %42

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 1
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @et_heap, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  br label %42

24:                                               ; preds = %9
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @et_heap, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @et_heap, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %32
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @et_heap, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %34, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %4, align 4
  br label %6

42:                                               ; preds = %23, %6
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 2, %43
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %86, %42
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @et_heap_size, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %106

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @et_heap_size, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %49
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @et_heap, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @et_heap, align 8
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 %64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %60, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %53
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %53, %49
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @et_heap, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 %79
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sle i64 %76, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %106

86:                                               ; preds = %73
  %87 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @et_heap, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %87, i64 %89
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @et_heap, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %92, i64 %94
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %95, align 8
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @et_heap, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %97, i64 %99
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 %96, i32* %102, align 8
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %5, align 4
  %105 = shl i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %45

106:                                              ; preds = %85, %45
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @et_heap, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %108, i64 %110
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %111, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
