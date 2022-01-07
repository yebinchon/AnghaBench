; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_parse_ref_filter_atom.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_parse_ref_filter_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i64, i32, i32 }
%struct.TYPE_12__ = type { i8*, i64, i64 (%struct.ref_format*, %struct.TYPE_13__*, i8*, %struct.strbuf*)*, i32 }
%struct.ref_format = type { i32 }
%struct.strbuf = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }

@.str = private unnamed_addr constant [27 x i8] c"malformed field name: %.*s\00", align 1
@used_atom_cnt = common dso_local global i32 0, align 4
@used_atom = common dso_local global %struct.TYPE_13__* null, align 8
@valid_atom = common dso_local global %struct.TYPE_12__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"unknown field name: %.*s\00", align 1
@SOURCE_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [74 x i8] c"not a git repository, but the field '%.*s' requires access to object data\00", align 1
@SOURCE_OBJ = common dso_local global i64 0, align 8
@oi_deref = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@oi = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@need_tagged = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"symref\00", align 1
@need_symref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_format*, i8*, i8*, %struct.strbuf*)* @parse_ref_filter_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ref_filter_atom(%struct.ref_format* %0, i8* %1, i8* %2, %struct.strbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_format*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ref_format* %0, %struct.ref_format** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 42
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %10, align 8
  br label %29

29:                                               ; preds = %26, %22, %4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ule i8* %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %35 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @strbuf_addf_ret(%struct.strbuf* %34, i32 -1, i32 %35, i32 %41, i8* %42)
  store i32 %43, i32* %5, align 4
  br label %304

44:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %79, %44
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @used_atom_cnt, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %45
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** @used_atom, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strlen(i8* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = icmp eq i64 %58, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %49
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** @used_atom, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @memcmp(i8* %71, i8* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %5, align 4
  br label %304

78:                                               ; preds = %65, %49
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %45

82:                                               ; preds = %45
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @memchr(i8* %83, i8 signext 58, i32 %89)
  store i8* %90, i8** %11, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i8*, i8** %11, align 8
  br label %97

95:                                               ; preds = %82
  %96 = load i8*, i8** %8, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i8* [ %94, %93 ], [ %96, %95 ]
  %99 = load i8*, i8** %10, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %133, %97
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @valid_atom, align 8
  %107 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %106)
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %136

109:                                              ; preds = %104
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** @valid_atom, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @strlen(i8* %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %109
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** @valid_atom, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @memcmp(i8* %126, i8* %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %120
  br label %136

132:                                              ; preds = %120, %109
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %104

136:                                              ; preds = %131, %104
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** @valid_atom, align 8
  %138 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %137)
  %139 = load i32, i32* %12, align 4
  %140 = icmp sle i32 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %143 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i8*, i8** %8, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = trunc i64 %148 to i32
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @strbuf_addf_ret(%struct.strbuf* %142, i32 -1, i32 %143, i32 %149, i8* %150)
  store i32 %151, i32* %5, align 4
  br label %304

152:                                              ; preds = %136
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** @valid_atom, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SOURCE_NONE, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %152
  %162 = call i32 (...) @have_git_dir()
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %161
  %165 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %166 = call i32 @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i8*, i8** %8, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = trunc i64 %171 to i32
  %173 = load i8*, i8** %7, align 8
  %174 = call i32 @strbuf_addf_ret(%struct.strbuf* %165, i32 -1, i32 %166, i32 %172, i8* %173)
  store i32 %174, i32* %5, align 4
  br label %304

175:                                              ; preds = %161, %152
  %176 = load i32, i32* @used_atom_cnt, align 4
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* @used_atom_cnt, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* @used_atom_cnt, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** @used_atom, align 8
  %180 = load i32, i32* @used_atom_cnt, align 4
  %181 = call i32 @REALLOC_ARRAY(%struct.TYPE_13__* %179, i32 %180)
  %182 = load i8*, i8** %7, align 8
  %183 = load i8*, i8** %8, align 8
  %184 = load i8*, i8** %7, align 8
  %185 = ptrtoint i8* %183 to i64
  %186 = ptrtoint i8* %184 to i64
  %187 = sub i64 %185, %186
  %188 = trunc i64 %187 to i32
  %189 = call i8* @xmemdupz(i8* %182, i32 %188)
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** @used_atom, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  store i8* %189, i8** %194, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** @valid_atom, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** @used_atom, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 3
  store i32 %200, i32* %205, align 4
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** @valid_atom, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** @used_atom, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 1
  store i64 %211, i64* %216, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** @used_atom, align 8
  %218 = load i32, i32* %13, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @SOURCE_OBJ, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %175
  %226 = load i8*, i8** %7, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 42
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  store i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @oi_deref, i32 0, i32 0), i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @oi_deref, i32 0, i32 1, i32 0), align 8
  br label %232

231:                                              ; preds = %225
  store i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @oi, i32 0, i32 0), i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @oi, i32 0, i32 1, i32 0), align 8
  br label %232

