; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_UI_BotSelectMenu_UpdateGrid.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_UI_BotSelectMenu_UpdateGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_16__*, %struct.TYPE_14__*, i64**, %struct.TYPE_12__*, i32**, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32 }

@botSelectInfo = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@MAX_MODELSPERPAGE = common dso_local global i32 0, align 4
@PLAYERGRID_ROWS = common dso_local global i32 0, align 4
@PLAYERGRID_COLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@MAX_QPATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@color_red = common dso_local global i32 0, align 4
@color_blue = common dso_local global i32 0, align 4
@QMF_INACTIVE = common dso_local global i32 0, align 4
@QMF_HIGHLIGHT = common dso_local global i32 0, align 4
@QMF_PULSEIFFOCUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_BotSelectMenu_UpdateGrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_BotSelectMenu_UpdateGrid() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 0), align 8
  %5 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %6 = mul nsw i32 %4, %5
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %137, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @PLAYERGRID_ROWS, align 4
  %10 = load i32, i32* @PLAYERGRID_COLS, align 4
  %11 = mul nsw i32 %9, %10
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %142

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 1), align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %90

17:                                               ; preds = %13
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 11), align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @UI_GetBotInfoByNumber(i32 %22)
  store i8* %23, i8** %1, align 8
  %24 = load i8*, i8** %1, align 8
  %25 = call i32 @Info_ValueForKey(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %26 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 10), align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @MAX_QPATH, align 4
  %32 = call i32 @ServerPlayerIcon(i32 %25, i32* %30, i32 %31)
  %33 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 8), align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64*, i64** %33, i64 %35
  %37 = load i64*, i64** %36, align 8
  %38 = load i8*, i8** %1, align 8
  %39 = call i32 @Info_ValueForKey(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @Q_strncpyz(i64* %37, i32 %39, i32 16)
  %41 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 8), align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64*, i64** %41, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = call i32 @Q_CleanStr(i64* %45)
  %47 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 10), align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 7), align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  store i32* %51, i32** %57, align 8
  %58 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 8), align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64*, i64** %58, i64 %60
  %62 = load i64*, i64** %61, align 8
  %63 = call i64 @BotAlreadySelected(i64* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %17
  %66 = load i32, i32* @color_red, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 9), align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 4
  br label %79

72:                                               ; preds = %17
  %73 = load i32, i32* @color_blue, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 9), align 8
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i32 %73, i32* %78, align 4
  br label %79

79:                                               ; preds = %72, %65
  %80 = load i32, i32* @QMF_INACTIVE, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 6), align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %81
  store i32 %89, i32* %87, align 4
  br label %112

90:                                               ; preds = %13
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 7), align 8
  %92 = load i32, i32* %2, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* @QMF_INACTIVE, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 6), align 8
  %99 = load i32, i32* %2, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %97
  store i32 %105, i32* %103, align 4
  %106 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 8), align 8
  %107 = load i32, i32* %2, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64*, i64** %106, i64 %108
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %90, %79
  %113 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 7), align 8
  %116 = load i32, i32* %2, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, %114
  store i32 %122, i32* %120, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 7), align 8
  %124 = load i32, i32* %2, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 6), align 8
  %130 = load i32, i32* %2, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %128
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %112
  %138 = load i32, i32* %2, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %2, align 4
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %3, align 4
  br label %7

142:                                              ; preds = %7
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 2), align 8
  %144 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %145 = srem i32 %143, %144
  store i32 %145, i32* %2, align 4
  %146 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 7), align 8
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %146
  store i32 %154, i32* %152, align 8
  %155 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 6), align 8
  %158 = load i32, i32* %2, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, %156
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 3), align 4
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %167, label %194

167:                                              ; preds = %142
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 0), align 8
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load i32, i32* @QMF_INACTIVE, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 5, i32 0, i32 0), align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 5, i32 0, i32 0), align 4
  br label %179

175:                                              ; preds = %167
  %176 = load i32, i32* @QMF_INACTIVE, align 4
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 5, i32 0, i32 0), align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 5, i32 0, i32 0), align 4
  br label %179

179:                                              ; preds = %175, %170
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 0), align 8
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 3), align 4
  %182 = sub nsw i32 %181, 1
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load i32, i32* @QMF_INACTIVE, align 4
  %186 = xor i32 %185, -1
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 4, i32 0, i32 0), align 8
  %188 = and i32 %187, %186
  store i32 %188, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 4, i32 0, i32 0), align 8
  br label %193

189:                                              ; preds = %179
  %190 = load i32, i32* @QMF_INACTIVE, align 4
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 4, i32 0, i32 0), align 8
  %192 = or i32 %191, %190
  store i32 %192, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 4, i32 0, i32 0), align 8
  br label %193

193:                                              ; preds = %189, %184
  br label %201

194:                                              ; preds = %142
  %195 = load i32, i32* @QMF_INACTIVE, align 4
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 5, i32 0, i32 0), align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 5, i32 0, i32 0), align 4
  %198 = load i32, i32* @QMF_INACTIVE, align 4
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 4, i32 0, i32 0), align 8
  %200 = or i32 %199, %198
  store i32 %200, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botSelectInfo, i32 0, i32 4, i32 0, i32 0), align 8
  br label %201

201:                                              ; preds = %194, %193
  ret void
}

declare dso_local i8* @UI_GetBotInfoByNumber(i32) #1

declare dso_local i32 @ServerPlayerIcon(i32, i32*, i32) #1

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @Q_strncpyz(i64*, i32, i32) #1

declare dso_local i32 @Q_CleanStr(i64*) #1

declare dso_local i64 @BotAlreadySelected(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
