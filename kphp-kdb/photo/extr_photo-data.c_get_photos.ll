; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_get_photos.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_get_photos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [77 x i8] c"get photos: (uid = %d) (aid = %d) (offset = %d) (limit = %d) (reverse = %d)\0A\00", align 1
@index_mode = common dso_local global i32 0, align 4
@write_only = common dso_local global i32 0, align 4
@debug_buff = common dso_local global i8* null, align 8
@types = common dso_local global i32* null, align 8
@PHOTO_TYPE = common dso_local global i64 0, align 8
@MAX_RESULT = common dso_local global i32 0, align 4
@NOAIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"a:%d:{\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"s:5:\22count\22;i:%d;\00", align 1
@result_obj = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"i:%d;i:%d;\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"i:%d;%s\00", align 1
@return_fields = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@debug_error = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_photos(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i8* %7, i8** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i8** %8, i8*** %19, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @dbg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @index_mode, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %9
  %37 = load i32, i32* @write_only, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %36, %9
  %41 = phi i1 [ false, %9 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i8*, i8** @debug_buff, align 8
  %45 = load i8**, i8*** %19, align 8
  store i8* %44, i8** %45, align 8
  %46 = call i32 (...) @debug_init()
  %47 = load i32, i32* %11, align 4
  %48 = call %struct.TYPE_8__* @conv_uid_get(i32 %47)
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %20, align 8
  %49 = load i32*, i32** @types, align 8
  %50 = load i64, i64* @PHOTO_TYPE, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 @get_fields(i32* %51, i8* %52)
  store i32 %53, i32* %21, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %55 = icmp eq %struct.TYPE_8__* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %21, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %40
  store i32 0, i32* %10, align 4
  br label %238

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @MAX_RESULT, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @MAX_RESULT, align 4
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @MAX_RESULT, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @MAX_RESULT, align 4
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %78, %74
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NOAIO, align 4
  %86 = call i32 @load_user_metafile(%struct.TYPE_8__* %81, i32 %84, i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %88 = call i32 @user_loaded(%struct.TYPE_8__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %80
  store i32 -2, i32* %10, align 4
  br label %238

91:                                               ; preds = %80
  %92 = load i8*, i8** %18, align 8
  %93 = load i64, i64* @PHOTO_TYPE, align 8
  %94 = call i32* @predicate_init(i8* %92, i64 %93)
  store i32* %94, i32** %22, align 8
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %91
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32*, i32** %22, align 8
  %101 = call i32 @user_get_photos_count_pred(%struct.TYPE_8__* %98, i32 %99, i32* %100)
  store i32 %101, i32* %25, align 4
  %102 = load i32, i32* %25, align 4
  store i32 %102, i32* %26, align 4
  %103 = load i32, i32* %25, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  br label %238

106:                                              ; preds = %97
  %107 = load i32, i32* %25, align 4
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* %14, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %118

118:                                              ; preds = %114, %106
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %121, %118
  br label %157

123:                                              ; preds = %91
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %123
  %127 = load i32*, i32** %22, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %146

129:                                              ; preds = %126
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i32*, i32** %22, align 8
  %133 = call i32 @user_get_photos_count_pred(%struct.TYPE_8__* %130, i32 %131, i32* %132)
  store i32 %133, i32* %25, align 4
  %134 = load i32, i32* %25, align 4
  store i32 %134, i32* %26, align 4
  %135 = load i32, i32* %25, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  store i32 0, i32* %10, align 4
  br label %238

138:                                              ; preds = %129
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %25, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %25, align 4
  %142 = load i32, i32* %25, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 0, i32* %25, align 4
  br label %145

145:                                              ; preds = %144, %138
  br label %156

146:                                              ; preds = %126, %123
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32*, i32** %22, align 8
  %152 = call i32 @user_get_photos(%struct.TYPE_8__* %147, i32 %148, i32 %149, i32 %150, i32* %151)
  store i32 %152, i32* %25, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @user_get_photos_count(%struct.TYPE_8__* %153, i32 %154)
  store i32 %155, i32* %26, align 4
  br label %156

156:                                              ; preds = %146, %145
  br label %157

157:                                              ; preds = %156, %122
  %158 = load i32, i32* %25, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 0, i32* %10, align 4
  br label %238

161:                                              ; preds = %157
  %162 = load i32, i32* %25, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i32, i32* %14, align 4
  store i32 %166, i32* %25, align 4
  br label %167

167:                                              ; preds = %165, %161
  %168 = load i32, i32* %25, align 4
  %169 = load i32, i32* %17, align 4
  %170 = add nsw i32 %168, %169
  %171 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %17, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load i32, i32* %26, align 4
  %176 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %174, %167
  store i32 0, i32* %24, align 4
  br label %178

178:                                              ; preds = %229, %177
  %179 = load i32, i32* %24, align 4
  %180 = load i32, i32* %25, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %232

182:                                              ; preds = %178
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load i32, i32* %25, align 4
  %187 = load i32, i32* %24, align 4
  %188 = sub nsw i32 %186, %187
  %189 = sub nsw i32 %188, 1
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %189, %190
  store i32 %191, i32* %23, align 4
  br label %205

192:                                              ; preds = %182
  %193 = load i32, i32* %17, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %192
  %196 = load i32*, i32** %22, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load i32, i32* %24, align 4
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %199, %200
  store i32 %201, i32* %23, align 4
  br label %204

202:                                              ; preds = %195, %192
  %203 = load i32, i32* %24, align 4
  store i32 %203, i32* %23, align 4
  br label %204

204:                                              ; preds = %202, %198
  br label %205

205:                                              ; preds = %204, %185
  %206 = load i32*, i32** @result_obj, align 8
  %207 = load i32, i32* %23, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = call i32 @event_get_photo_id(i32* %209)
  store i32 %210, i32* %27, align 4
  %211 = load i32, i32* %21, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %205
  %214 = load i32, i32* %27, align 4
  %215 = load i32, i32* %27, align 4
  %216 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %214, i32 %215)
  br label %228

217:                                              ; preds = %205
  %218 = load i32, i32* %27, align 4
  %219 = load i32*, i32** @result_obj, align 8
  %220 = load i32, i32* %23, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i64, i64* @PHOTO_TYPE, align 8
  %224 = load i32, i32* @return_fields, align 4
  %225 = load i32, i32* %21, align 4
  %226 = call i32 @event_to_array(i32* %222, i64 %223, i32 %224, i32 %225)
  %227 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %218, i32 %226)
  br label %228

228:                                              ; preds = %217, %213
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %24, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %24, align 4
  br label %178

232:                                              ; preds = %178
  %233 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %234 = load i64, i64* @debug_error, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  store i32 0, i32* %10, align 4
  br label %238

237:                                              ; preds = %232
  store i32 1, i32* %10, align 4
  br label %238

238:                                              ; preds = %237, %236, %160, %137, %105, %90, %59
  %239 = load i32, i32* %10, align 4
  ret i32 %239
}

declare dso_local i32 @dbg(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @debug_init(...) #1

declare dso_local %struct.TYPE_8__* @conv_uid_get(i32) #1

declare dso_local i32 @get_fields(i32*, i8*) #1

declare dso_local i32 @load_user_metafile(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @user_loaded(%struct.TYPE_8__*) #1

declare dso_local i32* @predicate_init(i8*, i64) #1

declare dso_local i32 @user_get_photos_count_pred(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @user_get_photos(%struct.TYPE_8__*, i32, i32, i32, i32*) #1

declare dso_local i32 @user_get_photos_count(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @event_get_photo_id(i32*) #1

declare dso_local i32 @event_to_array(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
