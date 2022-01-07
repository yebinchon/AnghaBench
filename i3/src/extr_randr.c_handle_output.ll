; ModuleID = '/home/carl/AnghaBench/i3/src/extr_randr.c_handle_output.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_randr.c_handle_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, %struct.TYPE_15__, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }
%struct.output_name = type { %struct.output_name* }

@primary = common dso_local global %struct.TYPE_18__* null, align 8
@names = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"found output with name %s\0A\00", align 1
@XCB_NONE = common dso_local global i64 0, align 8
@outputs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Skipping output %s: could not get CRTC (%p)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"width/height 0/0, disabling output\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"mode: %dx%d+%d+%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, %struct.TYPE_16__*, i32, i32*)* @handle_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_output(i32* %0, i64 %1, %struct.TYPE_16__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.output_name*, align 8
  %15 = alloca %struct.output_name*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.TYPE_17__* @get_output_by_id(i64 %18)
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %12, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %21 = icmp ne %struct.TYPE_17__* %20, null
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %5
  %26 = call i8* @scalloc(i32 1, i32 80)
  %27 = bitcast i8* %26 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %12, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 9
  %30 = call i32 @SLIST_INIT(i32* %29)
  br label %31

31:                                               ; preds = %25, %5
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 10
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** @primary, align 8
  %36 = icmp ne %struct.TYPE_18__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** @primary, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %37, %31
  %44 = phi i1 [ false, %31 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %54, %43
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 9
  %51 = call i32 @SLIST_EMPTY(i32* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 9
  %57 = call %struct.output_name* @SLIST_FIRST(i32* %56)
  %58 = getelementptr inbounds %struct.output_name, %struct.output_name* %57, i32 0, i32 0
  %59 = load %struct.output_name*, %struct.output_name** %58, align 8
  %60 = call i32 @FREE(%struct.output_name* %59)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 9
  %63 = call %struct.output_name* @SLIST_FIRST(i32* %62)
  store %struct.output_name* %63, %struct.output_name** %14, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 9
  %66 = load i32, i32* @names, align 4
  %67 = call i32 @SLIST_REMOVE_HEAD(i32* %65, i32 %66)
  %68 = load %struct.output_name*, %struct.output_name** %14, align 8
  %69 = call i32 @FREE(%struct.output_name* %68)
  br label %48

70:                                               ; preds = %48
  %71 = call i8* @scalloc(i32 1, i32 8)
  %72 = bitcast i8* %71 to %struct.output_name*
  store %struct.output_name* %72, %struct.output_name** %15, align 8
  %73 = load %struct.output_name*, %struct.output_name** %15, align 8
  %74 = getelementptr inbounds %struct.output_name, %struct.output_name* %73, i32 0, i32 0
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %76 = call i32 @xcb_randr_get_output_info_name_length(%struct.TYPE_16__* %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %78 = call i32 @xcb_randr_get_output_info_name(%struct.TYPE_16__* %77)
  %79 = call i32 @sasprintf(%struct.output_name** %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 9
  %82 = load %struct.output_name*, %struct.output_name** %15, align 8
  %83 = load i32, i32* @names, align 4
  %84 = call i32 @SLIST_INSERT_HEAD(i32* %81, %struct.output_name* %82, i32 %83)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %86 = call i32 @output_primary_name(%struct.TYPE_17__* %85)
  %87 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @XCB_NONE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %70
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %93
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %103 = load i32, i32* @outputs, align 4
  %104 = call i32 @TAILQ_INSERT_HEAD(i32* @outputs, %struct.TYPE_17__* %102, i32 %103)
  br label %109

105:                                              ; preds = %96
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %107 = load i32, i32* @outputs, align 4
  %108 = call i32 @TAILQ_INSERT_TAIL(i32* @outputs, %struct.TYPE_17__* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %101
  br label %119

110:                                              ; preds = %93
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 2
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %110
  br label %119

119:                                              ; preds = %118, %109
  br label %238

120:                                              ; preds = %70
  %121 = load i32*, i32** %6, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @xcb_randr_get_crtc_info(i32* %121, i64 %124, i32 %125)
  store i32 %126, i32* %16, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call %struct.TYPE_17__* @xcb_randr_get_crtc_info_reply(i32* %127, i32 %128, i32* null)
  store %struct.TYPE_17__* %129, %struct.TYPE_17__** %11, align 8
  %130 = icmp eq %struct.TYPE_17__* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %120
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %133 = call i32 @output_primary_name(%struct.TYPE_17__* %132)
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %135 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %133, %struct.TYPE_17__* %134)
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %137 = call i32 @free(%struct.TYPE_17__* %136)
  br label %238

138:                                              ; preds = %120
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @update_if_necessary(i64* %141, i32 %144)
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @update_if_necessary(i64* %148, i32 %151)
  %153 = or i32 %145, %152
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @update_if_necessary(i64* %156, i32 %159)
  %161 = or i32 %153, %160
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @update_if_necessary(i64* %164, i32 %167)
  %169 = or i32 %161, %168
  store i32 %169, i32* %17, align 4
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %171 = call i32 @free(%struct.TYPE_17__* %170)
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %138
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br label %183

183:                                              ; preds = %177, %138
  %184 = phi i1 [ false, %138 ], [ %182, %177 ]
  %185 = zext i1 %184 to i32
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %183
  %193 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %238

194:                                              ; preds = %183
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %198, i64 %202, i64 %206, i64 %210)
  %212 = load i32, i32* %17, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %194
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %235, label %217

217:                                              ; preds = %214, %194
  %218 = load i32, i32* %13, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %234, label %220

220:                                              ; preds = %217
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %227 = load i32, i32* @outputs, align 4
  %228 = call i32 @TAILQ_INSERT_HEAD(i32* @outputs, %struct.TYPE_17__* %226, i32 %227)
  br label %233

229:                                              ; preds = %220
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %231 = load i32, i32* @outputs, align 4
  %232 = call i32 @TAILQ_INSERT_TAIL(i32* @outputs, %struct.TYPE_17__* %230, i32 %231)
  br label %233

233:                                              ; preds = %229, %225
  br label %234

234:                                              ; preds = %233, %217
  br label %238

235:                                              ; preds = %214
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 3
  store i32 1, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %234, %192, %131, %119
  ret void
}

declare dso_local %struct.TYPE_17__* @get_output_by_id(i64) #1

declare dso_local i8* @scalloc(i32, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local i32 @FREE(%struct.output_name*) #1

declare dso_local %struct.output_name* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @sasprintf(%struct.output_name**, i8*, i32, i32) #1

declare dso_local i32 @xcb_randr_get_output_info_name_length(%struct.TYPE_16__*) #1

declare dso_local i32 @xcb_randr_get_output_info_name(%struct.TYPE_16__*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.output_name*, i32) #1

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local i32 @output_primary_name(%struct.TYPE_17__*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @xcb_randr_get_crtc_info(i32*, i64, i32) #1

declare dso_local %struct.TYPE_17__* @xcb_randr_get_crtc_info_reply(i32*, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

declare dso_local i32 @update_if_necessary(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
