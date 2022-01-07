; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_prtfile.c_NumberLeafs_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_prtfile.c_NumberLeafs_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__*, i64, %struct.TYPE_6__** }
%struct.TYPE_5__ = type { %struct.TYPE_5__**, %struct.TYPE_6__** }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@num_visclusters = common dso_local global i32 0, align 4
@num_visportals = common dso_local global i32 0, align 4
@num_solidfaces = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NumberLeafs_r(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PLANENUM_LEAF, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 -99, i32* %11, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %14, i64 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  call void @NumberLeafs_r(%struct.TYPE_6__* %16)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  call void @NumberLeafs_r(%struct.TYPE_6__* %21)
  br label %82

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32 -1, i32* %24, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 8
  br label %82

32:                                               ; preds = %22
  %33 = load i32, i32* @num_visclusters, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @num_visclusters, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @num_visclusters, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %3, align 8
  br label %41

41:                                               ; preds = %81, %32
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %82

44:                                               ; preds = %41
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = icmp eq %struct.TYPE_6__* %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %44
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = call i64 @PortalPassable(%struct.TYPE_5__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @num_visportals, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @num_visportals, align 4
  br label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @num_solidfaces, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @num_solidfaces, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %65, i64 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %3, align 8
  br label %81

68:                                               ; preds = %44
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = call i64 @PortalPassable(%struct.TYPE_5__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @num_solidfaces, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @num_solidfaces, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %78, i64 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %3, align 8
  br label %81

81:                                               ; preds = %75, %62
  br label %41

82:                                               ; preds = %9, %29, %41
  ret void
}

declare dso_local i64 @PortalPassable(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
