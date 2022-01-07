; ModuleID = '/home/carl/AnghaBench/i3/src/extr_click.c_tiling_resize.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_click.c_tiling_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [49 x i8] c"BORDER x = %d, y = %d for con %p, window 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"checks for right >= %d\0A\00", align 1
@CLICK_DECORATION = common dso_local global i64 0, align 8
@BORDER_TOP = common dso_local global i32 0, align 4
@BORDER_LEFT = common dso_local global i32 0, align 4
@BORDER_RIGHT = common dso_local global i32 0, align 4
@BORDER_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i64, i32)* @tiling_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiling_resize(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  call void @con_border_style_rect(%struct.TYPE_15__* sret %10, %struct.TYPE_16__* %11)
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, i64, ...) @DLOG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %17, %struct.TYPE_16__* %18, i32 %21)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %26, %30
  %32 = call i32 (i8*, i64, ...) @DLOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @CLICK_DECORATION, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = load i32, i32* @BORDER_TOP, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @tiling_resize_for_border(%struct.TYPE_16__* %37, i32 %38, %struct.TYPE_14__* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %136

42:                                               ; preds = %4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %42
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %50, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %47
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %57, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %54
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %68, %70
  %72 = icmp sle i64 %64, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = load i32, i32* @BORDER_LEFT, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = call i32 @tiling_resize_for_border(%struct.TYPE_16__* %74, i32 %75, %struct.TYPE_14__* %76, i32 0)
  store i32 %77, i32* %5, align 4
  br label %136

78:                                               ; preds = %61, %54, %47, %42
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %85, %89
  %91 = icmp sge i64 %81, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %78
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %95, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %92
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %106, %108
  %110 = icmp sle i64 %102, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %99
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = load i32, i32* @BORDER_RIGHT, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %115 = call i32 @tiling_resize_for_border(%struct.TYPE_16__* %112, i32 %113, %struct.TYPE_14__* %114, i32 0)
  store i32 %115, i32* %5, align 4
  br label %136

116:                                              ; preds = %99, %92, %78
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %123, %127
  %129 = icmp sge i64 %119, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %116
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %132 = load i32, i32* @BORDER_BOTTOM, align 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %134 = call i32 @tiling_resize_for_border(%struct.TYPE_16__* %131, i32 %132, %struct.TYPE_14__* %133, i32 0)
  store i32 %134, i32* %5, align 4
  br label %136

135:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %130, %111, %73, %36
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local void @con_border_style_rect(%struct.TYPE_15__* sret, %struct.TYPE_16__*) #1

declare dso_local i32 @DLOG(i8*, i64, ...) #1

declare dso_local i32 @tiling_resize_for_border(%struct.TYPE_16__*, i32, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