232:                                              ; preds = %231, %230
  br label %233

233:                                              ; preds = %232, %175
  %234 = load i8*, i8** %11, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %255

236:                                              ; preds = %233
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** @used_atom, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = load i8*, i8** %11, align 8
  %244 = load i8*, i8** %7, align 8
  %245 = ptrtoint i8* %243 to i64
  %246 = ptrtoint i8* %244 to i64
  %247 = sub i64 %245, %246
  %248 = getelementptr inbounds i8, i8* %242, i64 %247
  %249 = getelementptr inbounds i8, i8* %248, i64 1
  store i8* %249, i8** %11, align 8
  %250 = load i8*, i8** %11, align 8
  %251 = load i8, i8* %250, align 1
  %252 = icmp ne i8 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %236
  store i8* null, i8** %11, align 8
  br label %254

254:                                              ; preds = %253, %236
  br label %255

255:                                              ; preds = %254, %233
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** @used_atom, align 8
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 2
  %261 = call i32 @memset(i32* %260, i32 0, i32 4)
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** @valid_atom, align 8
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 2
  %267 = load i64 (%struct.ref_format*, %struct.TYPE_13__*, i8*, %struct.strbuf*)*, i64 (%struct.ref_format*, %struct.TYPE_13__*, i8*, %struct.strbuf*)** %266, align 8
  %268 = icmp ne i64 (%struct.ref_format*, %struct.TYPE_13__*, i8*, %struct.strbuf*)* %267, null
  br i1 %268, label %269, label %286

269:                                              ; preds = %255
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** @valid_atom, align 8
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 2
  %275 = load i64 (%struct.ref_format*, %struct.TYPE_13__*, i8*, %struct.strbuf*)*, i64 (%struct.ref_format*, %struct.TYPE_13__*, i8*, %struct.strbuf*)** %274, align 8
  %276 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** @used_atom, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i64 %279
  %281 = load i8*, i8** %11, align 8
  %282 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %283 = call i64 %275(%struct.ref_format* %276, %struct.TYPE_13__* %280, i8* %281, %struct.strbuf* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %269
  store i32 -1, i32* %5, align 4
  br label %304

286:                                              ; preds = %269, %255
  %287 = load i8*, i8** %7, align 8
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 42
  br i1 %290, label %291, label %292

291:                                              ; preds = %286
  store i32 1, i32* @need_tagged, align 4
  br label %292

292:                                              ; preds = %291, %286
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** @valid_atom, align 8
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 0
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 @strcmp(i8* %298, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %292
  store i32 1, i32* @need_symref, align 4
  br label %302

302:                                              ; preds = %301, %292
  %303 = load i32, i32* %13, align 4
  store i32 %303, i32* %5, align 4
  br label %304

304:                                              ; preds = %302, %285, %164, %141, %76, %33
  %305 = load i32, i32* %5, align 4
  ret i32 %305
}

declare dso_local i32 @strbuf_addf_ret(%struct.strbuf*, i32, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @have_git_dir(...) #1

declare dso_local i32 @REALLOC_ARRAY(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @xmemdupz(i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
