; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_uses.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_uses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_15__**, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32 }

@RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @uses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uses(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %87, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %13 = call i32 @NELEMS(%struct.TYPE_11__** %12)
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %90

15:                                               ; preds = %7
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %19, i64 %21
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %25, label %86

25:                                               ; preds = %15
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %29, i64 %31
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %86

38:                                               ; preds = %25
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %45, i64 %47
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %50, align 8
  %52 = load i64, i64* @RX, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %51, i64 %52
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %41, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %38
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %68, i64 %70
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %73, align 8
  %75 = load i64, i64* @RX, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %74, i64 %75
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %64, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %91

86:                                               ; preds = %61, %38, %25, %15
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %7

90:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %85
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @NELEMS(%struct.TYPE_11__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
