; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_ListBox_HandleKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_ListBox_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (i32)*, i64, i32 (i32, i32)*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i64 }

@DC = common dso_local global %struct.TYPE_13__* null, align 8
@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@WINDOW_HORIZONTAL = common dso_local global i32 0, align 4
@K_LEFTARROW = common dso_local global i32 0, align 4
@K_KP_LEFTARROW = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@K_RIGHTARROW = common dso_local global i32 0, align 4
@K_KP_RIGHTARROW = common dso_local global i32 0, align 4
@K_UPARROW = common dso_local global i32 0, align 4
@K_KP_UPARROW = common dso_local global i32 0, align 4
@K_DOWNARROW = common dso_local global i32 0, align 4
@K_KP_DOWNARROW = common dso_local global i32 0, align 4
@K_MWHEELUP = common dso_local global i32 0, align 4
@K_MWHEELDOWN = common dso_local global i32 0, align 4
@K_MOUSE1 = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@WINDOW_LB_LEFTARROW = common dso_local global i32 0, align 4
@WINDOW_LB_RIGHTARROW = common dso_local global i32 0, align 4
@WINDOW_LB_PGUP = common dso_local global i32 0, align 4
@WINDOW_LB_PGDN = common dso_local global i32 0, align 4
@WINDOW_LB_THUMB = common dso_local global i32 0, align 4
@lastListBoxClickTime = common dso_local global i64 0, align 8
@DOUBLE_CLICK_DELAY = common dso_local global i64 0, align 8
@K_HOME = common dso_local global i32 0, align 4
@K_KP_HOME = common dso_local global i32 0, align 4
@K_END = common dso_local global i32 0, align 4
@K_KP_END = common dso_local global i32 0, align 4
@K_PGUP = common dso_local global i32 0, align 4
@K_KP_PGUP = common dso_local global i32 0, align 4
@K_PGDN = common dso_local global i32 0, align 4
@K_KP_PGDN = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Item_ListBox_HandleKey(%struct.TYPE_11__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %10, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %22(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @Rect_ContainsPoint(%struct.TYPE_12__* %32, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %867

41:                                               ; preds = %29
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %867

49:                                               ; preds = %41, %4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = call i32 @Item_ListBox_MaxScroll(%struct.TYPE_11__* %50)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @WINDOW_HORIZONTAL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %253

59:                                               ; preds = %49
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sdiv i32 %64, %67
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @K_LEFTARROW, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @K_KP_LEFTARROW, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %157

76:                                               ; preds = %72, %59
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %142, label %81

81:                                               ; preds = %76
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %81
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %101, %93
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %113, %114
  %116 = icmp sge i32 %110, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %107
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %13, align 4
  %122 = sub nsw i32 %120, %121
  %123 = add nsw i32 %122, 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %117, %107
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  %134 = load i32 (i32, i32)*, i32 (i32, i32)** %133, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 %134(i32 %137, i32 %140)
  br label %155

142:                                              ; preds = %76
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %144, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  store i32 0, i32* %153, align 8
  br label %154

154:                                              ; preds = %151, %142
  br label %155

155:                                              ; preds = %154, %126
  %156 = load i64, i64* @qtrue, align 8
  store i64 %156, i64* %5, align 8
  br label %869

157:                                              ; preds = %72
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @K_RIGHTARROW, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @K_KP_RIGHTARROW, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %252

165:                                              ; preds = %161, %157
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %234, label %170

170:                                              ; preds = %165
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %170
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %182, %170
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %11, align 4
  %193 = icmp sge i32 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = load i32, i32* %11, align 4
  %196 = sub nsw i32 %195, 1
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %194, %188
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %205, %206
  %208 = icmp sge i32 %202, %207
  br i1 %208, label %209, label %218

209:                                              ; preds = %199
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %13, align 4
  %214 = sub nsw i32 %212, %213
  %215 = add nsw i32 %214, 1
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %209, %199
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 2
  %226 = load i32 (i32, i32)*, i32 (i32, i32)** %225, align 8
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 %226(i32 %229, i32 %232)
  br label %250

234:                                              ; preds = %165
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %11, align 4
  %243 = icmp sge i32 %241, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %234
  %245 = load i32, i32* %11, align 4
  %246 = sub nsw i32 %245, 1
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %244, %234
  br label %250

250:                                              ; preds = %249, %218
  %251 = load i64, i64* @qtrue, align 8
  store i64 %251, i64* %5, align 8
  br label %869

252:                                              ; preds = %161
  br label %446

253:                                              ; preds = %49
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = sdiv i32 %258, %261
  store i32 %262, i32* %13, align 4
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* @K_UPARROW, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %270, label %266

266:                                              ; preds = %253
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* @K_KP_UPARROW, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %351

270:                                              ; preds = %266, %253
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %336, label %275

275:                                              ; preds = %270
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %277, align 4
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %275
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 1
  store i32 0, i32* %286, align 4
  br label %287

287:                                              ; preds = %284, %275
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = icmp slt i32 %290, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %287
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 2
  store i32 %298, i32* %300, align 8
  br label %301

301:                                              ; preds = %295, %287
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* %13, align 4
  %309 = add nsw i32 %307, %308
  %310 = icmp sge i32 %304, %309
  br i1 %310, label %311, label %320

311:                                              ; preds = %301
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* %13, align 4
  %316 = sub nsw i32 %314, %315
  %317 = add nsw i32 %316, 1
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 2
  store i32 %317, i32* %319, align 8
  br label %320

320:                                              ; preds = %311, %301
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 0
  store i32 %323, i32* %325, align 8
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 2
  %328 = load i32 (i32, i32)*, i32 (i32, i32)** %327, align 8
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = call i32 %328(i32 %331, i32 %334)
  br label %349

336:                                              ; preds = %270
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %338, align 8
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %336
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 2
  store i32 0, i32* %347, align 8
  br label %348

348:                                              ; preds = %345, %336
  br label %349

349:                                              ; preds = %348, %320
  %350 = load i64, i64* @qtrue, align 8
  store i64 %350, i64* %5, align 8
  br label %869

351:                                              ; preds = %266
  %352 = load i32, i32* %7, align 4
  %353 = load i32, i32* @K_DOWNARROW, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %359, label %355

355:                                              ; preds = %351
  %356 = load i32, i32* %7, align 4
  %357 = load i32, i32* @K_KP_DOWNARROW, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %445

359:                                              ; preds = %355, %351
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %428, label %364

364:                                              ; preds = %359
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %366, align 4
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = icmp slt i32 %371, %374
  br i1 %375, label %376, label %382

376:                                              ; preds = %364
  %377 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 2
  store i32 %379, i32* %381, align 8
  br label %382

382:                                              ; preds = %376, %364
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* %11, align 4
  %387 = icmp sge i32 %385, %386
  br i1 %387, label %388, label %393

388:                                              ; preds = %382
  %389 = load i32, i32* %11, align 4
  %390 = sub nsw i32 %389, 1
  %391 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %392 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %391, i32 0, i32 1
  store i32 %390, i32* %392, align 4
  br label %393

393:                                              ; preds = %388, %382
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* %13, align 4
  %401 = add nsw i32 %399, %400
  %402 = icmp sge i32 %396, %401
  br i1 %402, label %403, label %412

403:                                              ; preds = %393
  %404 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %405 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* %13, align 4
  %408 = sub nsw i32 %406, %407
  %409 = add nsw i32 %408, 1
  %410 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 2
  store i32 %409, i32* %411, align 8
  br label %412

412:                                              ; preds = %403, %393
  %413 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 0
  store i32 %415, i32* %417, align 8
  %418 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %419 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i32 0, i32 2
  %420 = load i32 (i32, i32)*, i32 (i32, i32)** %419, align 8
  %421 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = call i32 %420(i32 %423, i32 %426)
  br label %443

428:                                              ; preds = %359
  %429 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 8
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %430, align 8
  %433 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %434 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 8
  %436 = load i32, i32* %12, align 4
  %437 = icmp sgt i32 %435, %436
  br i1 %437, label %438, label %442

438:                                              ; preds = %428
  %439 = load i32, i32* %12, align 4
  %440 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %440, i32 0, i32 2
  store i32 %439, i32* %441, align 8
  br label %442

442:                                              ; preds = %438, %428
  br label %443

443:                                              ; preds = %442, %412
  %444 = load i64, i64* @qtrue, align 8
  store i64 %444, i64* %5, align 8
  br label %869

445:                                              ; preds = %355
  br label %446

446:                                              ; preds = %445, %252
  %447 = load i32, i32* %7, align 4
  %448 = load i32, i32* @K_MWHEELUP, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %469

450:                                              ; preds = %446
  %451 = load i32, i32* %13, align 4
  %452 = icmp slt i32 %451, 6
  %453 = zext i1 %452 to i64
  %454 = select i1 %452, i32 1, i32 3
  store i32 %454, i32* %14, align 4
  %455 = load i32, i32* %14, align 4
  %456 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %457 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 8
  %459 = sub nsw i32 %458, %455
  store i32 %459, i32* %457, align 8
  %460 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %461 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  %463 = icmp slt i32 %462, 0
  br i1 %463, label %464, label %467

464:                                              ; preds = %450
  %465 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 2
  store i32 0, i32* %466, align 8
  br label %467

467:                                              ; preds = %464, %450
  %468 = load i64, i64* @qtrue, align 8
  store i64 %468, i64* %5, align 8
  br label %869

469:                                              ; preds = %446
  %470 = load i32, i32* %7, align 4
  %471 = load i32, i32* @K_MWHEELDOWN, align 4
  %472 = icmp eq i32 %470, %471
  br i1 %472, label %473, label %494

473:                                              ; preds = %469
  %474 = load i32, i32* %13, align 4
  %475 = icmp slt i32 %474, 6
  %476 = zext i1 %475 to i64
  %477 = select i1 %475, i32 1, i32 3
  store i32 %477, i32* %15, align 4
  %478 = load i32, i32* %15, align 4
  %479 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %480 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 8
  %482 = add nsw i32 %481, %478
  store i32 %482, i32* %480, align 8
  %483 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %484 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %483, i32 0, i32 2
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* %12, align 4
  %487 = icmp sgt i32 %485, %486
  br i1 %487, label %488, label %492

488:                                              ; preds = %473
  %489 = load i32, i32* %12, align 4
  %490 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %491 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %490, i32 0, i32 2
  store i32 %489, i32* %491, align 8
  br label %492

492:                                              ; preds = %488, %473
  %493 = load i64, i64* @qtrue, align 8
  store i64 %493, i64* %5, align 8
  br label %869

494:                                              ; preds = %469
  %495 = load i32, i32* %7, align 4
  %496 = load i32, i32* @K_MOUSE1, align 4
  %497 = icmp eq i32 %495, %496
  br i1 %497, label %502, label %498

498:                                              ; preds = %494
  %499 = load i32, i32* %7, align 4
  %500 = load i32, i32* @K_MOUSE2, align 4
  %501 = icmp eq i32 %499, %500
  br i1 %501, label %502, label %654

502:                                              ; preds = %498, %494
  %503 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %504 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %503, i32 0, i32 2
  %505 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  %507 = load i32, i32* @WINDOW_LB_LEFTARROW, align 4
  %508 = and i32 %506, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %523

510:                                              ; preds = %502
  %511 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %512 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = add nsw i32 %513, -1
  store i32 %514, i32* %512, align 8
  %515 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %516 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 8
  %518 = icmp slt i32 %517, 0
  br i1 %518, label %519, label %522

519:                                              ; preds = %510
  %520 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %521 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %520, i32 0, i32 2
  store i32 0, i32* %521, align 8
  br label %522

522:                                              ; preds = %519, %510
  br label %652

523:                                              ; preds = %502
  %524 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %525 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %524, i32 0, i32 2
  %526 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = load i32, i32* @WINDOW_LB_RIGHTARROW, align 4
  %529 = and i32 %527, %528
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %546

531:                                              ; preds = %523
  %532 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 2
  %534 = load i32, i32* %533, align 8
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %533, align 8
  %536 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %537 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 8
  %539 = load i32, i32* %12, align 4
  %540 = icmp sgt i32 %538, %539
  br i1 %540, label %541, label %545

541:                                              ; preds = %531
  %542 = load i32, i32* %12, align 4
  %543 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %544 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %543, i32 0, i32 2
  store i32 %542, i32* %544, align 8
  br label %545

545:                                              ; preds = %541, %531
  br label %651

546:                                              ; preds = %523
  %547 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %548 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %547, i32 0, i32 2
  %549 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 8
  %551 = load i32, i32* @WINDOW_LB_PGUP, align 4
  %552 = and i32 %550, %551
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %568

554:                                              ; preds = %546
  %555 = load i32, i32* %13, align 4
  %556 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = sub nsw i32 %558, %555
  store i32 %559, i32* %557, align 8
  %560 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %561 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %560, i32 0, i32 2
  %562 = load i32, i32* %561, align 8
  %563 = icmp slt i32 %562, 0
  br i1 %563, label %564, label %567

564:                                              ; preds = %554
  %565 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %565, i32 0, i32 2
  store i32 0, i32* %566, align 8
  br label %567

567:                                              ; preds = %564, %554
  br label %650

568:                                              ; preds = %546
  %569 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %570 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %569, i32 0, i32 2
  %571 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = load i32, i32* @WINDOW_LB_PGDN, align 4
  %574 = and i32 %572, %573
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %592

576:                                              ; preds = %568
  %577 = load i32, i32* %13, align 4
  %578 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %579 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %578, i32 0, i32 2
  %580 = load i32, i32* %579, align 8
  %581 = add nsw i32 %580, %577
  store i32 %581, i32* %579, align 8
  %582 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %583 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %582, i32 0, i32 2
  %584 = load i32, i32* %583, align 8
  %585 = load i32, i32* %12, align 4
  %586 = icmp sgt i32 %584, %585
  br i1 %586, label %587, label %591

587:                                              ; preds = %576
  %588 = load i32, i32* %12, align 4
  %589 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %590 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %589, i32 0, i32 2
  store i32 %588, i32* %590, align 8
  br label %591

591:                                              ; preds = %587, %576
  br label %649

592:                                              ; preds = %568
  %593 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %594 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %593, i32 0, i32 2
  %595 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 8
  %597 = load i32, i32* @WINDOW_LB_THUMB, align 4
  %598 = and i32 %596, %597
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %601

600:                                              ; preds = %592
  br label %648

601:                                              ; preds = %592
  %602 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %603 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %602, i32 0, i32 1
  %604 = load i64, i64* %603, align 8
  %605 = load i64, i64* @lastListBoxClickTime, align 8
  %606 = icmp slt i64 %604, %605
  br i1 %606, label %607, label %618

607:                                              ; preds = %601
  %608 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %609 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %608, i32 0, i32 5
  %610 = load i64, i64* %609, align 8
  %611 = icmp ne i64 %610, 0
  br i1 %611, label %612, label %618

612:                                              ; preds = %607
  %613 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %614 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %615 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %614, i32 0, i32 5
  %616 = load i64, i64* %615, align 8
  %617 = call i32 @Item_RunScript(%struct.TYPE_11__* %613, i64 %616)
  br label %618

618:                                              ; preds = %612, %607, %601
  %619 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %620 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %619, i32 0, i32 1
  %621 = load i64, i64* %620, align 8
  %622 = load i64, i64* @DOUBLE_CLICK_DELAY, align 8
  %623 = add nsw i64 %621, %622
  store i64 %623, i64* @lastListBoxClickTime, align 8
  %624 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %625 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %624, i32 0, i32 0
  %626 = load i32, i32* %625, align 8
  %627 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %628 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 4
  %630 = icmp ne i32 %626, %629
  br i1 %630, label %631, label %647

631:                                              ; preds = %618
  %632 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %633 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %632, i32 0, i32 1
  %634 = load i32, i32* %633, align 4
  %635 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %636 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %635, i32 0, i32 0
  store i32 %634, i32* %636, align 8
  %637 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %638 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %637, i32 0, i32 2
  %639 = load i32 (i32, i32)*, i32 (i32, i32)** %638, align 8
  %640 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %641 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %640, i32 0, i32 1
  %642 = load i32, i32* %641, align 4
  %643 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %644 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %643, i32 0, i32 0
  %645 = load i32, i32* %644, align 8
  %646 = call i32 %639(i32 %642, i32 %645)
  br label %647

647:                                              ; preds = %631, %618
  br label %648

648:                                              ; preds = %647, %600
  br label %649

649:                                              ; preds = %648, %591
  br label %650

650:                                              ; preds = %649, %567
  br label %651

651:                                              ; preds = %650, %545
  br label %652

652:                                              ; preds = %651, %522
  %653 = load i64, i64* @qtrue, align 8
  store i64 %653, i64* %5, align 8
  br label %869

654:                                              ; preds = %498
  %655 = load i32, i32* %7, align 4
  %656 = load i32, i32* @K_HOME, align 4
  %657 = icmp eq i32 %655, %656
  br i1 %657, label %662, label %658

658:                                              ; preds = %654
  %659 = load i32, i32* %7, align 4
  %660 = load i32, i32* @K_KP_HOME, align 4
  %661 = icmp eq i32 %659, %660
  br i1 %661, label %662, label %666

662:                                              ; preds = %658, %654
  %663 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %664 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %663, i32 0, i32 2
  store i32 0, i32* %664, align 8
  %665 = load i64, i64* @qtrue, align 8
  store i64 %665, i64* %5, align 8
  br label %869

666:                                              ; preds = %658
  %667 = load i32, i32* %7, align 4
  %668 = load i32, i32* @K_END, align 4
  %669 = icmp eq i32 %667, %668
  br i1 %669, label %674, label %670

670:                                              ; preds = %666
  %671 = load i32, i32* %7, align 4
  %672 = load i32, i32* @K_KP_END, align 4
  %673 = icmp eq i32 %671, %672
  br i1 %673, label %674, label %679

674:                                              ; preds = %670, %666
  %675 = load i32, i32* %12, align 4
  %676 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %677 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %676, i32 0, i32 2
  store i32 %675, i32* %677, align 8
  %678 = load i64, i64* @qtrue, align 8
  store i64 %678, i64* %5, align 8
  br label %869

679:                                              ; preds = %670
  %680 = load i32, i32* %7, align 4
  %681 = load i32, i32* @K_PGUP, align 4
  %682 = icmp eq i32 %680, %681
  br i1 %682, label %687, label %683

683:                                              ; preds = %679
  %684 = load i32, i32* %7, align 4
  %685 = load i32, i32* @K_KP_PGUP, align 4
  %686 = icmp eq i32 %684, %685
  br i1 %686, label %687, label %770

687:                                              ; preds = %683, %679
  %688 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %689 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %688, i32 0, i32 4
  %690 = load i32, i32* %689, align 8
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %754, label %692

692:                                              ; preds = %687
  %693 = load i32, i32* %13, align 4
  %694 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %695 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %694, i32 0, i32 1
  %696 = load i32, i32* %695, align 4
  %697 = sub nsw i32 %696, %693
  store i32 %697, i32* %695, align 4
  %698 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %699 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %698, i32 0, i32 1
  %700 = load i32, i32* %699, align 4
  %701 = icmp slt i32 %700, 0
  br i1 %701, label %702, label %705

702:                                              ; preds = %692
  %703 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %704 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %703, i32 0, i32 1
  store i32 0, i32* %704, align 4
  br label %705

705:                                              ; preds = %702, %692
  %706 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %707 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %706, i32 0, i32 1
  %708 = load i32, i32* %707, align 4
  %709 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %710 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %709, i32 0, i32 2
  %711 = load i32, i32* %710, align 8
  %712 = icmp slt i32 %708, %711
  br i1 %712, label %713, label %719

713:                                              ; preds = %705
  %714 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %715 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %714, i32 0, i32 1
  %716 = load i32, i32* %715, align 4
  %717 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %718 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %717, i32 0, i32 2
  store i32 %716, i32* %718, align 8
  br label %719

719:                                              ; preds = %713, %705
  %720 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %721 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %720, i32 0, i32 1
  %722 = load i32, i32* %721, align 4
  %723 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %724 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %723, i32 0, i32 2
  %725 = load i32, i32* %724, align 8
  %726 = load i32, i32* %13, align 4
  %727 = add nsw i32 %725, %726
  %728 = icmp sge i32 %722, %727
  br i1 %728, label %729, label %738

729:                                              ; preds = %719
  %730 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %731 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %730, i32 0, i32 1
  %732 = load i32, i32* %731, align 4
  %733 = load i32, i32* %13, align 4
  %734 = sub nsw i32 %732, %733
  %735 = add nsw i32 %734, 1
  %736 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %737 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %736, i32 0, i32 2
  store i32 %735, i32* %737, align 8
  br label %738

738:                                              ; preds = %729, %719
  %739 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %740 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %739, i32 0, i32 1
  %741 = load i32, i32* %740, align 4
  %742 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %743 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %742, i32 0, i32 0
  store i32 %741, i32* %743, align 8
  %744 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %745 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %744, i32 0, i32 2
  %746 = load i32 (i32, i32)*, i32 (i32, i32)** %745, align 8
  %747 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %748 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %747, i32 0, i32 1
  %749 = load i32, i32* %748, align 4
  %750 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %751 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %750, i32 0, i32 0
  %752 = load i32, i32* %751, align 8
  %753 = call i32 %746(i32 %749, i32 %752)
  br label %768

754:                                              ; preds = %687
  %755 = load i32, i32* %13, align 4
  %756 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %757 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %756, i32 0, i32 2
  %758 = load i32, i32* %757, align 8
  %759 = sub nsw i32 %758, %755
  store i32 %759, i32* %757, align 8
  %760 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %761 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %760, i32 0, i32 2
  %762 = load i32, i32* %761, align 8
  %763 = icmp slt i32 %762, 0
  br i1 %763, label %764, label %767

764:                                              ; preds = %754
  %765 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %766 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %765, i32 0, i32 2
  store i32 0, i32* %766, align 8
  br label %767

767:                                              ; preds = %764, %754
  br label %768

768:                                              ; preds = %767, %738
  %769 = load i64, i64* @qtrue, align 8
  store i64 %769, i64* %5, align 8
  br label %869

770:                                              ; preds = %683
  %771 = load i32, i32* %7, align 4
  %772 = load i32, i32* @K_PGDN, align 4
  %773 = icmp eq i32 %771, %772
  br i1 %773, label %778, label %774

774:                                              ; preds = %770
  %775 = load i32, i32* %7, align 4
  %776 = load i32, i32* @K_KP_PGDN, align 4
  %777 = icmp eq i32 %775, %776
  br i1 %777, label %778, label %866

778:                                              ; preds = %774, %770
  %779 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %780 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %779, i32 0, i32 4
  %781 = load i32, i32* %780, align 8
  %782 = icmp ne i32 %781, 0
  br i1 %782, label %848, label %783

783:                                              ; preds = %778
  %784 = load i32, i32* %13, align 4
  %785 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %786 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %785, i32 0, i32 1
  %787 = load i32, i32* %786, align 4
  %788 = add nsw i32 %787, %784
  store i32 %788, i32* %786, align 4
  %789 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %790 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %789, i32 0, i32 1
  %791 = load i32, i32* %790, align 4
  %792 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %793 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %792, i32 0, i32 2
  %794 = load i32, i32* %793, align 8
  %795 = icmp slt i32 %791, %794
  br i1 %795, label %796, label %802

796:                                              ; preds = %783
  %797 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %798 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %797, i32 0, i32 1
  %799 = load i32, i32* %798, align 4
  %800 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %801 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %800, i32 0, i32 2
  store i32 %799, i32* %801, align 8
  br label %802

802:                                              ; preds = %796, %783
  %803 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %804 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %803, i32 0, i32 1
  %805 = load i32, i32* %804, align 4
  %806 = load i32, i32* %11, align 4
  %807 = icmp sge i32 %805, %806
  br i1 %807, label %808, label %813

808:                                              ; preds = %802
  %809 = load i32, i32* %11, align 4
  %810 = sub nsw i32 %809, 1
  %811 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %812 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %811, i32 0, i32 1
  store i32 %810, i32* %812, align 4
  br label %813

813:                                              ; preds = %808, %802
  %814 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %815 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %814, i32 0, i32 1
  %816 = load i32, i32* %815, align 4
  %817 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %818 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %817, i32 0, i32 2
  %819 = load i32, i32* %818, align 8
  %820 = load i32, i32* %13, align 4
  %821 = add nsw i32 %819, %820
  %822 = icmp sge i32 %816, %821
  br i1 %822, label %823, label %832

823:                                              ; preds = %813
  %824 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %825 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %824, i32 0, i32 1
  %826 = load i32, i32* %825, align 4
  %827 = load i32, i32* %13, align 4
  %828 = sub nsw i32 %826, %827
  %829 = add nsw i32 %828, 1
  %830 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %831 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %830, i32 0, i32 2
  store i32 %829, i32* %831, align 8
  br label %832

832:                                              ; preds = %823, %813
  %833 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %834 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %833, i32 0, i32 1
  %835 = load i32, i32* %834, align 4
  %836 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %837 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %836, i32 0, i32 0
  store i32 %835, i32* %837, align 8
  %838 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %839 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %838, i32 0, i32 2
  %840 = load i32 (i32, i32)*, i32 (i32, i32)** %839, align 8
  %841 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %842 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %841, i32 0, i32 1
  %843 = load i32, i32* %842, align 4
  %844 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %845 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %844, i32 0, i32 0
  %846 = load i32, i32* %845, align 8
  %847 = call i32 %840(i32 %843, i32 %846)
  br label %864

848:                                              ; preds = %778
  %849 = load i32, i32* %13, align 4
  %850 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %851 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %850, i32 0, i32 2
  %852 = load i32, i32* %851, align 8
  %853 = add nsw i32 %852, %849
  store i32 %853, i32* %851, align 8
  %854 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %855 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %854, i32 0, i32 2
  %856 = load i32, i32* %855, align 8
  %857 = load i32, i32* %12, align 4
  %858 = icmp sgt i32 %856, %857
  br i1 %858, label %859, label %863

859:                                              ; preds = %848
  %860 = load i32, i32* %12, align 4
  %861 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %862 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %861, i32 0, i32 2
  store i32 %860, i32* %862, align 8
  br label %863

863:                                              ; preds = %859, %848
  br label %864

864:                                              ; preds = %863, %832
  %865 = load i64, i64* @qtrue, align 8
  store i64 %865, i64* %5, align 8
  br label %869

866:                                              ; preds = %774
  br label %867

867:                                              ; preds = %866, %41, %29
  %868 = load i64, i64* @qfalse, align 8
  store i64 %868, i64* %5, align 8
  br label %869

869:                                              ; preds = %867, %864, %768, %674, %662, %652, %492, %467, %443, %349, %250, %155
  %870 = load i64, i64* %5, align 8
  ret i64 %870
}

declare dso_local i64 @Rect_ContainsPoint(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @Item_ListBox_MaxScroll(%struct.TYPE_11__*) #1

declare dso_local i32 @Item_RunScript(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
