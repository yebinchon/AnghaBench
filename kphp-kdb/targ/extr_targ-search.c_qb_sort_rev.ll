; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_qb_sort_rev.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_qb_sort_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qb_sort_rev(%struct.TYPE_3__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %148

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %15, i64 %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = ashr i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %23, i64 %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %134, %13
  br label %32

32:                                               ; preds = %66, %31
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %64, label %42

42:                                               ; preds = %32
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %43, i64 %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %42
  %53 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %53, i64 %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br label %62

62:                                               ; preds = %52, %42
  %63 = phi i1 [ false, %42 ], [ %61, %52 ]
  br label %64

64:                                               ; preds = %62, %32
  %65 = phi i1 [ true, %32 ], [ %63, %62 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %32

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %104, %69
  %71 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %71, i64 %73
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %102, label %80

80:                                               ; preds = %70
  %81 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %81, i64 %83
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %80
  %91 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %91, i64 %93
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp sgt i32 %97, %98
  br label %100

100:                                              ; preds = %90, %80
  %101 = phi i1 [ false, %80 ], [ %99, %90 ]
  br label %102

102:                                              ; preds = %100, %70
  %103 = phi i1 [ true, %70 ], [ %101, %100 ]
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %7, align 4
  br label %70

107:                                              ; preds = %102
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %107
  %112 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %112, i64 %114
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  store %struct.TYPE_3__* %116, %struct.TYPE_3__** %5, align 8
  %117 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %117, i64 %119
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %122, i64 %125
  store %struct.TYPE_3__* %121, %struct.TYPE_3__** %126, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %7, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %128, i64 %131
  store %struct.TYPE_3__* %127, %struct.TYPE_3__** %132, align 8
  br label %133

133:                                              ; preds = %111, %107
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %31, label %138

138:                                              ; preds = %134
  %139 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %140 = load i32, i32* %7, align 4
  call void @qb_sort_rev(%struct.TYPE_3__** %139, i32 %140)
  %141 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %141, i64 %143
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %6, align 4
  %147 = sub nsw i32 %145, %146
  call void @qb_sort_rev(%struct.TYPE_3__** %144, i32 %147)
  br label %148

148:                                              ; preds = %138, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
