; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_controls2.c_Controls_Update.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_controls2.c_Controls_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_16__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_20__, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i64, i64* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@C_MAX = common dso_local global i32 0, align 4
@g_controls = common dso_local global %struct.TYPE_17__*** null, align 8
@QMF_HIDDEN = common dso_local global i32 0, align 4
@QMF_INACTIVE = common dso_local global i32 0, align 4
@s_controls = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@QMF_GRAYED = common dso_local global i32 0, align 4
@SCREEN_HEIGHT = common dso_local global i32 0, align 4
@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@QMF_HIGHLIGHT = common dso_local global i32 0, align 4
@QMF_HIGHLIGHT_IF_FOCUS = common dso_local global i32 0, align 4
@QMF_PULSEIFFOCUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Controls_Update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Controls_Update() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__**, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %35, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @C_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = load %struct.TYPE_17__***, %struct.TYPE_17__**** @g_controls, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %11, i64 %13
  %15 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %14, align 8
  store %struct.TYPE_17__** %15, %struct.TYPE_17__*** %4, align 8
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %31, %10
  %17 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %17, i64 %19
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %5, align 8
  %22 = icmp ne %struct.TYPE_17__* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load i32, i32* @QMF_HIDDEN, align 4
  %25 = load i32, i32* @QMF_INACTIVE, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %16

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %6

38:                                               ; preds = %6
  %39 = load %struct.TYPE_17__***, %struct.TYPE_17__**** @g_controls, align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 0), align 8
  %41 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %39, i64 %40
  %42 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %41, align 8
  store %struct.TYPE_17__** %42, %struct.TYPE_17__*** %4, align 8
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %61, %38
  %44 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %44, i64 %46
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %5, align 8
  %49 = icmp ne %struct.TYPE_17__* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load i32, i32* @QMF_GRAYED, align 4
  %52 = load i32, i32* @QMF_HIDDEN, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @QMF_INACTIVE, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %2, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %2, align 4
  br label %43

64:                                               ; preds = %43
  %65 = load i32, i32* @SCREEN_HEIGHT, align 4
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sub nsw i32 %65, %68
  %70 = sdiv i32 %69, 2
  store i32 %70, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %102, %64
  %72 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %72, i64 %74
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  store %struct.TYPE_17__* %76, %struct.TYPE_17__** %5, align 8
  %77 = icmp ne %struct.TYPE_17__* %76, null
  br i1 %77, label %78, label %108

78:                                               ; preds = %71
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  store i32 320, i32* %80, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %85 = mul nsw i32 19, %84
  %86 = sub nsw i32 320, %85
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %90 = mul nsw i32 21, %89
  %91 = add nsw i32 320, %90
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %99 = add nsw i32 %97, %98
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %78
  %103 = load i32, i32* %2, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %2, align 4
  %105 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %3, align 4
  br label %71

108:                                              ; preds = %71
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 7), align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %145

111:                                              ; preds = %108
  store i32 0, i32* %1, align 4
  br label %112

112:                                              ; preds = %127, %111
  %113 = load i32, i32* %1, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 5, i32 0), align 8
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %112
  %117 = load i32, i32* @QMF_GRAYED, align 4
  %118 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 5, i32 2), align 8
  %119 = load i32, i32* %1, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to %struct.TYPE_17__*
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %117
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %116
  %128 = load i32, i32* %1, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %1, align 4
  br label %112

130:                                              ; preds = %112
  %131 = load i32, i32* @QMF_GRAYED, align 4
  %132 = xor i32 %131, -1
  %133 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 5, i32 2), align 8
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 5, i32 1), align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to %struct.TYPE_17__*
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, %132
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* @QMF_GRAYED, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 6, i32 0, i32 0), align 8
  %144 = and i32 %143, %142
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 6, i32 0, i32 0), align 8
  br label %251

145:                                              ; preds = %108
  store i32 0, i32* %1, align 4
  br label %146

146:                                              ; preds = %162, %145
  %147 = load i32, i32* %1, align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 5, i32 0), align 8
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %146
  %151 = load i32, i32* @QMF_GRAYED, align 4
  %152 = xor i32 %151, -1
  %153 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 5, i32 2), align 8
  %154 = load i32, i32* %1, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to %struct.TYPE_17__*
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %152
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %150
  %163 = load i32, i32* %1, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %1, align 4
  br label %146

