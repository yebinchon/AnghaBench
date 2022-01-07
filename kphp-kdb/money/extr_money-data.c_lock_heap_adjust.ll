; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_lock_heap_adjust.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_lock_heap_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@LH = common dso_local global %struct.TYPE_4__** null, align 8
@LHN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_4__*)* @lock_heap_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_heap_adjust(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %44

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @LH, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %44

26:                                               ; preds = %13
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @LH, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @LH, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 %34
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @LH, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %36, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %3, align 4
  br label %10

44:                                               ; preds = %25, %10
  br label %45

45:                                               ; preds = %87, %44
  %46 = load i32, i32* %3, align 4
  %47 = mul nsw i32 2, %46
  %48 = load i32, i32* @LHN, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %105

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = mul nsw i32 2, %51
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @LHN, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @LH, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %57, i64 %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @LH, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %64, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %56
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %73, %56, %50
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @LH, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 %79
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %105

87:                                               ; preds = %76
  %88 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @LH, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %88, i64 %90
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @LH, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 %95
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %96, align 8
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @LH, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %98, i64 %100
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 %97, i32* %103, align 4
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %3, align 4
  br label %45

105:                                              ; preds = %86, %45
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @LH, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %107, i64 %109
  store %struct.TYPE_4__* %106, %struct.TYPE_4__** %110, align 8
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
