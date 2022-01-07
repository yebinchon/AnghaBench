; ModuleID = '/home/carl/AnghaBench/i3/src/extr_click.c_route_click.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_click.c_route_click.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_34__*, i32, i32 }
%struct.TYPE_34__ = type { i64, i64, i32 }
%struct.TYPE_35__ = type { i64, i64, i32, i32 }
%struct.TYPE_37__ = type { i64, i64, i32 }
%struct.TYPE_33__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"--> click properties: mod = %d, destination = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"--> OUTCOME = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"type = %d, name = %s\0A\00", align 1
@CT_DOCKAREA = common dso_local global i64 0, align 8
@XCB_BUTTON_CLICK_LEFT = common dso_local global i64 0, align 8
@XCB_BUTTON_CLICK_RIGHT = common dso_local global i64 0, align 8
@CLICK_DECORATION = common dso_local global i32 0, align 4
@CLICK_INSIDE = common dso_local global i32 0, align 4
@CLICK_BORDER = common dso_local global i32 0, align 4
@conn = common dso_local global i32 0, align 4
@XCB_ALLOW_ASYNC_POINTER = common dso_local global i32 0, align 4
@XCB_BUTTON_RELEASE = common dso_local global i64 0, align 8
@focused = common dso_local global %struct.TYPE_36__* null, align 8
@XCB_KEY_BUT_MASK_SHIFT = common dso_local global i32 0, align 4
@L_STACKED = common dso_local global i64 0, align 8
@L_TABBED = common dso_local global i64 0, align 8
@XCB_BUTTON_SCROLL_UP = common dso_local global i64 0, align 8
@XCB_BUTTON_SCROLL_DOWN = common dso_local global i64 0, align 8
@XCB_BUTTON_SCROLL_LEFT = common dso_local global i64 0, align 8
@XCB_BUTTON_SCROLL_RIGHT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Scrolling on a window decoration\0A\00", align 1
@BEFORE = common dso_local global i32 0, align 4
@AFTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"floating resize due to floatingmodifier\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"tiling resize with fallback\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"floating resize due to decoration right click\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"floating resize due to border click\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Trying to resize (tiling)\0A\00", align 1
@XCB_ALLOW_REPLAY_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_36__*, %struct.TYPE_35__*, i32, i32)* @route_click to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @route_click(%struct.TYPE_36__* %0, %struct.TYPE_35__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_37__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_36__*, align 8
  %14 = alloca %struct.TYPE_36__*, align 8
  %15 = alloca %struct.TYPE_36__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_36__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_36__*, align 8
  %22 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %6, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %27 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_36__* %26)
  %28 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_34__*, %struct.TYPE_34__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CT_DOCKAREA, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %4
  br label %410

