; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_aux_heap_sort.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_aux_heap_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@HN = common dso_local global i32 0, align 4
@H = common dso_local global %struct.TYPE_3__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @aux_heap_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aux_heap_sort() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = load i32, i32* @HN, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %114

9:                                                ; preds = %0
  %10 = load i32, i32* @HN, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %92, %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %95

15:                                               ; preds = %12
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %5, align 8
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %28
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %1, align 4
  br label %33

33:                                               ; preds = %15, %75
  %34 = load i32, i32* %1, align 4
  %35 = mul nsw i32 2, %34
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %86

40:                                               ; preds = %33
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %53, i64 %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %52, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %44
  %62 = load i32, i32* %2, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %44, %40
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %66, i64 %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sle i32 %65, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %86

75:                                               ; preds = %64
  %76 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %76, i64 %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %82 = load i32, i32* %1, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %81, i64 %83
  store %struct.TYPE_3__* %80, %struct.TYPE_3__** %84, align 8
  %85 = load i32, i32* %2, align 4
  store i32 %85, i32* %1, align 4
  br label %33

86:                                               ; preds = %74, %39
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %88, i64 %90
  store %struct.TYPE_3__* %87, %struct.TYPE_3__** %91, align 8
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %3, align 4
  br label %12

95:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %96

96:                                               ; preds = %111, %95
  %97 = load i32, i32* %1, align 4
  %98 = load i32, i32* @HN, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  %101 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %101, i64 %104
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %107, i64 %109
  store %struct.TYPE_3__* %106, %struct.TYPE_3__** %110, align 8
  br label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %1, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %1, align 4
  br label %96

114:                                              ; preds = %8, %96
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
