; ModuleID = '/home/carl/AnghaBench/htop/extr_Action.c_Action_pickFromVector.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Action.c_Action_pickFromVector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32*, %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@HORIZONTAL = common dso_local global i32 0, align 4
@COLS = common dso_local global i32 0, align 4
@LINES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @Action_pickFromVector(%struct.TYPE_20__* %0, %struct.TYPE_23__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %8, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %9, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @HORIZONTAL, align 4
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call %struct.TYPE_21__* @ScreenManager_new(i32 0, i32 %32, i32 0, i32 -1, i32 %33, %struct.TYPE_24__* %34, i32* %35, i32 0)
  store %struct.TYPE_21__* %36, %struct.TYPE_21__** %12, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @ScreenManager_add(%struct.TYPE_21__* %39, %struct.TYPE_23__* %40, i32 %42)
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %46 = call i32 @ScreenManager_add(%struct.TYPE_21__* %44, %struct.TYPE_23__* %45, i32 -1)
  store i32 0, i32* %15, align 4
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %48 = bitcast %struct.TYPE_23__* %47 to i32*
  %49 = call i32 @MainPanel_selectedPid(i32* %48)
  store i32 %49, i32* %16, align 4
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %62

56:                                               ; preds = %3
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  store i32 1, i32* %15, align 4
  br label %62

62:                                               ; preds = %56, %3
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %64 = call i32 @ScreenManager_run(%struct.TYPE_21__* %63, %struct.TYPE_23__** %13, i32* %14)
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  store i32 -1, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %74 = call i32 @ScreenManager_delete(%struct.TYPE_21__* %73)
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @Panel_move(%struct.TYPE_23__* %75, i32 0, i32 %76)
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %79 = load i32, i32* @COLS, align 4
  %80 = load i32, i32* @LINES, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sub nsw i32 %82, 1
  %84 = call i32 @Panel_resize(%struct.TYPE_23__* %78, i32 %79, i32 %83)
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %87 = icmp eq %struct.TYPE_23__* %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %72
  %89 = load i32, i32* %14, align 4
  %90 = icmp eq i32 %89, 13
  br i1 %90, label %91, label %109

91:                                               ; preds = %88
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %93 = call i32* @Panel_getSelected(%struct.TYPE_23__* %92)
  %94 = bitcast i32* %93 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %94, %struct.TYPE_22__** %17, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %96 = icmp ne %struct.TYPE_22__* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %105 = call i32* @Panel_getSelected(%struct.TYPE_23__* %104)
  store i32* %105, i32** %4, align 8
  br label %110

106:                                              ; preds = %97, %91
  %107 = call i32 (...) @beep()
  br label %108

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108, %88, %72
  store i32* null, i32** %4, align 8
  br label %110

110:                                              ; preds = %109, %103
  %111 = load i32*, i32** %4, align 8
  ret i32* %111
}

declare dso_local %struct.TYPE_21__* @ScreenManager_new(i32, i32, i32, i32, i32, %struct.TYPE_24__*, i32*, i32) #1

declare dso_local i32 @ScreenManager_add(%struct.TYPE_21__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @MainPanel_selectedPid(i32*) #1

declare dso_local i32 @ScreenManager_run(%struct.TYPE_21__*, %struct.TYPE_23__**, i32*) #1

declare dso_local i32 @ScreenManager_delete(%struct.TYPE_21__*) #1

declare dso_local i32 @Panel_move(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @Panel_resize(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32* @Panel_getSelected(%struct.TYPE_23__*) #1

declare dso_local i32 @beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
