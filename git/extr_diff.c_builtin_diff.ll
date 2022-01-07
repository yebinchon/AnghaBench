; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_builtin_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_builtin_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.diff_filespec = type { i32, i64, i32, i32, i32 }
%struct.diff_options = type { i8*, i8*, i64, i32, i64, %struct.TYPE_14__, i32, i8*, i32, i32, i32, %struct.TYPE_16__*, i32, i64 }
%struct.TYPE_14__ = type { i64, i64, i64, i32, i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i8* }
%struct.userdiff_driver = type { i32 }
%struct.emit_callback = type { i8**, i32, i8*, i32, i32, i32, i32, %struct.strbuf*, %struct.diff_options*, i32 }
%struct.userdiff_funcname = type { i32, i32 }

@DIFF_METAINFO = common dso_local global i32 0, align 4
@DIFF_RESET = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"a/\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"b/\00", align 1
@DIFF_SUBMODULE_LOG = common dso_local global i64 0, align 8
@DIFF_SUBMODULE_INLINE_DIFF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s%sdiff --git %s %s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s%snew file mode %06o%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s%sdeleted file mode %06o%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%s%sold mode %06o%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s%snew mode %06o%s\0A\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@DIFF_SYMBOL_HEADER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"%sBinary files %s and %s differ\0A\00", align 1
@DIFF_SYMBOL_BINARY_FILES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"unable to read files to diff\00", align 1
@WS_BLANK_AT_EOF = common dso_local global i32 0, align 4
@XDL_EMIT_FUNCNAMES = common dso_local global i32 0, align 4
@XDL_EMIT_FUNCCONTEXT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"GIT_DIFF_OPTS\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"--unified=\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@fn_out_consume = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"unable to generate diff for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, i8*, i32, %struct.diff_options*, i32)* @builtin_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @builtin_diff(i8* %0, i8* %1, %struct.diff_filespec* %2, %struct.diff_filespec* %3, i8* %4, i32 %5, %struct.diff_options* %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.diff_filespec*, align 8
  %12 = alloca %struct.diff_filespec*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.diff_options*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__, align 8
  %18 = alloca %struct.TYPE_15__, align 8
  %19 = alloca [2 x i8*], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.userdiff_driver*, align 8
  %27 = alloca %struct.userdiff_driver*, align 8
  %28 = alloca %struct.strbuf, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %struct.strbuf, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.emit_callback, align 8
  %34 = alloca %struct.emit_callback, align 8
  %35 = alloca %struct.emit_callback, align 8
  %36 = alloca %struct.userdiff_funcname*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %11, align 8
  store %struct.diff_filespec* %3, %struct.diff_filespec** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.diff_options* %6, %struct.diff_options** %15, align 8
  store i32 %7, i32* %16, align 4
  %37 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %38 = load i32, i32* @DIFF_METAINFO, align 4
  %39 = call i8* @diff_get_color_opt(%struct.diff_options* %37, i32 %38)
  store i8* %39, i8** %22, align 8
  %40 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %41 = load i32, i32* @DIFF_RESET, align 4
  %42 = call i8* @diff_get_color_opt(%struct.diff_options* %40, i32 %41)
  store i8* %42, i8** %23, align 8
  store %struct.userdiff_driver* null, %struct.userdiff_driver** %26, align 8
  store %struct.userdiff_driver* null, %struct.userdiff_driver** %27, align 8
  %43 = bitcast %struct.strbuf* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %44 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %45 = call i8* @diff_line_prefix(%struct.diff_options* %44)
  store i8* %45, i8** %29, align 8
  %46 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %47 = call i32 @diff_set_mnemonic_prefix(%struct.diff_options* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %49 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %8
  %54 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %55 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %24, align 8
  %57 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %58 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %25, align 8
  br label %67

60:                                               ; preds = %8
  %61 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %62 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %24, align 8
  %64 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %65 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %25, align 8
  br label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %69 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DIFF_SUBMODULE_LOG, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %119

73:                                               ; preds = %67
  %74 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %75 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %80 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @S_ISGITLINK(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %119

84:                                               ; preds = %78, %73
  %85 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %86 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %91 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @S_ISGITLINK(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %89, %84
  %96 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %97 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %98 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %103 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  br label %109

105:                                              ; preds = %95
  %106 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %107 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  br label %109

109:                                              ; preds = %105, %101
  %110 = phi i64 [ %104, %101 ], [ %108, %105 ]
  %111 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %112 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %111, i32 0, i32 2
  %113 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %114 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %113, i32 0, i32 2
  %115 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %116 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @show_submodule_summary(%struct.diff_options* %96, i64 %110, i32* %112, i32* %114, i32 %117)
  br label %784

119:                                              ; preds = %89, %78, %67
  %120 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %121 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @DIFF_SUBMODULE_INLINE_DIFF, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %171

125:                                              ; preds = %119
  %126 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %127 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %132 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @S_ISGITLINK(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %171

136:                                              ; preds = %130, %125
  %137 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %138 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %143 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @S_ISGITLINK(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %171

147:                                              ; preds = %141, %136
  %148 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %149 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %150 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %155 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  br label %161

157:                                              ; preds = %147
  %158 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %159 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  br label %161

161:                                              ; preds = %157, %153
  %162 = phi i64 [ %156, %153 ], [ %160, %157 ]
  %163 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %164 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %163, i32 0, i32 2
  %165 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %166 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %165, i32 0, i32 2
  %167 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %168 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @show_submodule_inline_diff(%struct.diff_options* %148, i64 %162, i32* %164, i32* %166, i32 %169)
  br label %784

171:                                              ; preds = %141, %130, %119
  br label %172

172:                                              ; preds = %171
  %173 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %174 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %172
  %179 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %180 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %179, i32 0, i32 11
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %183 = call %struct.userdiff_driver* @get_textconv(%struct.TYPE_16__* %181, %struct.diff_filespec* %182)
  store %struct.userdiff_driver* %183, %struct.userdiff_driver** %26, align 8
  %184 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %185 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %184, i32 0, i32 11
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %188 = call %struct.userdiff_driver* @get_textconv(%struct.TYPE_16__* %186, %struct.diff_filespec* %187)
  store %struct.userdiff_driver* %188, %struct.userdiff_driver** %27, align 8
  br label %189

189:                                              ; preds = %178, %172
  %190 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %191 = call i64 @DIFF_FILE_VALID(%struct.diff_filespec* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = load i8*, i8** %9, align 8
  br label %197

195:                                              ; preds = %189
  %196 = load i8*, i8** %10, align 8
  br label %197

197:                                              ; preds = %195, %193
  %198 = phi i8* [ %194, %193 ], [ %196, %195 ]
  store i8* %198, i8** %9, align 8
  %199 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %200 = call i64 @DIFF_FILE_VALID(%struct.diff_filespec* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = load i8*, i8** %10, align 8
  br label %206

204:                                              ; preds = %197
  %205 = load i8*, i8** %9, align 8
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi i8* [ %203, %202 ], [ %205, %204 ]
  store i8* %207, i8** %10, align 8
  %208 = load i8*, i8** %24, align 8
  %209 = load i8*, i8** %9, align 8
  %210 = load i8*, i8** %9, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 47
  %214 = zext i1 %213 to i32
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %209, i64 %215
  %217 = call i8* @quote_two(i8* %208, i8* %216)
  store i8* %217, i8** %20, align 8
  %218 = load i8*, i8** %25, align 8
  %219 = load i8*, i8** %10, align 8
  %220 = load i8*, i8** %10, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 47
  %224 = zext i1 %223 to i32
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %219, i64 %225
  %227 = call i8* @quote_two(i8* %218, i8* %226)
  store i8* %227, i8** %21, align 8
  %228 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %229 = call i64 @DIFF_FILE_VALID(%struct.diff_filespec* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %206
  %232 = load i8*, i8** %20, align 8
  br label %234

233:                                              ; preds = %206
  br label %234

234:                                              ; preds = %233, %231
  %235 = phi i8* [ %232, %231 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %233 ]
  %236 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 0
  store i8* %235, i8** %236, align 16
  %237 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %238 = call i64 @DIFF_FILE_VALID(%struct.diff_filespec* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %234
  %241 = load i8*, i8** %21, align 8
  br label %243

242:                                              ; preds = %234
  br label %243

243:                                              ; preds = %242, %240
  %244 = phi i8* [ %241, %240 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %242 ]
  %245 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 1
  store i8* %244, i8** %245, align 8
  %246 = load i8*, i8** %29, align 8
  %247 = load i8*, i8** %22, align 8
  %248 = load i8*, i8** %20, align 8
  %249 = load i8*, i8** %21, align 8
  %250 = load i8*, i8** %23, align 8
  %251 = call i32 (%struct.strbuf*, i8*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %246, i8* %247, i8* %248, i8* %249, i8* %250)
  %252 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 0
  %253 = load i8*, i8** %252, align 16
  %254 = getelementptr inbounds i8, i8* %253, i64 0
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp eq i32 %256, 47
  br i1 %257, label %258, label %272

258:                                              ; preds = %243
  %259 = load i8*, i8** %29, align 8
  %260 = load i8*, i8** %22, align 8
  %261 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %262 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i8*, i8** %23, align 8
  %265 = call i32 (%struct.strbuf*, i8*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %259, i8* %260, i32 %263, i8* %264)
  %266 = load i8*, i8** %13, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %271

268:                                              ; preds = %258
  %269 = load i8*, i8** %13, align 8
  %270 = call i32 @strbuf_addstr(%struct.strbuf* %28, i8* %269)
  br label %271

271:                                              ; preds = %268, %258
  store i32 1, i32* %14, align 4
  br label %378

272:                                              ; preds = %243
  %273 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 1
  %274 = load i8*, i8** %273, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 0
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %277, 47
  br i1 %278, label %279, label %293

279:                                              ; preds = %272
  %280 = load i8*, i8** %29, align 8
  %281 = load i8*, i8** %22, align 8
  %282 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %283 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i8*, i8** %23, align 8
  %286 = call i32 (%struct.strbuf*, i8*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %280, i8* %281, i32 %284, i8* %285)
  %287 = load i8*, i8** %13, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %279
  %290 = load i8*, i8** %13, align 8
  %291 = call i32 @strbuf_addstr(%struct.strbuf* %28, i8* %290)
  br label %292

292:                                              ; preds = %289, %279
  store i32 1, i32* %14, align 4
  br label %377

293:                                              ; preds = %272
  %294 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %295 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %298 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp ne i32 %296, %299
  br i1 %300, label %301, label %316

301:                                              ; preds = %293
  %302 = load i8*, i8** %29, align 8
  %303 = load i8*, i8** %22, align 8
  %304 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %305 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i8*, i8** %23, align 8
  %308 = call i32 (%struct.strbuf*, i8*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %302, i8* %303, i32 %306, i8* %307)
  %309 = load i8*, i8** %29, align 8
  %310 = load i8*, i8** %22, align 8
  %311 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %312 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i8*, i8** %23, align 8
  %315 = call i32 (%struct.strbuf*, i8*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %309, i8* %310, i32 %313, i8* %314)
  store i32 1, i32* %14, align 4
  br label %316

316:                                              ; preds = %301, %293
  %317 = load i8*, i8** %13, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %319, label %322

319:                                              ; preds = %316
  %320 = load i8*, i8** %13, align 8
  %321 = call i32 @strbuf_addstr(%struct.strbuf* %28, i8* %320)
  br label %322

322:                                              ; preds = %319, %316
  %323 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %324 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %327 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = xor i32 %325, %328
  %330 = load i32, i32* @S_IFMT, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %322
  br label %774

334:                                              ; preds = %322
  %335 = load i32, i32* %16, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %376

337:                                              ; preds = %334
  %338 = load %struct.userdiff_driver*, %struct.userdiff_driver** %26, align 8
  %339 = icmp ne %struct.userdiff_driver* %338, null
  br i1 %339, label %347, label %340

340:                                              ; preds = %337
  %341 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %342 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %341, i32 0, i32 11
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %342, align 8
  %344 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %345 = call i64 @diff_filespec_is_binary(%struct.TYPE_16__* %343, %struct.diff_filespec* %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %376, label %347

347:                                              ; preds = %340, %337
  %348 = load %struct.userdiff_driver*, %struct.userdiff_driver** %27, align 8
  %349 = icmp ne %struct.userdiff_driver* %348, null
  br i1 %349, label %357, label %350

350:                                              ; preds = %347
  %351 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %352 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %351, i32 0, i32 11
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %352, align 8
  %354 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %355 = call i64 @diff_filespec_is_binary(%struct.TYPE_16__* %353, %struct.diff_filespec* %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %376, label %357

357:                                              ; preds = %350, %347
  %358 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %359 = load i32, i32* @DIFF_SYMBOL_HEADER, align 4
  %360 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = call i32 @emit_diff_symbol(%struct.diff_options* %358, i32 %359, i32 %361, i64 %363, i32 0)
  %365 = call i32 @strbuf_reset(%struct.strbuf* %28)
  %366 = load i8*, i8** %9, align 8
  %367 = load i8*, i8** %10, align 8
  %368 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %369 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %370 = load %struct.userdiff_driver*, %struct.userdiff_driver** %26, align 8
  %371 = load %struct.userdiff_driver*, %struct.userdiff_driver** %27, align 8
  %372 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %373 = call i32 @emit_rewrite_diff(i8* %366, i8* %367, %struct.diff_filespec* %368, %struct.diff_filespec* %369, %struct.userdiff_driver* %370, %struct.userdiff_driver* %371, %struct.diff_options* %372)
  %374 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %375 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %374, i32 0, i32 3
  store i32 1, i32* %375, align 8
  br label %774

376:                                              ; preds = %350, %340, %334
  br label %377

377:                                              ; preds = %376, %292
  br label %378

378:                                              ; preds = %377, %271
  %379 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %380 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %379, i32 0, i32 13
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %399

383:                                              ; preds = %378
  %384 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 1
  %385 = load i8*, i8** %384, align 8
  %386 = getelementptr inbounds i8, i8* %385, i64 0
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp eq i32 %388, 47
  br i1 %389, label %390, label %399

390:                                              ; preds = %383
  %391 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %392 = load i32, i32* @DIFF_SYMBOL_HEADER, align 4
  %393 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 1
  %394 = load i32, i32* %393, align 8
  %395 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = call i32 @emit_diff_symbol(%struct.diff_options* %391, i32 %392, i32 %394, i64 %396, i32 0)
  %398 = call i32 @strbuf_reset(%struct.strbuf* %28)
  br label %774

399:                                              ; preds = %383, %378
  %400 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %401 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %400, i32 0, i32 5
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 8
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %575, label %405

405:                                              ; preds = %399
  %406 = load %struct.userdiff_driver*, %struct.userdiff_driver** %26, align 8
  %407 = icmp ne %struct.userdiff_driver* %406, null
  br i1 %407, label %415, label %408

408:                                              ; preds = %405
  %409 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %410 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %409, i32 0, i32 11
  %411 = load %struct.TYPE_16__*, %struct.TYPE_16__** %410, align 8
  %412 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %413 = call i64 @diff_filespec_is_binary(%struct.TYPE_16__* %411, %struct.diff_filespec* %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %425, label %415

415:                                              ; preds = %408, %405
  %416 = load %struct.userdiff_driver*, %struct.userdiff_driver** %27, align 8
  %417 = icmp ne %struct.userdiff_driver* %416, null
  br i1 %417, label %575, label %418

418:                                              ; preds = %415
  %419 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %420 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %419, i32 0, i32 11
  %421 = load %struct.TYPE_16__*, %struct.TYPE_16__** %420, align 8
  %422 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %423 = call i64 @diff_filespec_is_binary(%struct.TYPE_16__* %421, %struct.diff_filespec* %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %575

425:                                              ; preds = %418, %408
  %426 = bitcast %struct.strbuf* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %426, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %427 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %428 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %496, label %431

431:                                              ; preds = %425
  %432 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %433 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %496, label %436

436:                                              ; preds = %431
  %437 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %438 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = call i64 @S_ISREG(i32 %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %496

442:                                              ; preds = %436
  %443 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %444 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = call i64 @S_ISREG(i32 %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %496

448:                                              ; preds = %442
  %449 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %450 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %449, i32 0, i32 5
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 2
  %452 = load i64, i64* %451, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %496, label %454

454:                                              ; preds = %448
  %455 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %456 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %455, i32 0, i32 2
  %457 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %458 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %457, i32 0, i32 2
  %459 = call i64 @oideq(i32* %456, i32* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %473

461:                                              ; preds = %454
  %462 = load i32, i32* %14, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %472

464:                                              ; preds = %461
  %465 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %466 = load i32, i32* @DIFF_SYMBOL_HEADER, align 4
  %467 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 1
  %468 = load i32, i32* %467, align 8
  %469 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = call i32 @emit_diff_symbol(%struct.diff_options* %465, i32 %466, i32 %468, i64 %470, i32 0)
  br label %472

472:                                              ; preds = %464, %461
  br label %774

473:                                              ; preds = %454
  %474 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %475 = load i32, i32* @DIFF_SYMBOL_HEADER, align 4
  %476 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 1
  %477 = load i32, i32* %476, align 8
  %478 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = call i32 @emit_diff_symbol(%struct.diff_options* %474, i32 %475, i32 %477, i64 %479, i32 0)
  %481 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %482 = call i8* @diff_line_prefix(%struct.diff_options* %481)
  %483 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 0
  %484 = load i8*, i8** %483, align 16
  %485 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 1
  %486 = load i8*, i8** %485, align 8
  %487 = call i32 (%struct.strbuf*, i8*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %482, i8* %484, i8* %486)
  %488 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %489 = load i32, i32* @DIFF_SYMBOL_BINARY_FILES, align 4
  %490 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 1
  %491 = load i32, i32* %490, align 8
  %492 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = call i32 @emit_diff_symbol(%struct.diff_options* %488, i32 %489, i32 %491, i64 %493, i32 0)
  %495 = call i32 @strbuf_release(%struct.strbuf* %30)
  br label %774

496:                                              ; preds = %448, %442, %436, %431, %425
  %497 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %498 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %497, i32 0, i32 11
  %499 = load %struct.TYPE_16__*, %struct.TYPE_16__** %498, align 8
  %500 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %501 = call i64 @fill_mmfile(%struct.TYPE_16__* %499, %struct.TYPE_15__* %17, %struct.diff_filespec* %500)
  %502 = icmp slt i64 %501, 0
  br i1 %502, label %510, label %503

503:                                              ; preds = %496
  %504 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %505 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %504, i32 0, i32 11
  %506 = load %struct.TYPE_16__*, %struct.TYPE_16__** %505, align 8
  %507 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %508 = call i64 @fill_mmfile(%struct.TYPE_16__* %506, %struct.TYPE_15__* %18, %struct.diff_filespec* %507)
  %509 = icmp slt i64 %508, 0
  br i1 %509, label %510, label %512

510:                                              ; preds = %503, %496
  %511 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %512

512:                                              ; preds = %510, %503
  %513 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = icmp eq i64 %514, %516
  br i1 %517, label %518, label %539

518:                                              ; preds = %512
  %519 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %520 = load i8*, i8** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %522 = load i8*, i8** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = call i32 @memcmp(i8* %520, i8* %522, i64 %524)
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %539, label %527

527:                                              ; preds = %518
  %528 = load i32, i32* %14, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %538

530:                                              ; preds = %527
  %531 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %532 = load i32, i32* @DIFF_SYMBOL_HEADER, align 4
  %533 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 1
  %534 = load i32, i32* %533, align 8
  %535 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = call i32 @emit_diff_symbol(%struct.diff_options* %531, i32 %532, i32 %534, i64 %536, i32 0)
  br label %538

538:                                              ; preds = %530, %527
  br label %774

539:                                              ; preds = %518, %512
  %540 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %541 = load i32, i32* @DIFF_SYMBOL_HEADER, align 4
  %542 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 1
  %543 = load i32, i32* %542, align 8
  %544 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %545 = load i64, i64* %544, align 8
  %546 = call i32 @emit_diff_symbol(%struct.diff_options* %540, i32 %541, i32 %543, i64 %545, i32 0)
  %547 = call i32 @strbuf_reset(%struct.strbuf* %28)
  %548 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %549 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %548, i32 0, i32 5
  %550 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %549, i32 0, i32 2
  %551 = load i64, i64* %550, align 8
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %556

553:                                              ; preds = %539
  %554 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %555 = call i32 @emit_binary_diff(%struct.diff_options* %554, %struct.TYPE_15__* %17, %struct.TYPE_15__* %18)
  br label %572

556:                                              ; preds = %539
  %557 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %558 = call i8* @diff_line_prefix(%struct.diff_options* %557)
  %559 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 0
  %560 = load i8*, i8** %559, align 16
  %561 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 1
  %562 = load i8*, i8** %561, align 8
  %563 = call i32 (%struct.strbuf*, i8*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %558, i8* %560, i8* %562)
  %564 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %565 = load i32, i32* @DIFF_SYMBOL_BINARY_FILES, align 4
  %566 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 1
  %567 = load i32, i32* %566, align 8
  %568 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = call i32 @emit_diff_symbol(%struct.diff_options* %564, i32 %565, i32 %567, i64 %569, i32 0)
  %571 = call i32 @strbuf_release(%struct.strbuf* %30)
  br label %572

572:                                              ; preds = %556, %553
  %573 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %574 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %573, i32 0, i32 3
  store i32 1, i32* %574, align 8
  br label %772

575:                                              ; preds = %418, %415, %399
  %576 = load i32, i32* %14, align 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %587

578:                                              ; preds = %575
  %579 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %580 = load i32, i32* @DIFF_SYMBOL_HEADER, align 4
  %581 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 1
  %582 = load i32, i32* %581, align 8
  %583 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %584 = load i64, i64* %583, align 8
  %585 = call i32 @emit_diff_symbol(%struct.diff_options* %579, i32 %580, i32 %582, i64 %584, i32 0)
  %586 = call i32 @strbuf_reset(%struct.strbuf* %28)
  br label %587

587:                                              ; preds = %578, %575
  %588 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %589 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %588, i32 0, i32 11
  %590 = load %struct.TYPE_16__*, %struct.TYPE_16__** %589, align 8
  %591 = load %struct.userdiff_driver*, %struct.userdiff_driver** %26, align 8
  %592 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %593 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %594 = call i8* @fill_textconv(%struct.TYPE_16__* %590, %struct.userdiff_driver* %591, %struct.diff_filespec* %592, i8** %593)
  %595 = ptrtoint i8* %594 to i64
  %596 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store i64 %595, i64* %596, align 8
  %597 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %598 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %597, i32 0, i32 11
  %599 = load %struct.TYPE_16__*, %struct.TYPE_16__** %598, align 8
  %600 = load %struct.userdiff_driver*, %struct.userdiff_driver** %27, align 8
  %601 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %602 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %603 = call i8* @fill_textconv(%struct.TYPE_16__* %599, %struct.userdiff_driver* %600, %struct.diff_filespec* %601, i8** %602)
  %604 = ptrtoint i8* %603 to i64
  %605 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  store i64 %604, i64* %605, align 8
  %606 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %607 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %608 = call %struct.userdiff_funcname* @diff_funcname_pattern(%struct.diff_options* %606, %struct.diff_filespec* %607)
  store %struct.userdiff_funcname* %608, %struct.userdiff_funcname** %36, align 8
  %609 = load %struct.userdiff_funcname*, %struct.userdiff_funcname** %36, align 8
  %610 = icmp ne %struct.userdiff_funcname* %609, null
  br i1 %610, label %615, label %611

611:                                              ; preds = %587
  %612 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %613 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %614 = call %struct.userdiff_funcname* @diff_funcname_pattern(%struct.diff_options* %612, %struct.diff_filespec* %613)
  store %struct.userdiff_funcname* %614, %struct.userdiff_funcname** %36, align 8
  br label %615

615:                                              ; preds = %611, %587
  %616 = call i32 @memset(%struct.emit_callback* %33, i32 0, i32 64)
  %617 = call i32 @memset(%struct.emit_callback* %34, i32 0, i32 64)
  %618 = call i32 @memset(%struct.emit_callback* %35, i32 0, i32 64)
  %619 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %620 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %619, i32 0, i32 5
  %621 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %620, i32 0, i32 1
  %622 = load i64, i64* %621, align 8
  %623 = icmp ne i64 %622, 0
  br i1 %623, label %624, label %626

624:                                              ; preds = %615
  %625 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 0
  store i8* null, i8** %625, align 16
  br label %626

626:                                              ; preds = %624, %615
  %627 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 0
  %628 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %35, i32 0, i32 0
  store i8** %627, i8*** %628, align 8
  %629 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %630 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %629, i32 0, i32 12
  %631 = load i32, i32* %630, align 8
  %632 = call i32 @want_color(i32 %631)
  %633 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %35, i32 0, i32 9
  store i32 %632, i32* %633, align 8
  %634 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %635 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %634, i32 0, i32 11
  %636 = load %struct.TYPE_16__*, %struct.TYPE_16__** %635, align 8
  %637 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 4
  %639 = load i8*, i8** %10, align 8
  %640 = call i32 @whitespace_rule(i32 %638, i8* %639)
  %641 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %35, i32 0, i32 1
  store i32 %640, i32* %641, align 8
  %642 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %35, i32 0, i32 1
  %643 = load i32, i32* %642, align 8
  %644 = load i32, i32* @WS_BLANK_AT_EOF, align 4
  %645 = and i32 %643, %644
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %649

647:                                              ; preds = %626
  %648 = call i32 @check_blank_at_eof(%struct.TYPE_15__* %17, %struct.TYPE_15__* %18, %struct.emit_callback* %35)
  br label %649

649:                                              ; preds = %647, %626
  %650 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %651 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %35, i32 0, i32 8
  store %struct.diff_options* %650, %struct.diff_options** %651, align 8
  %652 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %653 = load i64, i64* %652, align 8
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %655, label %663

655:                                              ; preds = %649
  %656 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %657 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %656, i32 0, i32 5
  %658 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %657, i32 0, i32 1
  %659 = load i64, i64* %658, align 8
  %660 = icmp ne i64 %659, 0
  br i1 %660, label %663, label %661

661:                                              ; preds = %655
  %662 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %35, i32 0, i32 7
  store %struct.strbuf* %28, %struct.strbuf** %662, align 8
  br label %663

663:                                              ; preds = %661, %655, %649
  %664 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %665 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %664, i32 0, i32 10
  %666 = load i32, i32* %665, align 8
  %667 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %33, i32 0, i32 3
  store i32 %666, i32* %667, align 8
  %668 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %669 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %668, i32 0, i32 9
  %670 = load i32, i32* %669, align 4
  %671 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %33, i32 0, i32 6
  store i32 %670, i32* %671, align 4
  %672 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %673 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %672, i32 0, i32 8
  %674 = load i32, i32* %673, align 8
  %675 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %33, i32 0, i32 5
  store i32 %674, i32* %675, align 8
  %676 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %677 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %676, i32 0, i32 7
  %678 = load i8*, i8** %677, align 8
  %679 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %34, i32 0, i32 2
  store i8* %678, i8** %679, align 8
  %680 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %681 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %680, i32 0, i32 6
  %682 = load i32, i32* %681, align 8
  %683 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %34, i32 0, i32 4
  store i32 %682, i32* %683, align 4
  %684 = load i32, i32* @XDL_EMIT_FUNCNAMES, align 4
  %685 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %34, i32 0, i32 3
  store i32 %684, i32* %685, align 8
  %686 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %687 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %686, i32 0, i32 5
  %688 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %687, i32 0, i32 0
  %689 = load i64, i64* %688, align 8
  %690 = icmp ne i64 %689, 0
  br i1 %690, label %691, label %696

691:                                              ; preds = %663
  %692 = load i32, i32* @XDL_EMIT_FUNCCONTEXT, align 4
  %693 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %34, i32 0, i32 3
  %694 = load i32, i32* %693, align 8
  %695 = or i32 %694, %692
  store i32 %695, i32* %693, align 8
  br label %696

696:                                              ; preds = %691, %663
  %697 = load %struct.userdiff_funcname*, %struct.userdiff_funcname** %36, align 8
  %698 = icmp ne %struct.userdiff_funcname* %697, null
  br i1 %698, label %699, label %707

699:                                              ; preds = %696
  %700 = load %struct.userdiff_funcname*, %struct.userdiff_funcname** %36, align 8
  %701 = getelementptr inbounds %struct.userdiff_funcname, %struct.userdiff_funcname* %700, i32 0, i32 1
  %702 = load i32, i32* %701, align 4
  %703 = load %struct.userdiff_funcname*, %struct.userdiff_funcname** %36, align 8
  %704 = getelementptr inbounds %struct.userdiff_funcname, %struct.userdiff_funcname* %703, i32 0, i32 0
  %705 = load i32, i32* %704, align 4
  %706 = call i32 @xdiff_set_find_func(%struct.emit_callback* %34, i32 %702, i32 %705)
  br label %707

707:                                              ; preds = %699, %696
  %708 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  store i8* %708, i8** %31, align 8
  %709 = load i8*, i8** %31, align 8
  %710 = icmp ne i8* %709, null
  br i1 %710, label %712, label %711

711:                                              ; preds = %707
  br label %730

712:                                              ; preds = %707
  %713 = load i8*, i8** %31, align 8
  %714 = call i64 @skip_prefix(i8* %713, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %32)
  %715 = icmp ne i64 %714, 0
  br i1 %715, label %716, label %720

716:                                              ; preds = %712
  %717 = load i8*, i8** %32, align 8
  %718 = call i8* @strtoul(i8* %717, i32* null, i32 10)
  %719 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %34, i32 0, i32 2
  store i8* %718, i8** %719, align 8
  br label %729

720:                                              ; preds = %712
  %721 = load i8*, i8** %31, align 8
  %722 = call i64 @skip_prefix(i8* %721, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %32)
  %723 = icmp ne i64 %722, 0
  br i1 %723, label %724, label %728

724:                                              ; preds = %720
  %725 = load i8*, i8** %32, align 8
  %726 = call i8* @strtoul(i8* %725, i32* null, i32 10)
  %727 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %34, i32 0, i32 2
  store i8* %726, i8** %727, align 8
  br label %728

728:                                              ; preds = %724, %720
  br label %729

729:                                              ; preds = %728, %716
  br label %730

730:                                              ; preds = %729, %711
  %731 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %732 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %731, i32 0, i32 4
  %733 = load i64, i64* %732, align 8
  %734 = icmp ne i64 %733, 0
  br i1 %734, label %735, label %740

735:                                              ; preds = %730
  %736 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %737 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %738 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %739 = call i32 @init_diff_words_data(%struct.emit_callback* %35, %struct.diff_options* %736, %struct.diff_filespec* %737, %struct.diff_filespec* %738)
  br label %740

740:                                              ; preds = %735, %730
  %741 = load i32, i32* @fn_out_consume, align 4
  %742 = call i64 @xdi_diff_outf(%struct.TYPE_15__* %17, %struct.TYPE_15__* %18, i32* null, i32 %741, %struct.emit_callback* %35, %struct.emit_callback* %33, %struct.emit_callback* %34)
  %743 = icmp ne i64 %742, 0
  br i1 %743, label %744, label %749

744:                                              ; preds = %740
  %745 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %746 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %745, i32 0, i32 1
  %747 = load i64, i64* %746, align 8
  %748 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i64 %747)
  br label %749

749:                                              ; preds = %744, %740
  %750 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %751 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %750, i32 0, i32 4
  %752 = load i64, i64* %751, align 8
  %753 = icmp ne i64 %752, 0
  br i1 %753, label %754, label %756

754:                                              ; preds = %749
  %755 = call i32 @free_diff_words_data(%struct.emit_callback* %35)
  br label %756

756:                                              ; preds = %754, %749
  %757 = load %struct.userdiff_driver*, %struct.userdiff_driver** %26, align 8
  %758 = icmp ne %struct.userdiff_driver* %757, null
  br i1 %758, label %759, label %763

759:                                              ; preds = %756
  %760 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %761 = load i8*, i8** %760, align 8
  %762 = call i32 @free(i8* %761)
  br label %763

763:                                              ; preds = %759, %756
  %764 = load %struct.userdiff_driver*, %struct.userdiff_driver** %27, align 8
  %765 = icmp ne %struct.userdiff_driver* %764, null
  br i1 %765, label %766, label %770

766:                                              ; preds = %763
  %767 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %768 = load i8*, i8** %767, align 8
  %769 = call i32 @free(i8* %768)
  br label %770

770:                                              ; preds = %766, %763
  %771 = call i32 @xdiff_clear_find_func(%struct.emit_callback* %34)
  br label %772

772:                                              ; preds = %770, %572
  br label %773

773:                                              ; preds = %772
  br label %774

774:                                              ; preds = %773, %538, %473, %472, %390, %357, %333
  %775 = call i32 @strbuf_release(%struct.strbuf* %28)
  %776 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %777 = call i32 @diff_free_filespec_data(%struct.diff_filespec* %776)
  %778 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %779 = call i32 @diff_free_filespec_data(%struct.diff_filespec* %778)
  %780 = load i8*, i8** %20, align 8
  %781 = call i32 @free(i8* %780)
  %782 = load i8*, i8** %21, align 8
  %783 = call i32 @free(i8* %782)
  br label %784

784:                                              ; preds = %774, %161, %109
  ret void
}

declare dso_local i8* @diff_get_color_opt(%struct.diff_options*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @diff_line_prefix(%struct.diff_options*) #1

declare dso_local i32 @diff_set_mnemonic_prefix(%struct.diff_options*, i8*, i8*) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @show_submodule_summary(%struct.diff_options*, i64, i32*, i32*, i32) #1

declare dso_local i32 @show_submodule_inline_diff(%struct.diff_options*, i64, i32*, i32*, i32) #1

declare dso_local %struct.userdiff_driver* @get_textconv(%struct.TYPE_16__*, %struct.diff_filespec*) #1

declare dso_local i64 @DIFF_FILE_VALID(%struct.diff_filespec*) #1

declare dso_local i8* @quote_two(i8*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i64 @diff_filespec_is_binary(%struct.TYPE_16__*, %struct.diff_filespec*) #1

declare dso_local i32 @emit_diff_symbol(%struct.diff_options*, i32, i32, i64, i32) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @emit_rewrite_diff(i8*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.userdiff_driver*, %struct.userdiff_driver*, %struct.diff_options*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i64 @fill_mmfile(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.diff_filespec*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @emit_binary_diff(%struct.diff_options*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i8* @fill_textconv(%struct.TYPE_16__*, %struct.userdiff_driver*, %struct.diff_filespec*, i8**) #1

declare dso_local %struct.userdiff_funcname* @diff_funcname_pattern(%struct.diff_options*, %struct.diff_filespec*) #1

declare dso_local i32 @memset(%struct.emit_callback*, i32, i32) #1

declare dso_local i32 @want_color(i32) #1

declare dso_local i32 @whitespace_rule(i32, i8*) #1

declare dso_local i32 @check_blank_at_eof(%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.emit_callback*) #1

declare dso_local i32 @xdiff_set_find_func(%struct.emit_callback*, i32, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @init_diff_words_data(%struct.emit_callback*, %struct.diff_options*, %struct.diff_filespec*, %struct.diff_filespec*) #1

declare dso_local i64 @xdi_diff_outf(%struct.TYPE_15__*, %struct.TYPE_15__*, i32*, i32, %struct.emit_callback*, %struct.emit_callback*, %struct.emit_callback*) #1

declare dso_local i32 @free_diff_words_data(%struct.emit_callback*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @xdiff_clear_find_func(%struct.emit_callback*) #1

declare dso_local i32 @diff_free_filespec_data(%struct.diff_filespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
