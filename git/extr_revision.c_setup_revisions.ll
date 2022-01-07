; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_setup_revisions.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_setup_revisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32, i64 }
%struct.rev_info = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_16__, i64, i64, i64, %struct.TYPE_15__, i64, i64, i64, i64, %struct.TYPE_13__, i64, i32, i64, i64, i64, %struct.TYPE_14__, i32, %struct.TYPE_11__, i64, i32*, i32, i32, %struct.TYPE_10__, i64, i32, i32, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_12__, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.setup_revision_opt = type { i8*, i32, i32 (%struct.rev_info.0*, %struct.setup_revision_opt*)*, i32*, i64 }
%struct.rev_info.0 = type opaque
%struct.object_id = type { i32 }
%struct.object = type { i32 }
%struct.object_context = type { i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@REVARG_CANNOT_BE_FILENAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"--stdin\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"--stdin given twice?\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"--end-of-options\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"bad revision '%s'\00", align 1
@DIFF_FORMAT_NO_OUTPUT = common dso_local global i32 0, align 4
@DIFF_PICKAXE_KINDS_MASK = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"--combined-all-paths makes no sense without -c or --cc\00", align 1
@GREP_PATTERN_TYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"cannot combine --reverse with --walk-reflogs\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"cannot combine --walk-reflogs with history-limiting options\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"cannot combine --parents and --children\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"cannot combine --reverse with --graph\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"cannot combine --walk-reflogs with --graph\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"cannot combine --no-walk with --graph\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"cannot use --grep-reflog without --walk-reflogs\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"--first-parent is incompatible with --bisect\00", align 1
@DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [55 x i8] c"-L does not yet support diff formats besides -p and -s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_revisions(i32 %0, i8** %1, %struct.rev_info* %2, %struct.setup_revision_opt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.rev_info*, align 8
  %8 = alloca %struct.setup_revision_opt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.argv_array, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.object_id, align 4
  %23 = alloca %struct.object*, align 8
  %24 = alloca %struct.object_context, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.rev_info* %2, %struct.rev_info** %7, align 8
  store %struct.setup_revision_opt* %3, %struct.setup_revision_opt** %8, align 8
  store i32 0, i32* %13, align 4
  %25 = bitcast %struct.argv_array* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 16, i1 false)
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %26 = load %struct.setup_revision_opt*, %struct.setup_revision_opt** %8, align 8
  %27 = icmp ne %struct.setup_revision_opt* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.setup_revision_opt*, %struct.setup_revision_opt** %8, align 8
  %30 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %16, align 8
  br label %32

32:                                               ; preds = %28, %4
  %33 = load %struct.setup_revision_opt*, %struct.setup_revision_opt** %8, align 8
  %34 = icmp ne %struct.setup_revision_opt* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.setup_revision_opt*, %struct.setup_revision_opt** %8, align 8
  %37 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %12, align 4
  br label %81

41:                                               ; preds = %35, %32
  store i32 0, i32* %12, align 4
  store i32 1, i32* %9, align 4
  br label %42

42:                                               ; preds = %77, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = load i8**, i8*** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %18, align 8
  %52 = load i8*, i8** %18, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %77

56:                                               ; preds = %46
  %57 = load i8**, i8*** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* null, i8** %60, align 8
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %5, align 4
  %62 = load i8**, i8*** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %62, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %56
  %70 = load i8**, i8*** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = call i32 @argv_array_pushv(%struct.argv_array* %15, i8** %74)
  br label %76

76:                                               ; preds = %69, %56
  store i32 1, i32* %12, align 4
  br label %80

77:                                               ; preds = %55
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %42

80:                                               ; preds = %76, %42
  br label %81

81:                                               ; preds = %80, %40
  store i32 0, i32* %10, align 4
  %82 = load %struct.setup_revision_opt*, %struct.setup_revision_opt** %8, align 8
  %83 = icmp ne %struct.setup_revision_opt* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.setup_revision_opt*, %struct.setup_revision_opt** %8, align 8
  %86 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  br label %89

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i32 [ %87, %84 ], [ 0, %88 ]
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* @REVARG_CANNOT_BE_FILENAME, align 4
  %95 = load i32, i32* %14, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %93, %89
  store i32 1, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %98

