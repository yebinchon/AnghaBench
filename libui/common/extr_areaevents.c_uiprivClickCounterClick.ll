; ModuleID = '/home/carl/AnghaBench/libui/common/extr_areaevents.c_uiprivClickCounterClick.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_areaevents.c_uiprivClickCounterClick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uiprivClickCounterClick(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %8
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %52
  %62 = load i64, i64* %13, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %62, %65
  %67 = load i64, i64* %14, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %61
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 6
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %15, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %16, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %93, %94
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %98, %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
