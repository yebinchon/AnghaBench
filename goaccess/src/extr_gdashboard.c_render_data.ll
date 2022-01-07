; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_render_data.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_render_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_15__, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@COLOR_MTRC_DATA = common dso_local global i32 0, align 4
@VISITORS = common dso_local global i64 0, align 8
@HOSTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@color_selected = common dso_local global i32 0, align 4
@DASH_SPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_16__*, i32*)* @render_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_data(%struct.TYPE_17__* %0, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %2, i32** %5, align 8
  %16 = load i32, i32* @COLOR_MTRC_DATA, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.TYPE_18__* @get_color_by_item_module(i32 %16, i64 %19)
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %41, %43
  %45 = call i8* @substring(i32 %40, i32 0, i32 %44)
  store i8* %45, i8** %9, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VISITORS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %3
  %52 = load i8*, i8** %9, align 8
  %53 = call i8* @set_visitors_date(i8* %52)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @strlen(i8* %54)
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %51, %3
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HOSTS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %59
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load i32*, i32** %7, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @render_data_hosts(i32* %76, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %1, i8* %77, i32 %79)
  br label %146

81:                                               ; preds = %65, %59, %56
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @VISITORS, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i8*, i8** %8, align 8
  br label %94

92:                                               ; preds = %84
  %93 = load i8*, i8** %9, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i8* [ %91, %90 ], [ %93, %92 ]
  store i8* %95, i8** %10, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @color_selected, align 4
  %103 = call i32 @draw_header(i32* %96, i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %100, i32 %101, i32 %102)
  br label %145

104:                                              ; preds = %81
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @COLOR_PAIR(i32 %113)
  %115 = or i32 %108, %114
  %116 = call i32 @wattron(i32* %105, i32 %115)
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @VISITORS, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %104
  %127 = load i8*, i8** %8, align 8
  br label %130

128:                                              ; preds = %104
  %129 = load i8*, i8** %9, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i8* [ %127, %126 ], [ %129, %128 ]
  %132 = call i32 @mvwprintw(i32* %117, i32 %118, i32 %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %131)
  %133 = load i32*, i32** %7, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @COLOR_PAIR(i32 %141)
  %143 = or i32 %136, %142
  %144 = call i32 @wattroff(i32* %133, i32 %143)
  br label %145

145:                                              ; preds = %130, %94
  br label %146

146:                                              ; preds = %145, %75
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @VISITORS, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* %15, align 4
  br label %159

154:                                              ; preds = %146
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  br label %159

159:                                              ; preds = %154, %152
  %160 = phi i32 [ %153, %152 ], [ %158, %154 ]
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, %160
  store i32 %163, i32* %161, align 4
  %164 = load i64, i64* @DASH_SPACE, align 8
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %164
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %165, align 4
  %170 = load i8*, i8** %9, align 8
  %171 = call i32 @free(i8* %170)
  %172 = load i8*, i8** %8, align 8
  %173 = call i32 @free(i8* %172)
  ret void
}

declare dso_local %struct.TYPE_18__* @get_color_by_item_module(i32, i64) #1

declare dso_local i8* @substring(i32, i32, i32) #1

declare dso_local i8* @set_visitors_date(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @render_data_hosts(i32*, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8, i8*, i32) #1

declare dso_local i32 @draw_header(i32*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wattron(i32*, i32) #1

declare dso_local i32 @COLOR_PAIR(i32) #1

declare dso_local i32 @mvwprintw(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @wattroff(i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