98:                                               ; preds = %239, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %242

102:                                              ; preds = %98
  %103 = load i8**, i8*** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %19, align 8
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %190, label %110

110:                                              ; preds = %102
  %111 = load i8*, i8** %19, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 45
  br i1 %114, label %115, label %190

115:                                              ; preds = %110
  %116 = load i8*, i8** %16, align 8
  %117 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %9, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i8**, i8*** %6, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = call i32 @handle_revision_pseudo_opt(i8* %116, %struct.rev_info* %117, i32 %120, i8** %124, i32* %10)
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %20, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %115
  %129 = load i32, i32* %20, align 4
  %130 = sub nsw i32 %129, 1
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %239

133:                                              ; preds = %115
  %134 = load i8*, i8** %19, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %160, label %137

137:                                              ; preds = %133
  %138 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %139 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %138, i32 0, i32 32
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load i8*, i8** %19, align 8
  %144 = load i8**, i8*** %6, align 8
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8*, i8** %144, i64 %147
  store i8* %143, i8** %148, align 8
  br label %239

149:                                              ; preds = %137
  %150 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %151 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %150, i32 0, i32 31
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = icmp ne i32 %152, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %149
  %158 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %159 = call i32 @read_revisions_from_stdin(%struct.rev_info* %158, %struct.argv_array* %15)
  br label %239