43:                                               ; preds = %4
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XCB_BUTTON_CLICK_LEFT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @XCB_BUTTON_CLICK_RIGHT, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %49, %43
  %56 = phi i1 [ true, %43 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @CLICK_DECORATION, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @CLICK_INSIDE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @CLICK_BORDER, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %117

69:                                               ; preds = %65, %61, %55
  %70 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %71 = bitcast %struct.TYPE_35__* %70 to i32*
  %72 = call %struct.TYPE_37__* @get_binding_from_xcb_event(i32* %71)
  store %struct.TYPE_37__* %72, %struct.TYPE_37__** %11, align 8
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %74 = icmp ne %struct.TYPE_37__* %73, null
  br i1 %74, label %75, label %116

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @CLICK_DECORATION, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %79, %75
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @CLICK_INSIDE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %88, %84
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @CLICK_BORDER, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %97, %88, %79
  %103 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %104 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %105 = call i32* @run_binding(%struct.TYPE_37__* %103, %struct.TYPE_36__* %104)
  store i32* %105, i32** %12, align 8
  %106 = load i32, i32* @conn, align 4
  %107 = load i32, i32* @XCB_ALLOW_ASYNC_POINTER, align 4
  %108 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @xcb_allow_events(i32 %106, i32 %107, i32 %110)
  %112 = load i32, i32* @conn, align 4
  %113 = call i32 @xcb_flush(i32 %112)
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @command_result_free(i32* %114)
  store i32 0, i32* %5, align 4
  br label %420

116:                                              ; preds = %97, %93, %69
  br label %117

117:                                              ; preds = %116, %65
  %118 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @XCB_BUTTON_RELEASE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %410

124:                                              ; preds = %117
  %125 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %126 = call %struct.TYPE_36__* @con_get_workspace(%struct.TYPE_36__* %125)
  store %struct.TYPE_36__* %126, %struct.TYPE_36__** %13, align 8
  %127 = load %struct.TYPE_36__*, %struct.TYPE_36__** @focused, align 8
  %128 = call %struct.TYPE_36__* @con_get_workspace(%struct.TYPE_36__* %127)
  store %struct.TYPE_36__* %128, %struct.TYPE_36__** %14, align 8
  %129 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %130 = icmp ne %struct.TYPE_36__* %129, null
  br i1 %130, label %141, label %131

131:                                              ; preds = %124
  %132 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %133 = call i32 @con_get_output(%struct.TYPE_36__* %132)
  %134 = call %struct.TYPE_33__* @output_get_content(i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 0
  %136 = call %struct.TYPE_36__* @TAILQ_FIRST(i32* %135)
  store %struct.TYPE_36__* %136, %struct.TYPE_36__** %13, align 8
  %137 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %138 = icmp ne %struct.TYPE_36__* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %131
  br label %410

140:                                              ; preds = %131
  br label %141

141:                                              ; preds = %140, %124
  %142 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %143 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %144 = icmp ne %struct.TYPE_36__* %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %147 = call i32 @workspace_show(%struct.TYPE_36__* %146)
  br label %148

148:                                              ; preds = %145, %141
  %149 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %150 = call %struct.TYPE_36__* @con_inside_floating(%struct.TYPE_36__* %149)
  store %struct.TYPE_36__* %150, %struct.TYPE_36__** %15, align 8
  %151 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @XCB_KEY_BUT_MASK_SHIFT, align 4
  %155 = and i32 %153, %154
  %156 = load i32, i32* @XCB_KEY_BUT_MASK_SHIFT, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %16, align 4
  %159 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @L_STACKED, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %174, label %166

166:                                              ; preds = %148
  %167 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_34__*, %struct.TYPE_34__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @L_TABBED, align 8
  %173 = icmp eq i64 %171, %172
  br label %174

174:                                              ; preds = %166, %148
  %175 = phi i1 [ true, %148 ], [ %173, %166 ]
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %17, align 4
  %177 = load %struct.TYPE_36__*, %struct.TYPE_36__** @focused, align 8
  %178 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %179 = icmp eq %struct.TYPE_36__* %177, %178
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %248

183:                                              ; preds = %174
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @CLICK_DECORATION, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %248

187:                                              ; preds = %183
  %188 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @XCB_BUTTON_SCROLL_UP, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %211, label %193

193:                                              ; preds = %187
  %194 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @XCB_BUTTON_SCROLL_DOWN, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %211, label %199

199:                                              ; preds = %193
  %200 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @XCB_BUTTON_SCROLL_LEFT, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %211, label %205

205:                                              ; preds = %199
  %206 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @XCB_BUTTON_SCROLL_RIGHT, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %248

211:                                              ; preds = %205, %199, %193, %187
  %212 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 2
  %217 = call %struct.TYPE_36__* @TAILQ_FIRST(i32* %216)
  store %struct.TYPE_36__* %217, %struct.TYPE_36__** %19, align 8
  %218 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @XCB_BUTTON_SCROLL_UP, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %229, label %223

223:                                              ; preds = %211
  %224 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @XCB_BUTTON_SCROLL_LEFT, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %223, %211
  %230 = load i32, i32* @BEFORE, align 4
  br label %233

231:                                              ; preds = %223
  %232 = load i32, i32* @AFTER, align 4
  br label %233

233:                                              ; preds = %231, %229
  %234 = phi i32 [ %230, %229 ], [ %232, %231 ]
  store i32 %234, i32* %20, align 4
  %235 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %236 = load i32, i32* %20, align 4
  %237 = call %struct.TYPE_36__* @get_tree_next_sibling(%struct.TYPE_36__* %235, i32 %236)
  store %struct.TYPE_36__* %237, %struct.TYPE_36__** %21, align 8
  %238 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %239 = icmp ne %struct.TYPE_36__* %238, null
  br i1 %239, label %240, label %242

240:                                              ; preds = %233
  %241 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  br label %244

242:                                              ; preds = %233
  %243 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  br label %244

244:                                              ; preds = %242, %240
  %245 = phi %struct.TYPE_36__* [ %241, %240 ], [ %243, %242 ]
  %246 = call %struct.TYPE_36__* @con_descend_focused(%struct.TYPE_36__* %245)
  %247 = call i32 @con_activate(%struct.TYPE_36__* %246)
  br label %410

248:                                              ; preds = %205, %183, %174
  %249 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %250 = call i32 @con_activate(%struct.TYPE_36__* %249)
  %251 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %252 = call i32 @con_get_fullscreen_covering_ws(%struct.TYPE_36__* %251)
  %253 = sext i32 %252 to i64
  %254 = inttoptr i64 %253 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %254, %struct.TYPE_36__** %22, align 8
  %255 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %256 = icmp ne %struct.TYPE_36__* %255, null
  br i1 %256, label %257, label %360

257:                                              ; preds = %248
  %258 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  %259 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %260 = icmp ne %struct.TYPE_36__* %258, %259
  br i1 %260, label %261, label %360

261:                                              ; preds = %257
  %262 = load i32, i32* %8, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %274

264:                                              ; preds = %261
  %265 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @XCB_BUTTON_CLICK_LEFT, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %264
  %271 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %272 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %273 = call i32 @floating_drag_window(%struct.TYPE_36__* %271, %struct.TYPE_35__* %272, i32 0)
  store i32 1, i32* %5, align 4
  br label %420

274:                                              ; preds = %264, %261
  %275 = load i32, i32* %8, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %289

277:                                              ; preds = %274
  %278 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @XCB_BUTTON_CLICK_RIGHT, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %289

283:                                              ; preds = %277
  %284 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %285 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %286 = load i32, i32* %16, align 4
  %287 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %288 = call i32 @floating_resize_window(%struct.TYPE_36__* %285, i32 %286, %struct.TYPE_35__* %287)
  store i32 1, i32* %5, align 4
  br label %420

289:                                              ; preds = %277, %274
  %290 = load i32, i32* %17, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %312, label %292

292:                                              ; preds = %289
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* @CLICK_DECORATION, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %312

296:                                              ; preds = %292
  %297 = load i32, i32* %10, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %312

299:                                              ; preds = %296
  %300 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %301 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %302 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* %18, align 4
  %305 = icmp ne i32 %304, 0
  %306 = xor i1 %305, true
  %307 = zext i1 %306 to i32
  %308 = call i64 @tiling_resize(%struct.TYPE_36__* %301, %struct.TYPE_35__* %302, i32 %303, i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %299
  br label %410

311:                                              ; preds = %299
  br label %312

312:                                              ; preds = %311, %296, %292, %289
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* @CLICK_DECORATION, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %328

316:                                              ; preds = %312
  %317 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @XCB_BUTTON_CLICK_RIGHT, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %328

322:                                              ; preds = %316
  %323 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %324 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %325 = load i32, i32* %16, align 4
  %326 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %327 = call i32 @floating_resize_window(%struct.TYPE_36__* %324, i32 %325, %struct.TYPE_35__* %326)
  store i32 1, i32* %5, align 4
  br label %420

328:                                              ; preds = %316, %312
  %329 = load i32, i32* %9, align 4
  %330 = load i32, i32* @CLICK_BORDER, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %341

332:                                              ; preds = %328
  %333 = load i32, i32* %10, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %341

335:                                              ; preds = %332
  %336 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %337 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %338 = load i32, i32* %16, align 4
  %339 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %340 = call i32 @floating_resize_window(%struct.TYPE_36__* %337, i32 %338, %struct.TYPE_35__* %339)
  store i32 1, i32* %5, align 4
  br label %420

341:                                              ; preds = %332, %328
  %342 = load i32, i32* %9, align 4
  %343 = load i32, i32* @CLICK_DECORATION, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %359

345:                                              ; preds = %341
  %346 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @XCB_BUTTON_CLICK_LEFT, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %359

351:                                              ; preds = %345
  %352 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %353 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %354 = load i32, i32* %18, align 4
  %355 = icmp ne i32 %354, 0
  %356 = xor i1 %355, true
  %357 = zext i1 %356 to i32
  %358 = call i32 @floating_drag_window(%struct.TYPE_36__* %352, %struct.TYPE_35__* %353, i32 %357)
  store i32 1, i32* %5, align 4
  br label %420

359:                                              ; preds = %345, %341
  br label %410

360:                                              ; preds = %257, %248
  %361 = load i32, i32* %9, align 4
  %362 = load i32, i32* @CLICK_INSIDE, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %380

364:                                              ; preds = %360
  %365 = load i32, i32* %8, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %380

367:                                              ; preds = %364
  %368 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @XCB_BUTTON_CLICK_RIGHT, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %380

373:                                              ; preds = %367
  %374 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %375 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %376 = call i64 @floating_mod_on_tiled_client(%struct.TYPE_36__* %374, %struct.TYPE_35__* %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %373
  store i32 1, i32* %5, align 4
  br label %420

379:                                              ; preds = %373
  br label %409

380:                                              ; preds = %367, %364, %360
  %381 = load i32, i32* %9, align 4
  %382 = load i32, i32* @CLICK_BORDER, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %388, label %384

384:                                              ; preds = %380
  %385 = load i32, i32* %9, align 4
  %386 = load i32, i32* @CLICK_DECORATION, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %408

388:                                              ; preds = %384, %380
  %389 = load i32, i32* %10, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %408

391:                                              ; preds = %388
  %392 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %393 = call i32 (...) @tree_render()
  %394 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %395 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %396 = load i32, i32* %9, align 4
  %397 = load i32, i32* %9, align 4
  %398 = load i32, i32* @CLICK_DECORATION, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %404

400:                                              ; preds = %391
  %401 = load i32, i32* %18, align 4
  %402 = icmp ne i32 %401, 0
  %403 = xor i1 %402, true
  br label %404

404:                                              ; preds = %400, %391
  %405 = phi i1 [ false, %391 ], [ %403, %400 ]
  %406 = zext i1 %405 to i32
  %407 = call i64 @tiling_resize(%struct.TYPE_36__* %394, %struct.TYPE_35__* %395, i32 %396, i32 %406)
  br label %408

408:                                              ; preds = %404, %388, %384
  br label %409

409:                                              ; preds = %408, %379
  br label %410

410:                                              ; preds = %409, %359, %310, %244, %139, %123, %42
  %411 = load i32, i32* @conn, align 4
  %412 = load i32, i32* @XCB_ALLOW_REPLAY_POINTER, align 4
  %413 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @xcb_allow_events(i32 %411, i32 %412, i32 %415)
  %417 = load i32, i32* @conn, align 4
  %418 = call i32 @xcb_flush(i32 %417)
  %419 = call i32 (...) @tree_render()
  store i32 0, i32* %5, align 4
  br label %420

420:                                              ; preds = %410, %378, %351, %335, %322, %283, %270, %102
  %421 = load i32, i32* %5, align 4
  ret i32 %421
}

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local %struct.TYPE_37__* @get_binding_from_xcb_event(i32*) #1

declare dso_local i32* @run_binding(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i32 @xcb_allow_events(i32, i32, i32) #1

declare dso_local i32 @xcb_flush(i32) #1

declare dso_local i32 @command_result_free(i32*) #1

declare dso_local %struct.TYPE_36__* @con_get_workspace(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_33__* @output_get_content(i32) #1

declare dso_local i32 @con_get_output(%struct.TYPE_36__*) #1

declare dso_local i32 @workspace_show(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @con_inside_floating(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @get_tree_next_sibling(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @con_activate(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @con_descend_focused(%struct.TYPE_36__*) #1

declare dso_local i32 @con_get_fullscreen_covering_ws(%struct.TYPE_36__*) #1

declare dso_local i32 @floating_drag_window(%struct.TYPE_36__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @floating_resize_window(%struct.TYPE_36__*, i32, %struct.TYPE_35__*) #1

declare dso_local i64 @tiling_resize(%struct.TYPE_36__*, %struct.TYPE_35__*, i32, i32) #1

declare dso_local i64 @floating_mod_on_tiled_client(%struct.TYPE_36__*, %struct.TYPE_35__*) #1

declare dso_local i32 @tree_render(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
