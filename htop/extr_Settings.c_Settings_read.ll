; ModuleID = '/home/carl/AnghaBench/htop/extr_Settings.c_Settings_read.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Settings.c_Settings_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sort_key\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"sort_direction\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"tree_view\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"hide_threads\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"hide_kernel_threads\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"hide_userland_threads\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"shadow_other_users\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"show_thread_names\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"show_program_path\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"highlight_base_name\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"highlight_megabytes\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"highlight_threads\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"header_margin\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"expand_system_time\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"detailed_cpu_time\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"cpu_count_from_zero\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"update_process_names\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"account_guest_in_cpu_meter\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"color_scheme\00", align 1
@LAST_COLORSCHEME = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [12 x i8] c"left_meters\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"right_meters\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"left_meter_modes\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"right_meter_modes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @Settings_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Settings_read(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = call i32 (...) @CRT_dropPrivileges()
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %6, align 8
  %15 = call i32 (...) @CRT_restorePrivileges()
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %413

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %400, %33, %19
  %21 = load i32*, i32** %6, align 8
  %22 = call i8* @String_readLine(i32* %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %403

26:                                               ; preds = %20
  %27 = load i8*, i8** %9, align 8
  %28 = call i8** @String_split(i8* %27, i8 signext 61, i32* %10)
  store i8** %28, i8*** %11, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i8**, i8*** %11, align 8
  %35 = call i32 @String_freeArray(i8** %34)
  br label %20

36:                                               ; preds = %26
  %37 = load i8**, i8*** %11, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @String_eq(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 20
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 19
  %48 = load i8**, i8*** %11, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @readFields(i32 %45, i32* %47, i8* %50)
  store i32 1, i32* %8, align 4
  br label %400

52:                                               ; preds = %36
  %53 = load i8**, i8*** %11, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @String_eq(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i8**, i8*** %11, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @atoi(i8* %61)
  %63 = getelementptr i8, i8* %62, i64 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 18
  store i8* %63, i8** %65, align 8
  br label %399

66:                                               ; preds = %52
  %67 = load i8**, i8*** %11, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @String_eq(i8* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i8**, i8*** %11, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @atoi(i8* %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 17
  store i8* %76, i8** %78, align 8
  br label %398

79:                                               ; preds = %66
  %80 = load i8**, i8*** %11, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @String_eq(i8* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i8**, i8*** %11, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @atoi(i8* %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 16
  store i8* %89, i8** %91, align 8
  br label %397

92:                                               ; preds = %79
  %93 = load i8**, i8*** %11, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @String_eq(i8* %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load i8**, i8*** %11, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i8* @atoi(i8* %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 15
  store i8* %102, i8** %104, align 8
  br label %396

105:                                              ; preds = %92
  %106 = load i8**, i8*** %11, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @String_eq(i8* %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load i8**, i8*** %11, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @atoi(i8* %114)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 14
  store i8* %115, i8** %117, align 8
  br label %395

118:                                              ; preds = %105
  %119 = load i8**, i8*** %11, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @String_eq(i8* %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load i8**, i8*** %11, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i8* @atoi(i8* %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 13
  store i8* %128, i8** %130, align 8
  br label %394

131:                                              ; preds = %118
  %132 = load i8**, i8*** %11, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @String_eq(i8* %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load i8**, i8*** %11, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i8* @atoi(i8* %140)
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 12
  store i8* %141, i8** %143, align 8
  br label %393

144:                                              ; preds = %131
  %145 = load i8**, i8*** %11, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @String_eq(i8* %147, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %144
  %151 = load i8**, i8*** %11, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i8* @atoi(i8* %153)
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 11
  store i8* %154, i8** %156, align 8
  br label %392

157:                                              ; preds = %144
  %158 = load i8**, i8*** %11, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @String_eq(i8* %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  %164 = load i8**, i8*** %11, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 1
  %166 = load i8*, i8** %165, align 8
  %167 = call i8* @atoi(i8* %166)
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 10
  store i8* %167, i8** %169, align 8
  br label %391

170:                                              ; preds = %157
  %171 = load i8**, i8*** %11, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i64 @String_eq(i8* %173, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = load i8**, i8*** %11, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 1
  %179 = load i8*, i8** %178, align 8
  %180 = call i8* @atoi(i8* %179)
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 9
  store i8* %180, i8** %182, align 8
  br label %390

183:                                              ; preds = %170
  %184 = load i8**, i8*** %11, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @String_eq(i8* %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %183
  %190 = load i8**, i8*** %11, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 1
  %192 = load i8*, i8** %191, align 8
  %193 = call i8* @atoi(i8* %192)
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 8
  store i8* %193, i8** %195, align 8
  br label %389

196:                                              ; preds = %183
  %197 = load i8**, i8*** %11, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @String_eq(i8* %199, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %196
  %203 = load i8**, i8*** %11, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i8* @atoi(i8* %205)
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 7
  store i8* %206, i8** %208, align 8
  br label %388

209:                                              ; preds = %196
  %210 = load i8**, i8*** %11, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 0
  %212 = load i8*, i8** %211, align 8
  %213 = call i64 @String_eq(i8* %212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %209
  %216 = load i8**, i8*** %11, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i64 1
  %218 = load i8*, i8** %217, align 8
  %219 = call i8* @atoi(i8* %218)
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 6
  store i8* %219, i8** %221, align 8
  br label %387

222:                                              ; preds = %209
  %223 = load i8**, i8*** %11, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i64 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i64 @String_eq(i8* %225, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %222
  %229 = load i8**, i8*** %11, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 1
  %231 = load i8*, i8** %230, align 8
  %232 = call i8* @atoi(i8* %231)
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 5
  store i8* %232, i8** %234, align 8
  br label %386

235:                                              ; preds = %222
  %236 = load i8**, i8*** %11, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 0
  %238 = load i8*, i8** %237, align 8
  %239 = call i64 @String_eq(i8* %238, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %235
  %242 = load i8**, i8*** %11, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 1
  %244 = load i8*, i8** %243, align 8
  %245 = call i8* @atoi(i8* %244)
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 5
  store i8* %245, i8** %247, align 8
  br label %385

248:                                              ; preds = %235
  %249 = load i8**, i8*** %11, align 8
  %250 = getelementptr inbounds i8*, i8** %249, i64 0
  %251 = load i8*, i8** %250, align 8
  %252 = call i64 @String_eq(i8* %251, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %248
  %255 = load i8**, i8*** %11, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 1
  %257 = load i8*, i8** %256, align 8
  %258 = call i8* @atoi(i8* %257)
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 4
  store i8* %258, i8** %260, align 8
  br label %384

261:                                              ; preds = %248
  %262 = load i8**, i8*** %11, align 8
  %263 = getelementptr inbounds i8*, i8** %262, i64 0
  %264 = load i8*, i8** %263, align 8
  %265 = call i64 @String_eq(i8* %264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %261
  %268 = load i8**, i8*** %11, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i64 1
  %270 = load i8*, i8** %269, align 8
  %271 = call i8* @atoi(i8* %270)
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 3
  store i8* %271, i8** %273, align 8
  br label %383

274:                                              ; preds = %261
  %275 = load i8**, i8*** %11, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 0
  %277 = load i8*, i8** %276, align 8
  %278 = call i64 @String_eq(i8* %277, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %274
  %281 = load i8**, i8*** %11, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 1
  %283 = load i8*, i8** %282, align 8
  %284 = call i8* @atoi(i8* %283)
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 2
  store i8* %284, i8** %286, align 8
  br label %382

287:                                              ; preds = %274
  %288 = load i8**, i8*** %11, align 8
  %289 = getelementptr inbounds i8*, i8** %288, i64 0
  %290 = load i8*, i8** %289, align 8
  %291 = call i64 @String_eq(i8* %290, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %300

293:                                              ; preds = %287
  %294 = load i8**, i8*** %11, align 8
  %295 = getelementptr inbounds i8*, i8** %294, i64 1
  %296 = load i8*, i8** %295, align 8
  %297 = call i8* @atoi(i8* %296)
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  store i8* %297, i8** %299, align 8
  br label %381

300:                                              ; preds = %287
  %301 = load i8**, i8*** %11, align 8
  %302 = getelementptr inbounds i8*, i8** %301, i64 0
  %303 = load i8*, i8** %302, align 8
  %304 = call i64 @String_eq(i8* %303, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %328

306:                                              ; preds = %300
  %307 = load i8**, i8*** %11, align 8
  %308 = getelementptr inbounds i8*, i8** %307, i64 1
  %309 = load i8*, i8** %308, align 8
  %310 = call i8* @atoi(i8* %309)
  %311 = ptrtoint i8* %310 to i64
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 0
  store i64 %311, i64* %313, align 8
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = icmp slt i64 %316, 0
  br i1 %317, label %324, label %318

318:                                              ; preds = %306
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @LAST_COLORSCHEME, align 8
  %323 = icmp sge i64 %321, %322
  br i1 %323, label %324, label %327

324:                                              ; preds = %318, %306
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 0
  store i64 0, i64* %326, align 8
  br label %327

327:                                              ; preds = %324, %318
  br label %380

328:                                              ; preds = %300
  %329 = load i8**, i8*** %11, align 8
  %330 = getelementptr inbounds i8*, i8** %329, i64 0
  %331 = load i8*, i8** %330, align 8
  %332 = call i64 @String_eq(i8* %331, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %328
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %336 = load i8**, i8*** %11, align 8
  %337 = getelementptr inbounds i8*, i8** %336, i64 1
  %338 = load i8*, i8** %337, align 8
  %339 = call i32 @Settings_readMeters(%struct.TYPE_6__* %335, i8* %338, i32 0)
  store i32 1, i32* %7, align 4
  br label %379

340:                                              ; preds = %328
  %341 = load i8**, i8*** %11, align 8
  %342 = getelementptr inbounds i8*, i8** %341, i64 0
  %343 = load i8*, i8** %342, align 8
  %344 = call i64 @String_eq(i8* %343, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %340
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %348 = load i8**, i8*** %11, align 8
  %349 = getelementptr inbounds i8*, i8** %348, i64 1
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 @Settings_readMeters(%struct.TYPE_6__* %347, i8* %350, i32 1)
  store i32 1, i32* %7, align 4
  br label %378

352:                                              ; preds = %340
  %353 = load i8**, i8*** %11, align 8
  %354 = getelementptr inbounds i8*, i8** %353, i64 0
  %355 = load i8*, i8** %354, align 8
  %356 = call i64 @String_eq(i8* %355, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0))
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %364

358:                                              ; preds = %352
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %360 = load i8**, i8*** %11, align 8
  %361 = getelementptr inbounds i8*, i8** %360, i64 1
  %362 = load i8*, i8** %361, align 8
  %363 = call i32 @Settings_readMeterModes(%struct.TYPE_6__* %359, i8* %362, i32 0)
  store i32 1, i32* %7, align 4
  br label %377

364:                                              ; preds = %352
  %365 = load i8**, i8*** %11, align 8
  %366 = getelementptr inbounds i8*, i8** %365, i64 0
  %367 = load i8*, i8** %366, align 8
  %368 = call i64 @String_eq(i8* %367, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0))
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %364
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %372 = load i8**, i8*** %11, align 8
  %373 = getelementptr inbounds i8*, i8** %372, i64 1
  %374 = load i8*, i8** %373, align 8
  %375 = call i32 @Settings_readMeterModes(%struct.TYPE_6__* %371, i8* %374, i32 1)
  store i32 1, i32* %7, align 4
  br label %376

376:                                              ; preds = %370, %364
  br label %377

377:                                              ; preds = %376, %358
  br label %378

378:                                              ; preds = %377, %346
  br label %379

379:                                              ; preds = %378, %334
  br label %380

380:                                              ; preds = %379, %327
  br label %381

381:                                              ; preds = %380, %293
  br label %382

382:                                              ; preds = %381, %280
  br label %383

383:                                              ; preds = %382, %267
  br label %384

384:                                              ; preds = %383, %254
  br label %385

385:                                              ; preds = %384, %241
  br label %386

386:                                              ; preds = %385, %228
  br label %387

387:                                              ; preds = %386, %215
  br label %388

388:                                              ; preds = %387, %202
  br label %389

389:                                              ; preds = %388, %189
  br label %390

390:                                              ; preds = %389, %176
  br label %391

391:                                              ; preds = %390, %163
  br label %392

392:                                              ; preds = %391, %150
  br label %393

393:                                              ; preds = %392, %137
  br label %394

394:                                              ; preds = %393, %124
  br label %395

395:                                              ; preds = %394, %111
  br label %396

396:                                              ; preds = %395, %98
  br label %397

397:                                              ; preds = %396, %85
  br label %398

398:                                              ; preds = %397, %72
  br label %399

399:                                              ; preds = %398, %58
  br label %400

400:                                              ; preds = %399, %42
  %401 = load i8**, i8*** %11, align 8
  %402 = call i32 @String_freeArray(i8** %401)
  br label %20

403:                                              ; preds = %25
  %404 = load i32*, i32** %6, align 8
  %405 = call i32 @fclose(i32* %404)
  %406 = load i32, i32* %7, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %411, label %408

408:                                              ; preds = %403
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %410 = call i32 @Settings_defaultMeters(%struct.TYPE_6__* %409)
  br label %411

411:                                              ; preds = %408, %403
  %412 = load i32, i32* %8, align 4
  store i32 %412, i32* %3, align 4
  br label %413

413:                                              ; preds = %411, %18
  %414 = load i32, i32* %3, align 4
  ret i32 %414
}

declare dso_local i32 @CRT_dropPrivileges(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @CRT_restorePrivileges(...) #1

declare dso_local i8* @String_readLine(i32*) #1

declare dso_local i8** @String_split(i8*, i8 signext, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @String_freeArray(i8**) #1

declare dso_local i64 @String_eq(i8*, i8*) #1

declare dso_local i32 @readFields(i32, i32*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @Settings_readMeters(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @Settings_readMeterModes(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @Settings_defaultMeters(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
