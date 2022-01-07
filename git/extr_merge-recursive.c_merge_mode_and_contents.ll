; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_mode_and_contents.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_mode_and_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i8*, i32 }
%struct.diff_filespec = type { i32, i32, i32 }
%struct.merge_file_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to execute internal merge\00", align 1
@blob_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to add %s to database\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"unsupported object type in the tree\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Auto-merging %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*, i8*, i8*, i8*, i32, %struct.merge_file_info*)* @merge_mode_and_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_mode_and_contents(%struct.merge_options* %0, %struct.diff_filespec* %1, %struct.diff_filespec* %2, %struct.diff_filespec* %3, i8* %4, i8* %5, i8* %6, i32 %7, %struct.merge_file_info* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.merge_options*, align 8
  %12 = alloca %struct.diff_filespec*, align 8
  %13 = alloca %struct.diff_filespec*, align 8
  %14 = alloca %struct.diff_filespec*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.merge_file_info*, align 8
  %20 = alloca %struct.TYPE_5__, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %11, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %12, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %13, align 8
  store %struct.diff_filespec* %3, %struct.diff_filespec** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store %struct.merge_file_info* %8, %struct.merge_file_info** %19, align 8
  %23 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %24 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %16, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %9
  %29 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %30 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %31 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %32 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = load i32, i32* %18, align 4
  %37 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %38 = call i32 @merge_mode_and_contents(%struct.merge_options* %29, %struct.diff_filespec* %30, %struct.diff_filespec* %31, %struct.diff_filespec* %32, i8* %33, i8* %34, i8* %35, i32 %36, %struct.merge_file_info* %37)
  store i32 %38, i32* %10, align 4
  br label %328

