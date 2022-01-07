; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_rec_scan.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_rec_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"rec_scan (old_dir = %s, new_dir = %s)\0A\00", align 1
@old_dir = common dso_local global i64* null, align 8
@new_dir = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"l1 = %d, l2 = %d, nx = %d, ny = %d, px = %p, py = %p\0A\00", align 1
@old_dir_length = common dso_local global i32 0, align 4
@scan_ignore_list = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"x->filename = %s, y->filename = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"change_attrs (%s/%s) returns error code %d.\0A\00", align 1
@faults = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"rec_scan (%d, %d) succesfully ended.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @rec_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_scan(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %20 = load i64*, i64** @old_dir, align 8
  %21 = ptrtoint i64* %20 to i32
  %22 = load i64*, i64** @new_dir, align 8
  %23 = ptrtoint i64* %22 to i32
  %24 = call i32 (i32, i8*, i32, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load i32*, i32** %6, align 8
  store i32 0, i32* %25, align 4
  %26 = load i64*, i64** @old_dir, align 8
  %27 = call i32 @getdir(i64* %26, %struct.TYPE_12__** %10, i32 1, i32 1)
  store i32 %27, i32* %12, align 4
  %28 = load i64*, i64** @new_dir, align 8
  %29 = call i32 @getdir(i64* %28, %struct.TYPE_12__** %11, i32 1, i32 1)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %36 = call i32 (i32, i8*, i32, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31, i32 %32, i32 %33, %struct.TYPE_12__* %34, %struct.TYPE_12__* %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @old_dir_length, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %63, %40
  %42 = load i32**, i32*** @scan_ignore_list, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %41
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = load i32**, i32*** @scan_ignore_list, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = call %struct.TYPE_12__* @remove_file_from_list(%struct.TYPE_12__* %49, i32* %54)
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %10, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %57 = load i32**, i32*** @scan_ignore_list, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call %struct.TYPE_12__* @remove_file_from_list(%struct.TYPE_12__* %56, i32* %61)
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %11, align 8
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %41

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66, %3
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %8, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %9, align 8
  br label %70

70:                                               ; preds = %241, %67
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = icmp ne %struct.TYPE_12__* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = icmp ne %struct.TYPE_12__* %74, null
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i1 [ false, %70 ], [ %75, %73 ]
  br i1 %77, label %78, label %242

78:                                               ; preds = %76
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, i32, i32, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @strcmp(i32 %88, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %78
  %96 = load i32*, i32** %6, align 8
  store i32 1, i32* %96, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = call i32 @remove_file(i32 %97, %struct.TYPE_12__* %98)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %8, align 8
  br label %241

103:                                              ; preds = %78
  %104 = load i32, i32* %14, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i32*, i32** %6, align 8
  store i32 1, i32* %107, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %110 = call i32 @add_file(i32 %108, %struct.TYPE_12__* %109, %struct.TYPE_12__* null, i32 0)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %9, align 8
  br label %240

114:                                              ; preds = %103
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @S_ISDIR(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %114
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @S_ISLNK(i32 %125)
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  br label %129

129:                                              ; preds = %121, %114
  %130 = phi i1 [ false, %114 ], [ %128, %121 ]
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %15, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @S_ISDIR(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %129
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @S_ISLNK(i32 %142)
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  br label %146

146:                                              ; preds = %138, %129
  %147 = phi i1 [ false, %129 ], [ %145, %138 ]
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %205

151:                                              ; preds = %146
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %196

154:                                              ; preds = %151
  %155 = load i64*, i64** @old_dir, align 8
  %156 = load i32, i32* %4, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @append_path(i64* %155, i32 %156, i32 %159)
  %161 = load i64*, i64** @new_dir, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @append_path(i64* %161, i32 %162, i32 %165)
  call void @rec_scan(i32 %160, i32 %166, i32* %17)
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 2
  %171 = call i32 @get_changed_attrs(%struct.TYPE_13__* %168, %struct.TYPE_13__* %170)
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* %18, align 4
  %173 = and i32 %172, -9
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %154
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %175, %154
  %179 = load i32, i32* %5, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %181 = load i32, i32* %18, align 4
  %182 = call i32 @change_attrs(i32 %179, %struct.TYPE_12__* %180, i32 %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %178
  %186 = load i64*, i64** @new_dir, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @kprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64* %186, i32 %189, i32 %190)
  %192 = load i32, i32* @faults, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* @faults, align 4
  br label %194

194:                                              ; preds = %185, %178
  br label %195

195:                                              ; preds = %194, %175
  br label %204

196:                                              ; preds = %151
  %197 = load i32*, i32** %6, align 8
  store i32 1, i32* %197, align 4
  %198 = load i32, i32* %4, align 4
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %200 = call i32 @remove_file(i32 %198, %struct.TYPE_12__* %199)
  %201 = load i32, i32* %5, align 4
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %203 = call i32 @add_file(i32 %201, %struct.TYPE_12__* %202, %struct.TYPE_12__* null, i32 0)
  br label %204

204:                                              ; preds = %196, %195
  br label %233

205:                                              ; preds = %146
  %206 = load i32, i32* %16, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %205
  %209 = load i32*, i32** %6, align 8
  store i32 1, i32* %209, align 4
  %210 = load i32, i32* %4, align 4
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %212 = call i32 @remove_file(i32 %210, %struct.TYPE_12__* %211)
  %213 = load i32, i32* %5, align 4
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %215 = call i32 @add_file(i32 %213, %struct.TYPE_12__* %214, %struct.TYPE_12__* null, i32 0)
  br label %232

216:                                              ; preds = %205
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 2
  %221 = call i32 @get_changed_attrs(%struct.TYPE_13__* %218, %struct.TYPE_13__* %220)
  store i32 %221, i32* %19, align 4
  %222 = load i32, i32* %19, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %216
  %225 = load i32*, i32** %6, align 8
  store i32 1, i32* %225, align 4
  %226 = load i32, i32* %5, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %229 = load i32, i32* %19, align 4
  %230 = call i32 @add_file(i32 %226, %struct.TYPE_12__* %227, %struct.TYPE_12__* %228, i32 %229)
  br label %231

231:                                              ; preds = %224, %216
  br label %232

232:                                              ; preds = %231, %208
  br label %233

233:                                              ; preds = %232, %204
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %235, align 8
  store %struct.TYPE_12__* %236, %struct.TYPE_12__** %8, align 8
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  store %struct.TYPE_12__* %239, %struct.TYPE_12__** %9, align 8
  br label %240

240:                                              ; preds = %233, %106
  br label %241

241:                                              ; preds = %240, %95
  br label %70

242:                                              ; preds = %76
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %244 = icmp ne %struct.TYPE_12__* %243, null
  br i1 %244, label %248, label %245

245:                                              ; preds = %242
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %247 = icmp ne %struct.TYPE_12__* %246, null
  br i1 %247, label %248, label %250

248:                                              ; preds = %245, %242
  %249 = load i32*, i32** %6, align 8
  store i32 1, i32* %249, align 4
  br label %250

250:                                              ; preds = %248, %245
  br label %251

251:                                              ; preds = %254, %250
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %253 = icmp ne %struct.TYPE_12__* %252, null
  br i1 %253, label %254, label %261

254:                                              ; preds = %251
  %255 = load i32, i32* %4, align 4
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %257 = call i32 @remove_file(i32 %255, %struct.TYPE_12__* %256)
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  store %struct.TYPE_12__* %260, %struct.TYPE_12__** %8, align 8
  br label %251

261:                                              ; preds = %251
  br label %262

262:                                              ; preds = %265, %261
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %264 = icmp ne %struct.TYPE_12__* %263, null
  br i1 %264, label %265, label %272

265:                                              ; preds = %262
  %266 = load i32, i32* %5, align 4
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %268 = call i32 @add_file(i32 %266, %struct.TYPE_12__* %267, %struct.TYPE_12__* null, i32 0)
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %270, align 8
  store %struct.TYPE_12__* %271, %struct.TYPE_12__** %9, align 8
  br label %262

272:                                              ; preds = %262
  %273 = load i64*, i64** @old_dir, align 8
  %274 = load i32, i32* %4, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %273, i64 %275
  store i64 0, i64* %276, align 8
  %277 = load i64*, i64** @new_dir, align 8
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %277, i64 %279
  store i64 0, i64* %280, align 8
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %282 = call i32 @free_filelist(%struct.TYPE_12__* %281)
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %284 = call i32 @free_filelist(%struct.TYPE_12__* %283)
  %285 = load i32, i32* %4, align 4
  %286 = load i32, i32* %5, align 4
  %287 = call i32 (i32, i8*, i32, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %285, i32 %286)
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @getdir(i64*, %struct.TYPE_12__**, i32, i32) #1

declare dso_local %struct.TYPE_12__* @remove_file_from_list(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @remove_file(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @add_file(i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @append_path(i64*, i32, i32) #1

declare dso_local i32 @get_changed_attrs(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @change_attrs(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @kprintf(i8*, i64*, i32, i32) #1

declare dso_local i32 @free_filelist(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
