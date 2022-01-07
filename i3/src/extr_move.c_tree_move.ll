; ModuleID = '/home/carl/AnghaBench/i3/src/extr_move.c_tree_move.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_move.c_tree_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, i64, i64, i32, %struct.TYPE_29__*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Moving in direction %d\0A\00", align 1
@CT_WORKSPACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Not moving workspace\0A\00", align 1
@CF_GLOBAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Not moving fullscreen global container\0A\00", align 1
@CF_OUTPUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Inside floating, moving to workspace\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Force-changing orientation\0A\00", align 1
@D_LEFT = common dso_local global i32 0, align 4
@D_UP = common dso_local global i32 0, align 4
@nodes_head = common dso_local global i32 0, align 4
@nodes = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Moving into our bordering branch\0A\00", align 1
@AFTER = common dso_local global i32 0, align 4
@BEFORE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Swapping with sibling.\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Cannot move out of fullscreen container\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"above = %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"Moving into the bordering branch of our adjacent container\0A\00", align 1
@L_DEFAULT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [26 x i8] c"Grandparent is workspace\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Moving into container above\0A\00", align 1
@croot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tree_move(%struct.TYPE_29__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CT_WORKSPACE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %339

21:                                               ; preds = %2
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CF_GLOBAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %339

29:                                               ; preds = %21
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CF_OUTPUT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %49, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CT_WORKSPACE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %45, align 8
  %47 = call i32 @con_num_children(%struct.TYPE_29__* %46)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %43, %29
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @move_to_output_directed(%struct.TYPE_29__* %50, i32 %51)
  br label %339

53:                                               ; preds = %43, %35
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @orientation_from_direction(i32 %54)
  store i64 %55, i64* %7, align 8
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call %struct.TYPE_29__* @con_parent_with_orientation(%struct.TYPE_29__* %56, i64 %57)
  store %struct.TYPE_29__* %58, %struct.TYPE_29__** %8, align 8
  br label %59

59:                                               ; preds = %197, %53
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %61 = icmp ne %struct.TYPE_29__* %60, null
  br i1 %61, label %89, label %62

62:                                               ; preds = %59
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %64 = call i64 @con_is_floating(%struct.TYPE_29__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %68 = call i32 @floating_disable(%struct.TYPE_29__* %67)
  br label %339

69:                                               ; preds = %62
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %71 = call i64 @con_inside_floating(%struct.TYPE_29__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %77 = call %struct.TYPE_29__* @con_get_workspace(%struct.TYPE_29__* %76)
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @attach_to_workspace(%struct.TYPE_29__* %75, %struct.TYPE_29__* %77, i32 %78)
  br label %329

80:                                               ; preds = %69
  %81 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %83 = call %struct.TYPE_29__* @con_get_workspace(%struct.TYPE_29__* %82)
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @ws_force_orientation(%struct.TYPE_29__* %83, i64 %84)
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call %struct.TYPE_29__* @con_parent_with_orientation(%struct.TYPE_29__* %86, i64 %87)
  store %struct.TYPE_29__* %88, %struct.TYPE_29__** %8, align 8
  br label %89

89:                                               ; preds = %80, %59
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %92, align 8
  %94 = icmp eq %struct.TYPE_29__* %90, %93
  br i1 %94, label %95, label %196

95:                                               ; preds = %89
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @D_LEFT, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @D_UP, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99, %95
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %105 = load i32, i32* @nodes_head, align 4
  %106 = load i32, i32* @nodes, align 4
  %107 = call %struct.TYPE_29__* @TAILQ_PREV(%struct.TYPE_29__* %104, i32 %105, i32 %106)
  br label %112

108:                                              ; preds = %99
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %110 = load i32, i32* @nodes, align 4
  %111 = call %struct.TYPE_29__* @TAILQ_NEXT(%struct.TYPE_29__* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %103
  %113 = phi %struct.TYPE_29__* [ %107, %103 ], [ %111, %108 ]
  store %struct.TYPE_29__* %113, %struct.TYPE_29__** %9, align 8
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %115 = icmp ne %struct.TYPE_29__* %114, null
  br i1 %115, label %116, label %179

116:                                              ; preds = %112
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %118 = call i32 @con_is_leaf(%struct.TYPE_29__* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %149, label %120

120:                                              ; preds = %116
  %121 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call %struct.TYPE_29__* @con_descend_direction(%struct.TYPE_29__* %122, i32 %123)
  store %struct.TYPE_29__* %124, %struct.TYPE_29__** %6, align 8
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %126, align 8
  %128 = call i64 @con_orientation(%struct.TYPE_29__* %127)
  %129 = load i64, i64* %7, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %139, label %131

131:                                              ; preds = %120
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @D_UP, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @D_LEFT, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135, %131, %120
  %140 = load i32, i32* @AFTER, align 4
  br label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @BEFORE, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  store i32 %144, i32* %5, align 4
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @insert_con_into(%struct.TYPE_29__* %145, %struct.TYPE_29__* %146, i32 %147)
  br label %329

149:                                              ; preds = %116
  %150 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @D_LEFT, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @D_UP, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %154, %149
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 5
  %165 = load i32, i32* @nodes, align 4
  %166 = call i32 @TAILQ_SWAP(%struct.TYPE_29__* %159, %struct.TYPE_29__* %160, i32* %164, i32 %165)
  br label %176

167:                                              ; preds = %154
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 4
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 5
  %174 = load i32, i32* @nodes, align 4
  %175 = call i32 @TAILQ_SWAP(%struct.TYPE_29__* %168, %struct.TYPE_29__* %169, i32* %173, i32 %174)
  br label %176

176:                                              ; preds = %167, %158
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %178 = call i32 @ipc_send_window_event(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_29__* %177)
  br label %339

179:                                              ; preds = %112
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 4
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %181, align 8
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %184 = call %struct.TYPE_29__* @con_get_workspace(%struct.TYPE_29__* %183)
  %185 = icmp eq %struct.TYPE_29__* %182, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %179
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %188 = load i32, i32* %4, align 4
  %189 = call i32 @move_to_output_directed(%struct.TYPE_29__* %187, i32 %188)
  br label %339

190:                                              ; preds = %179
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %191, i32 0, i32 4
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %192, align 8
  %194 = load i64, i64* %7, align 8
  %195 = call %struct.TYPE_29__* @con_parent_with_orientation(%struct.TYPE_29__* %193, i64 %194)
  store %struct.TYPE_29__* %195, %struct.TYPE_29__** %8, align 8
  br label %196

196:                                              ; preds = %190, %89
  br label %197

197:                                              ; preds = %196
  %198 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %199 = icmp eq %struct.TYPE_29__* %198, null
  br i1 %199, label %59, label %200

200:                                              ; preds = %197
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  store %struct.TYPE_29__* %201, %struct.TYPE_29__** %10, align 8
  br label %202

202:                                              ; preds = %208, %200
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 4
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %204, align 8
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %207 = icmp ne %struct.TYPE_29__* %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %210, align 8
  store %struct.TYPE_29__* %211, %struct.TYPE_29__** %10, align 8
  br label %202

212:                                              ; preds = %202
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 4
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %214, align 8
  %216 = call i32 @con_fullscreen_permits_focusing(%struct.TYPE_29__* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %212
  %219 = call i32 @LOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %339

220:                                              ; preds = %212
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %222 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_29__* %221)
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* @D_UP, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %230, label %226

226:                                              ; preds = %220
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* @D_LEFT, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %226, %220
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %232 = load i32, i32* @nodes_head, align 4
  %233 = load i32, i32* @nodes, align 4
  %234 = call %struct.TYPE_29__* @TAILQ_PREV(%struct.TYPE_29__* %231, i32 %232, i32 %233)
  br label %239

235:                                              ; preds = %226
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %237 = load i32, i32* @nodes, align 4
  %238 = call %struct.TYPE_29__* @TAILQ_NEXT(%struct.TYPE_29__* %236, i32 %237)
  br label %239

239:                                              ; preds = %235, %230
  %240 = phi %struct.TYPE_29__* [ %234, %230 ], [ %238, %235 ]
  store %struct.TYPE_29__* %240, %struct.TYPE_29__** %11, align 8
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %242 = icmp ne %struct.TYPE_29__* %241, null
  br i1 %242, label %243, label %276

243:                                              ; preds = %239
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %245 = call i32 @con_is_leaf(%struct.TYPE_29__* %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %276, label %247

247:                                              ; preds = %243
  %248 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0))
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %250 = load i32, i32* %4, align 4
  %251 = call %struct.TYPE_29__* @con_descend_direction(%struct.TYPE_29__* %249, i32 %250)
  store %struct.TYPE_29__* %251, %struct.TYPE_29__** %6, align 8
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %252, i32 0, i32 4
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %253, align 8
  %255 = call i64 @con_orientation(%struct.TYPE_29__* %254)
  %256 = load i64, i64* %7, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %266, label %258

258:                                              ; preds = %247
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @D_UP, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %266, label %262

262:                                              ; preds = %258
  %263 = load i32, i32* %4, align 4
  %264 = load i32, i32* @D_LEFT, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %262, %258, %247
  %267 = load i32, i32* @AFTER, align 4
  br label %270

268:                                              ; preds = %262
  %269 = load i32, i32* @BEFORE, align 4
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32 [ %267, %266 ], [ %269, %268 ]
  store i32 %271, i32* %5, align 4
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %273 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %274 = load i32, i32* %5, align 4
  %275 = call i32 @insert_con_into(%struct.TYPE_29__* %272, %struct.TYPE_29__* %273, i32 %274)
  br label %328

276:                                              ; preds = %243, %239
  %277 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %278 = icmp ne %struct.TYPE_29__* %277, null
  br i1 %278, label %308, label %279

279:                                              ; preds = %276
  %280 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %280, i32 0, i32 4
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %282, i32 0, i32 4
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @CT_WORKSPACE, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %308

289:                                              ; preds = %279
  %290 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %290, i32 0, i32 4
  %292 = load %struct.TYPE_29__*, %struct.TYPE_29__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @L_DEFAULT, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %308

297:                                              ; preds = %289
  %298 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %298, i32 0, i32 4
  %300 = load %struct.TYPE_29__*, %struct.TYPE_29__** %299, align 8
  %301 = call i32 @con_num_children(%struct.TYPE_29__* %300)
  %302 = icmp eq i32 %301, 1
  br i1 %302, label %303, label %308

303:                                              ; preds = %297
  %304 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %305 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %306 = load i32, i32* %4, align 4
  %307 = call i32 @move_to_output_directed(%struct.TYPE_29__* %305, i32 %306)
  br label %339

308:                                              ; preds = %297, %289, %279, %276
  %309 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %310 = load i32, i32* %4, align 4
  %311 = load i32, i32* @D_UP, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %317, label %313

313:                                              ; preds = %308
  %314 = load i32, i32* %4, align 4
  %315 = load i32, i32* @D_LEFT, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %313, %308
  %318 = load i32, i32* @BEFORE, align 4
  br label %321

319:                                              ; preds = %313
  %320 = load i32, i32* @AFTER, align 4
  br label %321

321:                                              ; preds = %319, %317
  %322 = phi i32 [ %318, %317 ], [ %320, %319 ]
  store i32 %322, i32* %5, align 4
  %323 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %324 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %325 = load i32, i32* %5, align 4
  %326 = call i32 @insert_con_into(%struct.TYPE_29__* %323, %struct.TYPE_29__* %324, i32 %325)
  br label %327

327:                                              ; preds = %321
  br label %328

328:                                              ; preds = %327, %270
  br label %329

329:                                              ; preds = %328, %143, %73
  %330 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @FREE(i32 %332)
  %334 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %335 = call i32 @ipc_send_window_event(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_29__* %334)
  %336 = load i32, i32* @croot, align 4
  %337 = call i32 @tree_flatten(i32 %336)
  %338 = call i32 (...) @ewmh_update_wm_desktop()
  br label %339

339:                                              ; preds = %329, %303, %218, %186, %176, %66, %49, %27, %19
  ret void
}

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local i32 @con_num_children(%struct.TYPE_29__*) #1

declare dso_local i32 @move_to_output_directed(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @orientation_from_direction(i32) #1

declare dso_local %struct.TYPE_29__* @con_parent_with_orientation(%struct.TYPE_29__*, i64) #1

declare dso_local i64 @con_is_floating(%struct.TYPE_29__*) #1

declare dso_local i32 @floating_disable(%struct.TYPE_29__*) #1

declare dso_local i64 @con_inside_floating(%struct.TYPE_29__*) #1

declare dso_local i32 @attach_to_workspace(%struct.TYPE_29__*, %struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_29__* @con_get_workspace(%struct.TYPE_29__*) #1

declare dso_local i32 @ws_force_orientation(%struct.TYPE_29__*, i64) #1

declare dso_local %struct.TYPE_29__* @TAILQ_PREV(%struct.TYPE_29__*, i32, i32) #1

declare dso_local %struct.TYPE_29__* @TAILQ_NEXT(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @con_is_leaf(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @con_descend_direction(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @con_orientation(%struct.TYPE_29__*) #1

declare dso_local i32 @insert_con_into(%struct.TYPE_29__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @TAILQ_SWAP(%struct.TYPE_29__*, %struct.TYPE_29__*, i32*, i32) #1

declare dso_local i32 @ipc_send_window_event(i8*, %struct.TYPE_29__*) #1

declare dso_local i32 @con_fullscreen_permits_focusing(%struct.TYPE_29__*) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @FREE(i32) #1

declare dso_local i32 @tree_flatten(i32) #1

declare dso_local i32 @ewmh_update_wm_desktop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