39:                                               ; preds = %9
  %40 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %41 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %43 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* @S_IFMT, align 4
  %45 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %46 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %44, %47
  %49 = load i32, i32* @S_IFMT, align 4
  %50 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %51 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %48, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %39
  %56 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %57 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %59 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @S_ISREG(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %55
  %64 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %65 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %68 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %71 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %74 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %73, i32 0, i32 1
  %75 = call i32 @oidcpy(i32* %72, i32* %74)
  br label %89

76:                                               ; preds = %55
  %77 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %78 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %81 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %84 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %87 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %86, i32 0, i32 1
  %88 = call i32 @oidcpy(i32* %85, i32* %87)
  br label %89

89:                                               ; preds = %76, %63
  br label %317

90:                                               ; preds = %39
  %91 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %92 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %91, i32 0, i32 1
  %93 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %94 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %93, i32 0, i32 1
  %95 = call i64 @oid_eq(i32* %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %90
  %98 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %99 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %98, i32 0, i32 1
  %100 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %101 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %100, i32 0, i32 1
  %102 = call i64 @oid_eq(i32* %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %106 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %97, %90
  %108 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %109 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %112 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %110, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %107
  %116 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %117 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %120 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %115, %107
  %124 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %125 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %128 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  br label %150

130:                                              ; preds = %115
  %131 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %132 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %135 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 4
  %137 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %138 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %141 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %139, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %130
  %145 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %146 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %145, i32 0, i32 1
  store i32 0, i32* %146, align 4
  %147 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %148 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %147, i32 0, i32 0
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %144, %130
  br label %150

150:                                              ; preds = %149, %123
  %151 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %152 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %151, i32 0, i32 1
  %153 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %154 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %153, i32 0, i32 1
  %155 = call i64 @oid_eq(i32* %152, i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %150
  %158 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %159 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %158, i32 0, i32 1
  %160 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %161 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %160, i32 0, i32 1
  %162 = call i64 @oid_eq(i32* %159, i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %157, %150
  %165 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %166 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %169 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %168, i32 0, i32 1
  %170 = call i32 @oidcpy(i32* %167, i32* %169)
  br label %316

171:                                              ; preds = %157
  %172 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %173 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %172, i32 0, i32 1
  %174 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %175 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %174, i32 0, i32 1
  %176 = call i64 @oid_eq(i32* %173, i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %180 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %183 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %182, i32 0, i32 1
  %184 = call i32 @oidcpy(i32* %181, i32* %183)
  br label %315

185:                                              ; preds = %171
  %186 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %187 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @S_ISREG(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %245

191:                                              ; preds = %185
  store i32 0, i32* %21, align 4
  %192 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %193 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %194 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %195 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %196 = load i8*, i8** %16, align 8
  %197 = load i8*, i8** %17, align 8
  %198 = load i32, i32* %18, align 4
  %199 = call i32 @merge_3way(%struct.merge_options* %192, %struct.TYPE_5__* %20, %struct.diff_filespec* %193, %struct.diff_filespec* %194, %struct.diff_filespec* %195, i8* %196, i8* %197, i32 %198)
  store i32 %199, i32* %22, align 4
  %200 = load i32, i32* %22, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %191
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %202, %191
  %207 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %208 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %209 = call i32 (%struct.merge_options*, i32, ...) @err(%struct.merge_options* %207, i32 %208)
  store i32 %209, i32* %21, align 4
  br label %210

210:                                              ; preds = %206, %202
  %211 = load i32, i32* %21, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %231, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @blob_type, align 4
  %219 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %220 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = call i64 @write_object_file(i32 %215, i32 %217, i32 %218, i32* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %213
  %225 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %226 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %227 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %228 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (%struct.merge_options*, i32, ...) @err(%struct.merge_options* %225, i32 %226, i32 %229)
  store i32 %230, i32* %21, align 4
  br label %231

231:                                              ; preds = %224, %213, %210
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @free(i32 %233)
  %235 = load i32, i32* %21, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %231
  %238 = load i32, i32* %21, align 4
  store i32 %238, i32* %10, align 4
  br label %328

239:                                              ; preds = %231
  %240 = load i32, i32* %22, align 4
  %241 = icmp eq i32 %240, 0
  %242 = zext i1 %241 to i32
  %243 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %244 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 4
  br label %314

245:                                              ; preds = %185
  %246 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %247 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i64 @S_ISGITLINK(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %268

251:                                              ; preds = %245
  %252 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %253 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %254 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 1
  %256 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %257 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %260 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %259, i32 0, i32 1
  %261 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %262 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %261, i32 0, i32 1
  %263 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %264 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %263, i32 0, i32 1
  %265 = call i32 @merge_submodule(%struct.merge_options* %252, i32* %255, i32 %258, i32* %260, i32* %262, i32* %264)
  %266 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %267 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 4
  br label %313

268:                                              ; preds = %245
  %269 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %270 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i64 @S_ISLNK(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %310

274:                                              ; preds = %268
  %275 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %276 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  switch i32 %277, label %309 [
    i32 130, label %278
    i32 129, label %295
    i32 128, label %302
  ]

278:                                              ; preds = %274
  %279 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %280 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 1
  %282 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %283 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %282, i32 0, i32 1
  %284 = call i32 @oidcpy(i32* %281, i32* %283)
  %285 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %286 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %285, i32 0, i32 1
  %287 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %288 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %287, i32 0, i32 1
  %289 = call i64 @oid_eq(i32* %286, i32* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %278
  %292 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %293 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %292, i32 0, i32 1
  store i32 0, i32* %293, align 4
  br label %294

294:                                              ; preds = %291, %278
  br label %309

295:                                              ; preds = %274
  %296 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %297 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 1
  %299 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %300 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %299, i32 0, i32 1
  %301 = call i32 @oidcpy(i32* %298, i32* %300)
  br label %309

302:                                              ; preds = %274
  %303 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %304 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 1
  %306 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %307 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %306, i32 0, i32 1
  %308 = call i32 @oidcpy(i32* %305, i32* %307)
  br label %309

309:                                              ; preds = %274, %302, %295, %294
  br label %312

310:                                              ; preds = %268
  %311 = call i32 @BUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %312

312:                                              ; preds = %310, %309
  br label %313

313:                                              ; preds = %312, %251
  br label %314

314:                                              ; preds = %313, %239
  br label %315

315:                                              ; preds = %314, %178
  br label %316

316:                                              ; preds = %315, %164
  br label %317

317:                                              ; preds = %316, %89
  %318 = load %struct.merge_file_info*, %struct.merge_file_info** %19, align 8
  %319 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %317
  %323 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %324 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %325 = load i8*, i8** %15, align 8
  %326 = call i32 @output(%struct.merge_options* %323, i32 2, i32 %324, i8* %325)
  br label %327

327:                                              ; preds = %322, %317
  store i32 0, i32* %10, align 4
  br label %328

328:                                              ; preds = %327, %237, %28
  %329 = load i32, i32* %10, align 4
  ret i32 %329
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i64 @oid_eq(i32*, i32*) #1

declare dso_local i32 @merge_3way(%struct.merge_options*, %struct.TYPE_5__*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*, i8*, i8*, i32) #1

declare dso_local i32 @err(%struct.merge_options*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @write_object_file(i32, i32, i32, i32*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @merge_submodule(%struct.merge_options*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @output(%struct.merge_options*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
