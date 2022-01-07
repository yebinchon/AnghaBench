; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_bsp.c_R_LoadNodesAndLeafs.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_bsp.c_R_LoadNodesAndLeafs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_11__* (i32, i32)*, i32 (i32, i8*, i32)* }
%struct.TYPE_11__ = type { i32, i8*, i8*, i8*, i8**, i8**, %struct.TYPE_11__**, i32, i64 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_11__*, i64, i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32*, i32, i32*, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32*, i32* }

@fileBase = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"LoadMap: funny lump size in %s\00", align 1
@s_worldData = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@h_low = common dso_local global i32 0, align 4
@CONTENTS_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_12__*)* @R_LoadNodesAndLeafs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_LoadNodesAndLeafs(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %13 = load i64, i64* @fileBase, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %8, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = urem i64 %23, 32
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = urem i64 %30, 32
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26, %2
  %34 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ri, i32 0, i32 1), align 8
  %35 = load i32, i32* @ERR_DROP, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_worldData, i32 0, i32 5), align 8
  %37 = call i32 %34(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 32
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 32
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  %51 = load %struct.TYPE_11__* (i32, i32)*, %struct.TYPE_11__* (i32, i32)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ri, i32 0, i32 0), align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 72
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @h_low, align 4
  %59 = call %struct.TYPE_11__* %51(i32 %57, i32 %58)
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %10, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_worldData, i32 0, i32 3), align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_worldData, i32 0, i32 0), align 8
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_worldData, i32 0, i32 1), align 4
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %166, %38
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %173

69:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %102, %69
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 3
  br i1 %72, label %73, label %105

73:                                               ; preds = %70
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @LittleLong(i32 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 5
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  store i8* %81, i8** %87, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @LittleLong(i32 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 4
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  store i8* %95, i8** %101, align 8
  br label %102

102:                                              ; preds = %73
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %70

105:                                              ; preds = %70
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @LittleLong(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %7, align 4
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_worldData, i32 0, i32 4), align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 8
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* @CONTENTS_NODE, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 7
  store i32 %117, i32* %119, align 8
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %162, %105
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 2
  br i1 %122, label %123, label %165

123:                                              ; preds = %120
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @LittleLong(i32 %130)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %123
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_worldData, i32 0, i32 3), align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 %138
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 6
  %142 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %142, i64 %144
  store %struct.TYPE_11__* %139, %struct.TYPE_11__** %145, align 8
  br label %161

146:                                              ; preds = %123
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_worldData, i32 0, i32 3), align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i64 %149
  %151 = load i32, i32* %7, align 4
  %152 = sub nsw i32 -1, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i64 %153
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 6
  %157 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %157, i64 %159
  store %struct.TYPE_11__* %154, %struct.TYPE_11__** %160, align 8
  br label %161

161:                                              ; preds = %146, %135
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %120

165:                                              ; preds = %120
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 1
  store %struct.TYPE_13__* %170, %struct.TYPE_13__** %8, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 1
  store %struct.TYPE_11__* %172, %struct.TYPE_11__** %10, align 8
  br label %65

173:                                              ; preds = %65
  %174 = load i64, i64* @fileBase, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %174, %177
  %179 = inttoptr i64 %178 to i8*
  %180 = bitcast i8* %179 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %180, %struct.TYPE_14__** %9, align 8
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %258, %173
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %265

185:                                              ; preds = %181
  store i32 0, i32* %6, align 4
  br label %186

186:                                              ; preds = %218, %185
  %187 = load i32, i32* %6, align 4
  %188 = icmp slt i32 %187, 3
  br i1 %188, label %189, label %221

189:                                              ; preds = %186
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 5
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @LittleLong(i32 %196)
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 5
  %200 = load i8**, i8*** %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  store i8* %197, i8** %203, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 4
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = call i8* @LittleLong(i32 %210)
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 4
  %214 = load i8**, i8*** %213, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %214, i64 %216
  store i8* %211, i8** %217, align 8
  br label %218

218:                                              ; preds = %189
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %6, align 4
  br label %186

221:                                              ; preds = %186
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = call i8* @LittleLong(i32 %224)
  %226 = ptrtoint i8* %225 to i32
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i8* @LittleLong(i32 %231)
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 3
  store i8* %232, i8** %234, align 8
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_worldData, i32 0, i32 2), align 8
  %239 = icmp sge i32 %237, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %221
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_worldData, i32 0, i32 2), align 8
  br label %245

245:                                              ; preds = %240, %221
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @LittleLong(i32 %248)
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 2
  store i8* %249, i8** %251, align 8
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i8* @LittleLong(i32 %254)
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 1
  store i8* %255, i8** %257, align 8
  br label %258

258:                                              ; preds = %245
  %259 = load i32, i32* %5, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %5, align 4
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 1
  store %struct.TYPE_14__* %262, %struct.TYPE_14__** %9, align 8
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 1
  store %struct.TYPE_11__* %264, %struct.TYPE_11__** %10, align 8
  br label %181

265:                                              ; preds = %181
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_worldData, i32 0, i32 3), align 8
  %267 = call i32 @R_SetParent(%struct.TYPE_11__* %266, i32* null)
  ret void
}

declare dso_local i8* @LittleLong(i32) #1

declare dso_local i32 @R_SetParent(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
