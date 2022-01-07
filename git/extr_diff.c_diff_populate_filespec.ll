; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_populate_filespec.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_populate_filespec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }
%struct.repository = type { i32 }
%struct.diff_filespec = type { i8*, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i32, i32 }

@CHECK_SIZE_ONLY = common dso_local global i32 0, align 4
@global_conv_flags_eol = common dso_local global i32 0, align 4
@CONV_EOL_RNDTRP_DIE = common dso_local global i32 0, align 4
@CONV_EOL_RNDTRP_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"internal error: asking to populate invalid file.\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CHECK_BINARY = common dso_local global i32 0, align 4
@big_file_threshold = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"unable to read %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_populate_filespec(%struct.repository* %0, %struct.diff_filespec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.diff_filespec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.strbuf, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @CHECK_SIZE_ONLY, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* @global_conv_flags_eol, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @CONV_EOL_RNDTRP_DIE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @CONV_EOL_RNDTRP_WARN, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %25, %3
  %28 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %29 = call i32 @DIFF_FILE_VALID(%struct.diff_filespec* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %35 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @S_ISDIR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %284

40:                                               ; preds = %33
  %41 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %42 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %284

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %51 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 0, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %284

55:                                               ; preds = %49, %46
  %56 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %57 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @S_ISGITLINK(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @diff_populate_gitlink(%struct.diff_filespec* %62, i32 %63)
  store i32 %64, i32* %4, align 4
  br label %284

65:                                               ; preds = %55
  %66 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %67 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.repository*, %struct.repository** %5, align 8
  %72 = getelementptr inbounds %struct.repository, %struct.repository* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %75 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %78 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %77, i32 0, i32 5
  %79 = call i64 @reuse_worktree_file(i32 %73, i32 %76, i32* %78, i32 0)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %222

81:                                               ; preds = %70, %65
  %82 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %83 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %84 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @lstat(i32 %85, %struct.stat* %12)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %173, %122, %88
  store i32 -1, i32* %9, align 4
  br label %90

90:                                               ; preds = %106, %89
  %91 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %92 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %92, align 8
  %93 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %94 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %4, align 4
  br label %284

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @xsize_t(i32 %98)
  %100 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %101 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %103 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %96
  br label %90

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @S_ISLNK(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %107
  %113 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %114 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %115 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %118 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @strbuf_readlink(%struct.strbuf* %14, i32 %116, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %89

123:                                              ; preds = %112
  %124 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %127 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = call i8* @strbuf_detach(%struct.strbuf* %14, i64* null)
  %129 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %130 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %132 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %131, i32 0, i32 2
  store i32 1, i32* %132, align 8
  store i32 0, i32* %4, align 4
  br label %284

133:                                              ; preds = %107
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load %struct.repository*, %struct.repository** %5, align 8
  %138 = getelementptr inbounds %struct.repository, %struct.repository* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %141 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @would_convert_to_git(i32 %139, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %136
  store i32 0, i32* %4, align 4
  br label %284

146:                                              ; preds = %136, %133
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @CHECK_BINARY, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %146
  %152 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %153 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @big_file_threshold, align 8
  %156 = icmp sgt i64 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %151
  %158 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %159 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %164 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %163, i32 0, i32 3
  store i32 1, i32* %164, align 4
  store i32 0, i32* %4, align 4
  br label %284

165:                                              ; preds = %157, %151, %146
  %166 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %167 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @O_RDONLY, align 4
  %170 = call i32 @open(i32 %168, i32 %169)
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %89

174:                                              ; preds = %165
  %175 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %176 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* @PROT_READ, align 4
  %179 = load i32, i32* @MAP_PRIVATE, align 4
  %180 = load i32, i32* %13, align 4
  %181 = call i8* @xmmap(i32* null, i64 %177, i32 %178, i32 %179, i32 %180, i32 0)
  %182 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %183 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %182, i32 0, i32 0
  store i8* %181, i8** %183, align 8
  %184 = load i32, i32* %13, align 4
  %185 = call i32 @close(i32 %184)
  %186 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %187 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %186, i32 0, i32 4
  store i32 1, i32* %187, align 8
  %188 = load %struct.repository*, %struct.repository** %5, align 8
  %189 = getelementptr inbounds %struct.repository, %struct.repository* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %192 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %195 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %198 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = call i64 @convert_to_git(i32 %190, i32 %193, i8* %196, i64 %199, %struct.strbuf* %11, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %221

203:                                              ; preds = %174
  store i64 0, i64* %15, align 8
  %204 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %205 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %208 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @munmap(i8* %206, i64 %209)
  %211 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %212 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %211, i32 0, i32 4
  store i32 0, i32* %212, align 8
  %213 = call i8* @strbuf_detach(%struct.strbuf* %11, i64* %15)
  %214 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %215 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %214, i32 0, i32 0
  store i8* %213, i8** %215, align 8
  %216 = load i64, i64* %15, align 8
  %217 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %218 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %217, i32 0, i32 1
  store i64 %216, i64* %218, align 8
  %219 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %220 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %219, i32 0, i32 2
  store i32 1, i32* %220, align 8
  br label %221

221:                                              ; preds = %203, %174
  br label %283

222:                                              ; preds = %70
  %223 = load i32, i32* %8, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* @CHECK_BINARY, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %263

230:                                              ; preds = %225, %222
  %231 = load %struct.repository*, %struct.repository** %5, align 8
  %232 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %233 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %232, i32 0, i32 5
  %234 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %235 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %234, i32 0, i32 1
  %236 = call i32 @oid_object_info(%struct.repository* %231, i32* %233, i64* %235)
  store i32 %236, i32* %16, align 4
  %237 = load i32, i32* %16, align 4
  %238 = icmp ult i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %230
  %240 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %241 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %240, i32 0, i32 5
  %242 = call i32 @oid_to_hex(i32* %241)
  %243 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %239, %230
  %245 = load i32, i32* %8, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  store i32 0, i32* %4, align 4
  br label %284

248:                                              ; preds = %244
  %249 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %250 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @big_file_threshold, align 8
  %253 = icmp sgt i64 %251, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %248
  %255 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %256 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %259, label %262

259:                                              ; preds = %254
  %260 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %261 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %260, i32 0, i32 3
  store i32 1, i32* %261, align 4
  store i32 0, i32* %4, align 4
  br label %284

262:                                              ; preds = %254, %248
  br label %263

263:                                              ; preds = %262, %225
  %264 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %265 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %264, i32 0, i32 5
  %266 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %267 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %266, i32 0, i32 1
  %268 = call i8* @read_object_file(i32* %265, i32* %16, i64* %267)
  %269 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %270 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %269, i32 0, i32 0
  store i8* %268, i8** %270, align 8
  %271 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %272 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = icmp ne i8* %273, null
  br i1 %274, label %280, label %275

275:                                              ; preds = %263
  %276 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %277 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %276, i32 0, i32 5
  %278 = call i32 @oid_to_hex(i32* %277)
  %279 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %278)
  br label %280

280:                                              ; preds = %275, %263
  %281 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %282 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %281, i32 0, i32 2
  store i32 1, i32* %282, align 8
  br label %283

283:                                              ; preds = %280, %221
  store i32 0, i32* %4, align 4
  br label %284

284:                                              ; preds = %283, %259, %247, %162, %145, %123, %90, %61, %54, %45, %39
  %285 = load i32, i32* %4, align 4
  ret i32 %285
}

declare dso_local i32 @DIFF_FILE_VALID(%struct.diff_filespec*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @diff_populate_gitlink(%struct.diff_filespec*, i32) #1

declare dso_local i64 @reuse_worktree_file(i32, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i64 @xsize_t(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @strbuf_readlink(%struct.strbuf*, i32, i64) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i64*) #1

declare dso_local i32 @would_convert_to_git(i32, i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i8* @xmmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @convert_to_git(i32, i32, i8*, i64, %struct.strbuf*, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @oid_object_info(%struct.repository*, i32*, i64*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i8* @read_object_file(i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