160:                                              ; preds = %133
  %161 = load i8*, i8** %19, align 8
  %162 = call i64 @strcmp(i8* %161, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  store i32 1, i32* %17, align 4
  br label %239

165:                                              ; preds = %160
  %166 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* %9, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load i8**, i8*** %6, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  %174 = load i8**, i8*** %6, align 8
  %175 = load %struct.setup_revision_opt*, %struct.setup_revision_opt** %8, align 8
  %176 = call i32 @handle_revision_opt(%struct.rev_info* %166, i32 %169, i8** %173, i32* %11, i8** %174, %struct.setup_revision_opt* %175)
  store i32 %176, i32* %20, align 4
  %177 = load i32, i32* %20, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %165
  %180 = load i32, i32* %20, align 4
  %181 = sub nsw i32 %180, 1
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %9, align 4
  br label %239

184:                                              ; preds = %165
  %185 = load i32, i32* %20, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = call i32 @exit(i32 128) #4
  unreachable

189:                                              ; preds = %184
  br label %239

190:                                              ; preds = %110, %102
  %191 = load i8*, i8** %19, align 8
  %192 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %14, align 4
  %195 = call i64 @handle_revision_arg(i8* %191, %struct.rev_info* %192, i32 %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %237

197:                                              ; preds = %190
  %198 = load i32, i32* %12, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %197
  %201 = load i8*, i8** %19, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 94
  br i1 %204, label %205, label %208

205:                                              ; preds = %200, %197
  %206 = load i8*, i8** %19, align 8
  %207 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %206)
  br label %208

208:                                              ; preds = %205, %200
  %209 = load i32, i32* %9, align 4
  store i32 %209, i32* %21, align 4
  br label %210

210:                                              ; preds = %228, %208
  %211 = load i32, i32* %21, align 4
  %212 = load i32, i32* %5, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %231

214:                                              ; preds = %210
  %215 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %216 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %215, i32 0, i32 30
  %217 = load i32, i32* %216, align 8
  %218 = load i8**, i8*** %6, align 8
  %219 = load i32, i32* %21, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = load i32, i32* %21, align 4
  %224 = load i32, i32* %9, align 4
  %225 = icmp eq i32 %223, %224
  %226 = zext i1 %225 to i32
  %227 = call i32 @verify_filename(i32 %217, i8* %222, i32 %226)
  br label %228

228:                                              ; preds = %214
  %229 = load i32, i32* %21, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %21, align 4
  br label %210

231:                                              ; preds = %210
  %232 = load i8**, i8*** %6, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %232, i64 %234
  %236 = call i32 @argv_array_pushv(%struct.argv_array* %15, i8** %235)
  br label %242

237:                                              ; preds = %190
  store i32 1, i32* %13, align 4
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238, %189, %179, %164, %157, %142, %128
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %9, align 4
  br label %98

242:                                              ; preds = %231, %98
  %243 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %15, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %242
  %247 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %248 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %247, i32 0, i32 21
  %249 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %250 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %249, i32 0, i32 30
  %251 = load i32, i32* %250, align 8
  %252 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %15, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @parse_pathspec(%struct.TYPE_14__* %248, i32 0, i32 0, i32 %251, i32 %253)
  br label %255

255:                                              ; preds = %246, %242
  %256 = call i32 @argv_array_clear(%struct.argv_array* %15)
  %257 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %258 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %257, i32 0, i32 25
  %259 = load i32*, i32** %258, align 8
  %260 = icmp eq i32* %259, null
  br i1 %260, label %261, label %273

261:                                              ; preds = %255
  %262 = load %struct.setup_revision_opt*, %struct.setup_revision_opt** %8, align 8
  %263 = icmp ne %struct.setup_revision_opt* %262, null
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = load %struct.setup_revision_opt*, %struct.setup_revision_opt** %8, align 8
  %266 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %265, i32 0, i32 3
  %267 = load i32*, i32** %266, align 8
  br label %269

268:                                              ; preds = %261
  br label %269

269:                                              ; preds = %268, %264
  %270 = phi i32* [ %267, %264 ], [ null, %268 ]
  %271 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %272 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %271, i32 0, i32 25
  store i32* %270, i32** %272, align 8
  br label %273

273:                                              ; preds = %269, %255
  %274 = load %struct.setup_revision_opt*, %struct.setup_revision_opt** %8, align 8
  %275 = icmp ne %struct.setup_revision_opt* %274, null
  br i1 %275, label %276, label %289

276:                                              ; preds = %273
  %277 = load %struct.setup_revision_opt*, %struct.setup_revision_opt** %8, align 8
  %278 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %277, i32 0, i32 2
  %279 = load i32 (%struct.rev_info.0*, %struct.setup_revision_opt*)*, i32 (%struct.rev_info.0*, %struct.setup_revision_opt*)** %278, align 8
  %280 = icmp ne i32 (%struct.rev_info.0*, %struct.setup_revision_opt*)* %279, null
  br i1 %280, label %281, label %289

281:                                              ; preds = %276
  %282 = load %struct.setup_revision_opt*, %struct.setup_revision_opt** %8, align 8
  %283 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %282, i32 0, i32 2
  %284 = load i32 (%struct.rev_info.0*, %struct.setup_revision_opt*)*, i32 (%struct.rev_info.0*, %struct.setup_revision_opt*)** %283, align 8
  %285 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %286 = bitcast %struct.rev_info* %285 to %struct.rev_info.0*
  %287 = load %struct.setup_revision_opt*, %struct.setup_revision_opt** %8, align 8
  %288 = call i32 %284(%struct.rev_info.0* %286, %struct.setup_revision_opt* %287)
  br label %289

289:                                              ; preds = %281, %276, %273
  %290 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %291 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %290, i32 0, i32 29
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %289
  %295 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %296 = call i32 @prepare_show_merge(%struct.rev_info* %295)
  br label %297

297:                                              ; preds = %294, %289
  %298 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %299 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %298, i32 0, i32 25
  %300 = load i32*, i32** %299, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %302, label %344

302:                                              ; preds = %297
  %303 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %304 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %303, i32 0, i32 28
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %344, label %308

308:                                              ; preds = %302
  %309 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %310 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %309, i32 0, i32 27
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %344, label %313

313:                                              ; preds = %308
  %314 = load i32, i32* %13, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %344, label %316

316:                                              ; preds = %313
  %317 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %318 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %317, i32 0, i32 26
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %321 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %320, i32 0, i32 25
  %322 = load i32*, i32** %321, align 8
  %323 = call i64 @get_oid_with_context(i32 %319, i32* %322, i32 0, %struct.object_id* %22, %struct.object_context* %24)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %316
  %326 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %327 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %326, i32 0, i32 25
  %328 = load i32*, i32** %327, align 8
  %329 = call i32 @diagnose_missing_default(i32* %328)
  br label %330

330:                                              ; preds = %325, %316
  %331 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %332 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %333 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %332, i32 0, i32 25
  %334 = load i32*, i32** %333, align 8
  %335 = call %struct.object* @get_reference(%struct.rev_info* %331, i32* %334, %struct.object_id* %22, i32 0)
  store %struct.object* %335, %struct.object** %23, align 8
  %336 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %337 = load %struct.object*, %struct.object** %23, align 8
  %338 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %339 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %338, i32 0, i32 25
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds %struct.object_context, %struct.object_context* %24, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @add_pending_object_with_mode(%struct.rev_info* %336, %struct.object* %337, i32* %340, i32 %342)
  br label %344

344:                                              ; preds = %330, %313, %308, %302, %297
  %345 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %346 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %345, i32 0, i32 6
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @DIFF_FORMAT_NO_OUTPUT, align 4
  %350 = xor i32 %349, -1
  %351 = and i32 %348, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %344
  %354 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %355 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %354, i32 0, i32 0
  store i32 1, i32* %355, align 8
  br label %356

356:                                              ; preds = %353, %344
  %357 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %358 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %357, i32 0, i32 6
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @DIFF_PICKAXE_KINDS_MASK, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %377, label %364

364:                                              ; preds = %356
  %365 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %366 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %365, i32 0, i32 6
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 6
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %377, label %370

370:                                              ; preds = %364
  %371 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %372 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %371, i32 0, i32 6
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 4
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %370, %364, %356
  %378 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %379 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %378, i32 0, i32 0
  store i32 1, i32* %379, align 8
  br label %380

380:                                              ; preds = %377, %370
  %381 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %382 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %381, i32 0, i32 6
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 5
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %380
  %387 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %388 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %387, i32 0, i32 24
  store i64 0, i64* %388, align 8
  br label %389

389:                                              ; preds = %386, %380
  %390 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %391 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %401

394:                                              ; preds = %389
  %395 = load i32, i32* @the_repository, align 4
  %396 = call i32 @generation_numbers_enabled(i32 %395)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %401, label %398

398:                                              ; preds = %394
  %399 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %400 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %399, i32 0, i32 2
  store i32 1, i32* %400, align 8
  br label %401

401:                                              ; preds = %398, %394, %389
  %402 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %403 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %402, i32 0, i32 21
  %404 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %436

407:                                              ; preds = %401
  %408 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %409 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %408, i32 0, i32 23
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 0
  %411 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %412 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %411, i32 0, i32 21
  %413 = call i32 @copy_pathspec(i32* %410, %struct.TYPE_14__* %412)
  %414 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %415 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %414, i32 0, i32 6
  %416 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %415, i32 0, i32 4
  %417 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %423, label %420

420:                                              ; preds = %407
  %421 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %422 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %421, i32 0, i32 3
  store i32 1, i32* %422, align 4
  br label %423

423:                                              ; preds = %420, %407
  %424 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %425 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %424, i32 0, i32 22
  %426 = load i32, i32* %425, align 8
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %435, label %428

428:                                              ; preds = %423
  %429 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %430 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %429, i32 0, i32 6
  %431 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %430, i32 0, i32 3
  %432 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %433 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %432, i32 0, i32 21
  %434 = call i32 @copy_pathspec(i32* %431, %struct.TYPE_14__* %433)
  br label %435

435:                                              ; preds = %428, %423
  br label %436

436:                                              ; preds = %435, %401
  %437 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %438 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %437, i32 0, i32 18
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %444

441:                                              ; preds = %436
  %442 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %443 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %442, i32 0, i32 20
  store i64 0, i64* %443, align 8
  br label %444

444:                                              ; preds = %441, %436
  %445 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %446 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %445, i32 0, i32 19
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %456

449:                                              ; preds = %444
  %450 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %451 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %450, i32 0, i32 18
  %452 = load i64, i64* %451, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %456, label %454

454:                                              ; preds = %449
  %455 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  br label %456

456:                                              ; preds = %454, %449, %444
  %457 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %458 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %457, i32 0, i32 17
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %461 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %460, i32 0, i32 6
  %462 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %461, i32 0, i32 2
  store i32 %459, i32* %462, align 8
  %463 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %464 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %463, i32 0, i32 7
  %465 = load i64, i64* %464, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %472

467:                                              ; preds = %456
  %468 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %469 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %468, i32 0, i32 2
  store i32 1, i32* %469, align 8
  %470 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %471 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %470, i32 0, i32 1
  store i32 1, i32* %471, align 4
  br label %472

472:                                              ; preds = %467, %456
  %473 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %474 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %473, i32 0, i32 6
  %475 = call i32 @diff_setup_done(%struct.TYPE_16__* %474)
  %476 = load i32, i32* @GREP_PATTERN_TYPE_UNSPECIFIED, align 4
  %477 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %478 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %477, i32 0, i32 10
  %479 = call i32 @grep_commit_pattern_type(i32 %476, %struct.TYPE_15__* %478)
  %480 = call i32 (...) @get_log_output_encoding()
  %481 = call i32 @is_encoding_utf8(i32 %480)
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %487, label %483

483:                                              ; preds = %472
  %484 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %485 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %484, i32 0, i32 10
  %486 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %485, i32 0, i32 0
  store i32 1, i32* %486, align 8
  br label %487

487:                                              ; preds = %483, %472
  %488 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %489 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %488, i32 0, i32 10
  %490 = call i32 @compile_grep_patterns(%struct.TYPE_15__* %489)
  %491 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %492 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %491, i32 0, i32 14
  %493 = load i64, i64* %492, align 8
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %502

495:                                              ; preds = %487
  %496 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %497 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %496, i32 0, i32 11
  %498 = load i64, i64* %497, align 8
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %502

500:                                              ; preds = %495
  %501 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %502

502:                                              ; preds = %500, %495, %487
  %503 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %504 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %503, i32 0, i32 11
  %505 = load i64, i64* %504, align 8
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %514

507:                                              ; preds = %502
  %508 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %509 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %508, i32 0, i32 2
  %510 = load i32, i32* %509, align 8
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %514

512:                                              ; preds = %507
  %513 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  br label %514

514:                                              ; preds = %512, %507, %502
  %515 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %516 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %515, i32 0, i32 16
  %517 = load i64, i64* %516, align 8
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %527

519:                                              ; preds = %514
  %520 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %521 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %520, i32 0, i32 15
  %522 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %521, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %527

525:                                              ; preds = %519
  %526 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %527

527:                                              ; preds = %525, %519, %514
  %528 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %529 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %528, i32 0, i32 14
  %530 = load i64, i64* %529, align 8
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %532, label %539

532:                                              ; preds = %527
  %533 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %534 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %533, i32 0, i32 12
  %535 = load i64, i64* %534, align 8
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %539

537:                                              ; preds = %532
  %538 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %539

539:                                              ; preds = %537, %532, %527
  %540 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %541 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %540, i32 0, i32 11
  %542 = load i64, i64* %541, align 8
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %544, label %551

544:                                              ; preds = %539
  %545 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %546 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %545, i32 0, i32 12
  %547 = load i64, i64* %546, align 8
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %551

549:                                              ; preds = %544
  %550 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  br label %551

551:                                              ; preds = %549, %544, %539
  %552 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %553 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %552, i32 0, i32 13
  %554 = load i64, i64* %553, align 8
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %556, label %563

556:                                              ; preds = %551
  %557 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %558 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %557, i32 0, i32 12
  %559 = load i64, i64* %558, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %563

561:                                              ; preds = %556
  %562 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  br label %563

563:                                              ; preds = %561, %556, %551
  %564 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %565 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %564, i32 0, i32 11
  %566 = load i64, i64* %565, align 8
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %576, label %568

568:                                              ; preds = %563
  %569 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %570 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %569, i32 0, i32 10
  %571 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %570, i32 0, i32 1
  %572 = load i64, i64* %571, align 8
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %574, label %576

574:                                              ; preds = %568
  %575 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0))
  br label %576