165:                                              ; preds = %146
  %166 = load i32, i32* @QMF_GRAYED, align 4
  %167 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @QMF_HIGHLIGHT_IF_FOCUS, align 4
  %170 = or i32 %168, %169
  %171 = xor i32 %170, -1
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 3, i32 0, i32 0), align 8
  %173 = and i32 %172, %171
  store i32 %173, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 3, i32 0, i32 0), align 8
  %174 = load i32, i32* @QMF_GRAYED, align 4
  %175 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @QMF_HIGHLIGHT_IF_FOCUS, align 4
  %178 = or i32 %176, %177
  %179 = xor i32 %178, -1
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 4, i32 0, i32 0), align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 4, i32 0, i32 0), align 4
  %182 = load i32, i32* @QMF_GRAYED, align 4
  %183 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @QMF_HIGHLIGHT_IF_FOCUS, align 4
  %186 = or i32 %184, %185
  %187 = xor i32 %186, -1
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 2, i32 0, i32 0), align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 2, i32 0, i32 0), align 4
  %190 = load i32, i32* @QMF_GRAYED, align 4
  %191 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @QMF_HIGHLIGHT_IF_FOCUS, align 4
  %194 = or i32 %192, %193
  %195 = xor i32 %194, -1
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 1, i32 0, i32 0), align 8
  %197 = and i32 %196, %195
  store i32 %197, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 1, i32 0, i32 0), align 8
  %198 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 3, i32 0, i32 0), align 8
  %200 = or i32 %199, %198
  store i32 %200, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 3, i32 0, i32 0), align 8
  %201 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 4, i32 0, i32 0), align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 4, i32 0, i32 0), align 4
  %204 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %205 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 2, i32 0, i32 0), align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 2, i32 0, i32 0), align 4
  %207 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 1, i32 0, i32 0), align 8
  %209 = or i32 %208, %207
  store i32 %209, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 1, i32 0, i32 0), align 8
  %210 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 0), align 8
  switch i64 %210, label %251 [
    i64 129, label %211
    i64 131, label %221
    i64 128, label %231
    i64 130, label %241
  ]

211:                                              ; preds = %165
  %212 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %213 = xor i32 %212, -1
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 4, i32 0, i32 0), align 4
  %215 = and i32 %214, %213
  store i32 %215, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 4, i32 0, i32 0), align 4
  %216 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %217 = load i32, i32* @QMF_HIGHLIGHT_IF_FOCUS, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 4, i32 0, i32 0), align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 4, i32 0, i32 0), align 4
  br label %251

221:                                              ; preds = %165
  %222 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %223 = xor i32 %222, -1
  %224 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 3, i32 0, i32 0), align 8
  %225 = and i32 %224, %223
  store i32 %225, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 3, i32 0, i32 0), align 8
  %226 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %227 = load i32, i32* @QMF_HIGHLIGHT_IF_FOCUS, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 3, i32 0, i32 0), align 8
  %230 = or i32 %229, %228
  store i32 %230, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 3, i32 0, i32 0), align 8
  br label %251

231:                                              ; preds = %165
  %232 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %233 = xor i32 %232, -1
  %234 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 2, i32 0, i32 0), align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 2, i32 0, i32 0), align 4
  %236 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %237 = load i32, i32* @QMF_HIGHLIGHT_IF_FOCUS, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 2, i32 0, i32 0), align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 2, i32 0, i32 0), align 4
  br label %251

241:                                              ; preds = %165
  %242 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %243 = xor i32 %242, -1
  %244 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 1, i32 0, i32 0), align 8
  %245 = and i32 %244, %243
  store i32 %245, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 1, i32 0, i32 0), align 8
  %246 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %247 = load i32, i32* @QMF_HIGHLIGHT_IF_FOCUS, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 1, i32 0, i32 0), align 8
  %250 = or i32 %249, %248
  store i32 %250, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @s_controls, i32 0, i32 1, i32 0, i32 0), align 8
  br label %251

251:                                              ; preds = %130, %165, %241, %231, %221, %211
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
