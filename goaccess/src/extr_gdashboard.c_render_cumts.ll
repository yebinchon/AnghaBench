; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_render_cumts.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_render_cumts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@COLOR_MTRC_CUMTS = common dso_local global i32 0, align 4
@HOSTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%9s\00", align 1
@color_selected = common dso_local global i32 0, align 4
@DASH_SRV_TM_LEN = common dso_local global i64 0, align 8
@DASH_SPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*, i32*)* @render_cumts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_cumts(%struct.TYPE_16__* %0, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %2, i32** %5, align 8
  %13 = load i32, i32* @COLOR_MTRC_CUMTS, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.TYPE_17__* @get_color_by_item_module(i32 %13, i64 %16)
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %12, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HOSTS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %3
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %99

55:                                               ; preds = %44, %3
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32*, i32** %7, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @color_selected, align 4
  %66 = call i32 @draw_header(i32* %59, i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %63, i32 %64, i32 %65)
  br label %98

67:                                               ; preds = %55
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @COLOR_PAIR(i32 %76)
  %78 = or i32 %71, %77
  %79 = call i32 @wattron(i32* %68, i32 %78)
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @mvwprintw(i32* %80, i32 %81, i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @COLOR_PAIR(i32 %94)
  %96 = or i32 %89, %95
  %97 = call i32 @wattroff(i32* %86, i32 %96)
  br label %98

98:                                               ; preds = %67, %58
  br label %99

99:                                               ; preds = %98, %54
  %100 = load i64, i64* @DASH_SRV_TM_LEN, align 8
  %101 = load i64, i64* @DASH_SPACE, align 8
  %102 = add nsw i64 %100, %101
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %102
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 4
  ret void
}

declare dso_local %struct.TYPE_17__* @get_color_by_item_module(i32, i64) #1

declare dso_local i32 @draw_header(i32*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wattron(i32*, i32) #1

declare dso_local i32 @COLOR_PAIR(i32) #1

declare dso_local i32 @mvwprintw(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @wattroff(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
