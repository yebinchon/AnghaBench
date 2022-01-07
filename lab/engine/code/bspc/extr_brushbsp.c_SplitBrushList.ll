; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_brushbsp.c_SplitBrushList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_brushbsp.c_SplitBrushList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@PSIDE_BOTH = common dso_local global i32 0, align 4
@PSIDE_FACING = common dso_local global i32 0, align 4
@TEXINFO_NODE = common dso_local global i32 0, align 4
@PSIDE_FRONT = common dso_local global i32 0, align 4
@PSIDE_BACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SplitBrushList(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__** %2, %struct.TYPE_15__** %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca %struct.TYPE_15__**, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__** %2, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__** %3, %struct.TYPE_15__*** %8, align 8
  %15 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %15, align 8
  %16 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %16, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %9, align 8
  br label %18

18:                                               ; preds = %117, %4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %121

21:                                               ; preds = %18
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @PSIDE_BOTH, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %21
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SplitBrush(%struct.TYPE_15__* %29, i32 %32, %struct.TYPE_15__** %10, %struct.TYPE_15__** %11)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %35 = icmp ne %struct.TYPE_15__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %40, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %42 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %42, align 8
  br label %43

43:                                               ; preds = %36, %28
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %45 = icmp ne %struct.TYPE_15__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %52 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %52, align 8
  br label %53

53:                                               ; preds = %46, %43
  br label %117

54:                                               ; preds = %21
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %56 = call %struct.TYPE_15__* @CopyBrush(%struct.TYPE_15__* %55)
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %10, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @PSIDE_FACING, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %54
  store i32 0, i32* %14, align 4
  br label %62

62:                                               ; preds = %88, %61
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 %73
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %12, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, -2
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %68
  %84 = load i32, i32* @TEXINFO_NODE, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %68
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %62

91:                                               ; preds = %62
  br label %92

92:                                               ; preds = %91, %54
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @PSIDE_FRONT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %101, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %103 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %103, align 8
  br label %117

104:                                              ; preds = %92
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @PSIDE_BACK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  store %struct.TYPE_15__* %111, %struct.TYPE_15__** %113, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %115 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  store %struct.TYPE_15__* %114, %struct.TYPE_15__** %115, align 8
  br label %117

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %109, %97, %53
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  store %struct.TYPE_15__* %120, %struct.TYPE_15__** %9, align 8
  br label %18

121:                                              ; preds = %18
  ret void
}

declare dso_local i32 @SplitBrush(%struct.TYPE_15__*, i32, %struct.TYPE_15__**, %struct.TYPE_15__**) #1

declare dso_local %struct.TYPE_15__* @CopyBrush(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
