; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_iheap_pop.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_iheap_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@HC = common dso_local global i32 0, align 4
@H = common dso_local global %struct.TYPE_3__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @iheap_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iheap_pop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = load i32, i32* @HC, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %88

7:                                                ; preds = %0
  %8 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %8, i64 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %7
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %17 = load i32, i32* @HC, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @HC, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %3, align 8
  %22 = load i32, i32* @HC, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %88

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %7
  store i32 1, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %71
  %28 = load i32, i32* %1, align 4
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @HC, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %82

34:                                               ; preds = %27
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @HC, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %42
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %47, i64 %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %46, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %38, %34
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %62, i64 %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sle i64 %61, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %82

71:                                               ; preds = %58
  %72 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %72, i64 %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %77, i64 %79
  store %struct.TYPE_3__* %76, %struct.TYPE_3__** %80, align 8
  %81 = load i32, i32* %2, align 4
  store i32 %81, i32* %1, align 4
  br label %27

82:                                               ; preds = %70, %33
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @H, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %84, i64 %86
  store %struct.TYPE_3__* %83, %struct.TYPE_3__** %87, align 8
  br label %88

88:                                               ; preds = %82, %24, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
