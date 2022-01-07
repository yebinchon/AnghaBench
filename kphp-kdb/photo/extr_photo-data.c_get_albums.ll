; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_get_albums.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_get_albums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"get_albums (uid = %d) (fields = %s) (offset = %d) (limit = %d)\0A\00", align 1
@index_mode = common dso_local global i32 0, align 4
@write_only = common dso_local global i32 0, align 4
@debug_buff = common dso_local global i8* null, align 8
@types = common dso_local global i32* null, align 8
@ALBUM_TYPE = common dso_local global i64 0, align 8
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
define dso_local i32 @get_albums(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i8*, i8** %13, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @dbg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @index_mode, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %8
  %34 = load i32, i32* @write_only, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %33, %8
  %38 = phi i1 [ false, %8 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i8*, i8** @debug_buff, align 8
  %42 = load i8**, i8*** %17, align 8
  store i8* %41, i8** %42, align 8
  %43 = call i32 (...) @debug_init()
  %44 = load i32, i32* %10, align 4
  %45 = call %struct.TYPE_9__* @conv_uid_get(i32 %44)
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %18, align 8
  %46 = load i32*, i32** @types, align 8
  %47 = load i64, i64* @ALBUM_TYPE, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @get_fields(i32* %48, i8* %49)
  store i32 %50, i32* %19, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %52 = icmp eq %struct.TYPE_9__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %19, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %37
  store i32 0, i32* %9, align 4
  br label %240

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @MAX_RESULT, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @MAX_RESULT, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %12, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @MAX_RESULT, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @MAX_RESULT, align 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NOAIO, align 4
  %83 = call i32 @load_user_metafile(%struct.TYPE_9__* %78, i32 %81, i32 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %85 = call i32 @user_loaded(%struct.TYPE_9__* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  store i32 -2, i32* %9, align 4
  br label %240

88:                                               ; preds = %77
  %89 = load i8*, i8** %16, align 8
  %90 = load i64, i64* @ALBUM_TYPE, align 8
  %91 = call i32* @predicate_init(i8* %89, i64 %90)
  store i32* %91, i32** %20, align 8
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %88
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %96 = load i32*, i32** %20, align 8
  %97 = call i32 @user_get_albums_count_pred(%struct.TYPE_9__* %95, i32* %96)
  store i32 %97, i32* %23, align 4
  %98 = load i32, i32* %23, align 4
  store i32 %98, i32* %24, align 4
  %99 = load i32, i32* %23, align 4
  %100 = icmp sge i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* %11, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %94
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %110, %94
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %117, %114
  br label %154

119:                                              ; preds = %88
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %119
  %123 = load i32*, i32** %20, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %141

125:                                              ; preds = %122
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %127 = load i32*, i32** %20, align 8
  %128 = call i32 @user_get_albums_count_pred(%struct.TYPE_9__* %126, i32* %127)
  store i32 %128, i32* %23, align 4
  %129 = load i32, i32* %23, align 4
  store i32 %129, i32* %24, align 4
  %130 = load i32, i32* %23, align 4
  %131 = icmp sge i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %23, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %23, align 4
  %137 = load i32, i32* %23, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %125
  store i32 0, i32* %23, align 4
  br label %140

140:                                              ; preds = %139, %125
  br label %153

141:                                              ; preds = %122, %119
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32*, i32** %20, align 8
  %146 = call i32 @user_get_albums(%struct.TYPE_9__* %142, i32 %143, i32 %144, i32* %145)
  store i32 %146, i32* %23, align 4
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %148 = call i32 @user_get_albums_count(%struct.TYPE_9__* %147)
  store i32 %148, i32* %24, align 4
  %149 = load i32, i32* %23, align 4
  %150 = icmp sge i32 %149, 0
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  br label %153

153:                                              ; preds = %141, %140
  br label %154

154:                                              ; preds = %153, %118
  %155 = load i32, i32* %23, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %23, align 4
  br label %160

160:                                              ; preds = %158, %154
  %161 = load i32, i32* %23, align 4
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %161, %162
  %164 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load i32, i32* %24, align 4
  %169 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %167, %160
  store i32 0, i32* %22, align 4
  br label %171

171:                                              ; preds = %231, %170
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %23, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %234

175:                                              ; preds = %171
  %176 = load i32, i32* %14, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = load i32, i32* %23, align 4
  %180 = load i32, i32* %22, align 4
  %181 = sub nsw i32 %179, %180
  %182 = sub nsw i32 %181, 1
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %182, %183
  store i32 %184, i32* %21, align 4
  br label %198

185:                                              ; preds = %175
  %186 = load i32, i32* %15, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load i32*, i32** %20, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i32, i32* %22, align 4
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %192, %193
  store i32 %194, i32* %21, align 4
  br label %197

195:                                              ; preds = %188, %185
  %196 = load i32, i32* %22, align 4
  store i32 %196, i32* %21, align 4
  br label %197

197:                                              ; preds = %195, %191
  br label %198

198:                                              ; preds = %197, %178
  %199 = load i32*, i32** @result_obj, align 8
  %200 = load i32, i32* %21, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = call i32 @event_get_album_id(i32* %202)
  store i32 %203, i32* %25, align 4
  %204 = load i32, i32* %19, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %198
  %207 = load i32, i32* %25, align 4
  %208 = load i32, i32* %15, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %212 = load i32, i32* %25, align 4
  %213 = call i32 @user_get_photos_count(%struct.TYPE_9__* %211, i32 %212)
  br label %216

214:                                              ; preds = %206
  %215 = load i32, i32* %25, align 4
  br label %216

216:                                              ; preds = %214, %210
  %217 = phi i32 [ %213, %210 ], [ %215, %214 ]
  %218 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %207, i32 %217)
  br label %230

219:                                              ; preds = %198
  %220 = load i32, i32* %25, align 4
  %221 = load i32*, i32** @result_obj, align 8
  %222 = load i32, i32* %21, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i64, i64* @ALBUM_TYPE, align 8
  %226 = load i32, i32* @return_fields, align 4
  %227 = load i32, i32* %19, align 4
  %228 = call i32 @event_to_array(i32* %224, i64 %225, i32 %226, i32 %227)
  %229 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %220, i32 %228)
  br label %230

230:                                              ; preds = %219, %216
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %22, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %22, align 4
  br label %171

234:                                              ; preds = %171
  %235 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %236 = load i64, i64* @debug_error, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  store i32 0, i32* %9, align 4
  br label %240

239:                                              ; preds = %234
  store i32 1, i32* %9, align 4
  br label %240

240:                                              ; preds = %239, %238, %87, %56
  %241 = load i32, i32* %9, align 4
  ret i32 %241
}

declare dso_local i32 @dbg(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @debug_init(...) #1

declare dso_local %struct.TYPE_9__* @conv_uid_get(i32) #1

declare dso_local i32 @get_fields(i32*, i8*) #1

declare dso_local i32 @load_user_metafile(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @user_loaded(%struct.TYPE_9__*) #1

declare dso_local i32* @predicate_init(i8*, i64) #1

declare dso_local i32 @user_get_albums_count_pred(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @user_get_albums(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @user_get_albums_count(%struct.TYPE_9__*) #1

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @event_get_album_id(i32*) #1

declare dso_local i32 @user_get_photos_count(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @event_to_array(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