576:                                              ; preds = %574, %568, %563
  %577 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %578 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %577, i32 0, i32 9
  %579 = load i64, i64* %578, align 8
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %581, label %589

581:                                              ; preds = %576
  %582 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %583 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %582, i32 0, i32 8
  %584 = load i64, i64* %583, align 8
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %589

586:                                              ; preds = %581
  %587 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  %588 = call i32 (i8*, ...) @die(i8* %587)
  br label %589

589:                                              ; preds = %586, %581, %576
  %590 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %591 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %590, i32 0, i32 7
  %592 = load i64, i64* %591, align 8
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %608

594:                                              ; preds = %589
  %595 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %596 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %595, i32 0, i32 6
  %597 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = load i32, i32* @DIFF_FORMAT_PATCH, align 4
  %600 = load i32, i32* @DIFF_FORMAT_NO_OUTPUT, align 4
  %601 = or i32 %599, %600
  %602 = xor i32 %601, -1
  %603 = and i32 %598, %602
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %594
  %606 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0))
  %607 = call i32 (i8*, ...) @die(i8* %606)
  br label %608

608:                                              ; preds = %605, %594, %589
  %609 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %610 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %609, i32 0, i32 4
  %611 = load i64, i64* %610, align 8
  %612 = icmp slt i64 %611, 0
  br i1 %612, label %613, label %619

613:                                              ; preds = %608
  %614 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %615 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %614, i32 0, i32 5
  %616 = load i64, i64* %615, align 8
  %617 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %618 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %617, i32 0, i32 4
  store i64 %616, i64* %618, align 8
  br label %619

619:                                              ; preds = %613, %608
  %620 = load i32, i32* %11, align 4
  ret i32 %620
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @argv_array_pushv(%struct.argv_array*, i8**) #2

declare dso_local i32 @handle_revision_pseudo_opt(i8*, %struct.rev_info*, i32, i8**, i32*) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @read_revisions_from_stdin(%struct.rev_info*, %struct.argv_array*) #2

declare dso_local i32 @handle_revision_opt(%struct.rev_info*, i32, i8**, i32*, i8**, %struct.setup_revision_opt*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @handle_revision_arg(i8*, %struct.rev_info*, i32, i32) #2

declare dso_local i32 @verify_filename(i32, i8*, i32) #2

declare dso_local i32 @parse_pathspec(%struct.TYPE_14__*, i32, i32, i32, i32) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

declare dso_local i32 @prepare_show_merge(%struct.rev_info*) #2

declare dso_local i64 @get_oid_with_context(i32, i32*, i32, %struct.object_id*, %struct.object_context*) #2

declare dso_local i32 @diagnose_missing_default(i32*) #2

declare dso_local %struct.object* @get_reference(%struct.rev_info*, i32*, %struct.object_id*, i32) #2

declare dso_local i32 @add_pending_object_with_mode(%struct.rev_info*, %struct.object*, i32*, i32) #2

declare dso_local i32 @generation_numbers_enabled(i32) #2

declare dso_local i32 @copy_pathspec(i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @diff_setup_done(%struct.TYPE_16__*) #2

declare dso_local i32 @grep_commit_pattern_type(i32, %struct.TYPE_15__*) #2

declare dso_local i32 @is_encoding_utf8(i32) #2

declare dso_local i32 @get_log_output_encoding(...) #2

declare dso_local i32 @compile_grep_patterns(%struct.TYPE_15__*) #2

declare dso_local i8* @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
