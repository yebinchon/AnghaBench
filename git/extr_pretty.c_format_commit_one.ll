; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_format_commit_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_format_commit_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_trailer_options = type { i32, i32, i32, i32, %struct.strbuf*, %struct.string_list*, i32 }
%struct.strbuf = type { i32 }
%struct.string_list = type { i32 }
%struct.format_commit_context = type { i8*, i8*, i32, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_15__, %struct.TYPE_14__, i32, %struct.TYPE_18__, %struct.commit*, i32 }
%struct.TYPE_16__ = type { i8*, i32, i32, i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_18__ = type { i8, i8*, i8*, i8*, i8*, i8* }
%struct.commit = type { %struct.commit_list*, %struct.TYPE_10__ }
%struct.commit_list = type { %struct.TYPE_12__*, %struct.commit_list* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_17__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"(auto)\00", align 1
@GIT_COLOR_RESET = common dso_local global i8* null, align 8
@the_repository = common dso_local global i32 0, align 4
@DIFF_COMMIT = common dso_local global i32 0, align 4
@DIFF_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"(trailers\00", align 1
@PROCESS_TRAILER_OPTIONS_INIT = common dso_local global %struct.process_trailer_options zeroinitializer, align 8
@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@format_trailer_match_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"only\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"unfold\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"valueonly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.strbuf*, i8*, i8*)* @format_commit_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @format_commit_one(%struct.strbuf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.format_commit_context*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.commit_list*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.process_trailer_options, align 8
  %23 = alloca %struct.string_list, align 4
  %24 = alloca %struct.strbuf, align 4
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.format_commit_context*
  store %struct.format_commit_context* %31, %struct.format_commit_context** %8, align 8
  %32 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %33 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %32, i32 0, i32 11
  %34 = load %struct.commit*, %struct.commit** %33, align 8
  store %struct.commit* %34, %struct.commit** %9, align 8
  %35 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %36 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %10, align 8
  %38 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @strbuf_expand_literal_cb(%struct.strbuf* %38, i8* %39, i32* null)
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i64, i64* %13, align 8
  store i64 %44, i64* %4, align 8
  br label %775

45:                                               ; preds = %3
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  switch i32 %49, label %154 [
    i32 67, label %50
    i32 119, label %91
    i32 60, label %150
    i32 62, label %150
  ]

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = call i32 @starts_with(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %50
  %56 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %57 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %56, i32 0, i32 6
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @want_color(i32 %60)
  %62 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %63 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %62, i32 0, i32 12
  store i32 %61, i32* %63, align 8
  %64 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %65 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %64, i32 0, i32 12
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %55
  %69 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %75 = load i8*, i8** @GIT_COLOR_RESET, align 8
  %76 = call i32 @strbuf_addstr(%struct.strbuf* %74, i8* %75)
  br label %77

77:                                               ; preds = %73, %68, %55
  store i64 7, i64* %4, align 8
  br label %775

78:                                               ; preds = %50
  %79 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %82 = call i32 @parse_color(%struct.strbuf* %79, i8* %80, %struct.format_commit_context* %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %87 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %86, i32 0, i32 12
  store i32 0, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %78
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %4, align 8
  br label %775

91:                                               ; preds = %45
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 40
  br i1 %96, label %97, label %149

97:                                               ; preds = %91
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  store i8* %99, i8** %20, align 8
  %100 = load i8*, i8** %20, align 8
  %101 = call i8* @strchr(i8* %100, i8 signext 41)
  store i8* %101, i8** %21, align 8
  %102 = load i8*, i8** %21, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %97
  store i64 0, i64* %4, align 8
  br label %775

105:                                              ; preds = %97
  %106 = load i8*, i8** %21, align 8
  %107 = load i8*, i8** %20, align 8
  %108 = icmp ugt i8* %106, %107
  br i1 %108, label %109, label %136

109:                                              ; preds = %105
  %110 = load i8*, i8** %20, align 8
  %111 = call i64 @strtoul(i8* %110, i8** %19, i32 10)
  store i64 %111, i64* %16, align 8
  %112 = load i8*, i8** %19, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 44
  br i1 %115, label %116, label %129

116:                                              ; preds = %109
  %117 = load i8*, i8** %19, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = call i64 @strtoul(i8* %118, i8** %19, i32 10)
  store i64 %119, i64* %17, align 8
  %120 = load i8*, i8** %19, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 44
  br i1 %123, label %124, label %128

124:                                              ; preds = %116
  %125 = load i8*, i8** %19, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = call i64 @strtoul(i8* %126, i8** %19, i32 10)
  store i64 %127, i64* %18, align 8
  br label %128

128:                                              ; preds = %124, %116
  br label %129

129:                                              ; preds = %128, %109
  %130 = load i8*, i8** %19, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 41
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i64 0, i64* %4, align 8
  br label %775

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %105
  %137 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %138 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %139 = load i64, i64* %16, align 8
  %140 = load i64, i64* %17, align 8
  %141 = load i64, i64* %18, align 8
  %142 = call i32 @rewrap_message_tail(%struct.strbuf* %137, %struct.format_commit_context* %138, i64 %139, i64 %140, i64 %141)
  %143 = load i8*, i8** %21, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %4, align 8
  br label %775

149:                                              ; preds = %91
  store i64 0, i64* %4, align 8
  br label %775

150:                                              ; preds = %45, %45
  %151 = load i8*, i8** %6, align 8
  %152 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %153 = call i64 @parse_padding_placeholder(i8* %151, %struct.format_commit_context* %152)
  store i64 %153, i64* %4, align 8
  br label %775

154:                                              ; preds = %45
  %155 = load %struct.commit*, %struct.commit** %9, align 8
  %156 = getelementptr inbounds %struct.commit, %struct.commit* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %154
  %161 = load i32, i32* @the_repository, align 4
  %162 = load %struct.commit*, %struct.commit** %9, align 8
  %163 = getelementptr inbounds %struct.commit, %struct.commit* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = call i32 @parse_object(i32 %161, i32* %164)
  br label %166

166:                                              ; preds = %160, %154
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  switch i32 %170, label %439 [
    i32 72, label %171
    i32 104, label %192
    i32 84, label %217
    i32 116, label %223
    i32 80, label %233
    i32 112, label %263
    i32 109, label %297
    i32 100, label %302
    i32 68, label %309
    i32 83, label %316
    i32 103, label %355
    i32 78, label %423
  ]

171:                                              ; preds = %166
  %172 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %173 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %174 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %173, i32 0, i32 12
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @DIFF_COMMIT, align 4
  %177 = call i8* @diff_get_color(i32 %175, i32 %176)
  %178 = call i32 @strbuf_addstr(%struct.strbuf* %172, i8* %177)
  %179 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %180 = load %struct.commit*, %struct.commit** %9, align 8
  %181 = getelementptr inbounds %struct.commit, %struct.commit* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = call i8* @oid_to_hex(i32* %182)
  %184 = call i32 @strbuf_addstr(%struct.strbuf* %179, i8* %183)
  %185 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %186 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %187 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %186, i32 0, i32 12
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @DIFF_RESET, align 4
  %190 = call i8* @diff_get_color(i32 %188, i32 %189)
  %191 = call i32 @strbuf_addstr(%struct.strbuf* %185, i8* %190)
  store i64 1, i64* %4, align 8
  br label %775

192:                                              ; preds = %166
  %193 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %194 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %195 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %194, i32 0, i32 12
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @DIFF_COMMIT, align 4
  %198 = call i8* @diff_get_color(i32 %196, i32 %197)
  %199 = call i32 @strbuf_addstr(%struct.strbuf* %193, i8* %198)
  %200 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %201 = load %struct.commit*, %struct.commit** %9, align 8
  %202 = getelementptr inbounds %struct.commit, %struct.commit* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %205 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %204, i32 0, i32 6
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %200, i32* %203, i32 %208)
  %210 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %211 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %212 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %211, i32 0, i32 12
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @DIFF_RESET, align 4
  %215 = call i8* @diff_get_color(i32 %213, i32 %214)
  %216 = call i32 @strbuf_addstr(%struct.strbuf* %210, i8* %215)
  store i64 1, i64* %4, align 8
  br label %775

217:                                              ; preds = %166
  %218 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %219 = load %struct.commit*, %struct.commit** %9, align 8
  %220 = call i32* @get_commit_tree_oid(%struct.commit* %219)
  %221 = call i8* @oid_to_hex(i32* %220)
  %222 = call i32 @strbuf_addstr(%struct.strbuf* %218, i8* %221)
  store i64 1, i64* %4, align 8
  br label %775

223:                                              ; preds = %166
  %224 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %225 = load %struct.commit*, %struct.commit** %9, align 8
  %226 = call i32* @get_commit_tree_oid(%struct.commit* %225)
  %227 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %228 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %227, i32 0, i32 6
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %224, i32* %226, i32 %231)
  store i64 1, i64* %4, align 8
  br label %775

233:                                              ; preds = %166
  %234 = load %struct.commit*, %struct.commit** %9, align 8
  %235 = getelementptr inbounds %struct.commit, %struct.commit* %234, i32 0, i32 0
  %236 = load %struct.commit_list*, %struct.commit_list** %235, align 8
  store %struct.commit_list* %236, %struct.commit_list** %11, align 8
  br label %237

237:                                              ; preds = %258, %233
  %238 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %239 = icmp ne %struct.commit_list* %238, null
  br i1 %239, label %240, label %262

240:                                              ; preds = %237
  %241 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %242 = load %struct.commit*, %struct.commit** %9, align 8
  %243 = getelementptr inbounds %struct.commit, %struct.commit* %242, i32 0, i32 0
  %244 = load %struct.commit_list*, %struct.commit_list** %243, align 8
  %245 = icmp ne %struct.commit_list* %241, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %248 = call i32 @strbuf_addch(%struct.strbuf* %247, i8 signext 32)
  br label %249

249:                                              ; preds = %246, %240
  %250 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %251 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %252 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %251, i32 0, i32 0
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = call i8* @oid_to_hex(i32* %255)
  %257 = call i32 @strbuf_addstr(%struct.strbuf* %250, i8* %256)
  br label %258

258:                                              ; preds = %249
  %259 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %260 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %259, i32 0, i32 1
  %261 = load %struct.commit_list*, %struct.commit_list** %260, align 8
  store %struct.commit_list* %261, %struct.commit_list** %11, align 8
  br label %237

262:                                              ; preds = %237
  store i64 1, i64* %4, align 8
  br label %775

263:                                              ; preds = %166
  %264 = load %struct.commit*, %struct.commit** %9, align 8
  %265 = getelementptr inbounds %struct.commit, %struct.commit* %264, i32 0, i32 0
  %266 = load %struct.commit_list*, %struct.commit_list** %265, align 8
  store %struct.commit_list* %266, %struct.commit_list** %11, align 8
  br label %267

267:                                              ; preds = %292, %263
  %268 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %269 = icmp ne %struct.commit_list* %268, null
  br i1 %269, label %270, label %296

270:                                              ; preds = %267
  %271 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %272 = load %struct.commit*, %struct.commit** %9, align 8
  %273 = getelementptr inbounds %struct.commit, %struct.commit* %272, i32 0, i32 0
  %274 = load %struct.commit_list*, %struct.commit_list** %273, align 8
  %275 = icmp ne %struct.commit_list* %271, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %270
  %277 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %278 = call i32 @strbuf_addch(%struct.strbuf* %277, i8 signext 32)
  br label %279

279:                                              ; preds = %276, %270
  %280 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %281 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %282 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %281, i32 0, i32 0
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %287 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %286, i32 0, i32 6
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %280, i32* %285, i32 %290)
  br label %292

292:                                              ; preds = %279
  %293 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %294 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %293, i32 0, i32 1
  %295 = load %struct.commit_list*, %struct.commit_list** %294, align 8
  store %struct.commit_list* %295, %struct.commit_list** %11, align 8
  br label %267

296:                                              ; preds = %267
  store i64 1, i64* %4, align 8
  br label %775

297:                                              ; preds = %166
  %298 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %299 = load %struct.commit*, %struct.commit** %9, align 8
  %300 = call i8* @get_revision_mark(i32* null, %struct.commit* %299)
  %301 = call i32 @strbuf_addstr(%struct.strbuf* %298, i8* %300)
  store i64 1, i64* %4, align 8
  br label %775

302:                                              ; preds = %166
  %303 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %304 = load %struct.commit*, %struct.commit** %9, align 8
  %305 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %306 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %305, i32 0, i32 12
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @format_decorations(%struct.strbuf* %303, %struct.commit* %304, i32 %307)
  store i64 1, i64* %4, align 8
  br label %775

309:                                              ; preds = %166
  %310 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %311 = load %struct.commit*, %struct.commit** %9, align 8
  %312 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %313 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %312, i32 0, i32 12
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @format_decorations_extended(%struct.strbuf* %310, %struct.commit* %311, i32 %314, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i64 1, i64* %4, align 8
  br label %775

316:                                              ; preds = %166
  %317 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %318 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %317, i32 0, i32 6
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 4
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %320, align 8
  %322 = icmp ne %struct.TYPE_13__* %321, null
  br i1 %322, label %323, label %332

323:                                              ; preds = %316
  %324 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %325 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %324, i32 0, i32 6
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 4
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %333, label %332

332:                                              ; preds = %323, %316
  store i64 0, i64* %4, align 8
  br label %775

333:                                              ; preds = %323
  %334 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %335 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %334, i32 0, i32 6
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 4
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.commit*, %struct.commit** %9, align 8
  %342 = call i8** @revision_sources_at(i32 %340, %struct.commit* %341)
  store i8** %342, i8*** %14, align 8
  %343 = load i8**, i8*** %14, align 8
  %344 = icmp ne i8** %343, null
  br i1 %344, label %345, label %349

345:                                              ; preds = %333
  %346 = load i8**, i8*** %14, align 8
  %347 = load i8*, i8** %346, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %350, label %349

349:                                              ; preds = %345, %333
  store i64 0, i64* %4, align 8
  br label %775

350:                                              ; preds = %345
  %351 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %352 = load i8**, i8*** %14, align 8
  %353 = load i8*, i8** %352, align 8
  %354 = call i32 @strbuf_addstr(%struct.strbuf* %351, i8* %353)
  store i64 1, i64* %4, align 8
  br label %775

355:                                              ; preds = %166
  %356 = load i8*, i8** %6, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 1
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  switch i32 %359, label %422 [
    i32 100, label %360
    i32 68, label %360
    i32 115, label %391
    i32 110, label %407
    i32 78, label %407
    i32 101, label %407
    i32 69, label %407
  ]

360:                                              ; preds = %355, %355
  %361 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %362 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %361, i32 0, i32 6
  %363 = load %struct.TYPE_16__*, %struct.TYPE_16__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %390

367:                                              ; preds = %360
  %368 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %369 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %370 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %369, i32 0, i32 6
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %375 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %374, i32 0, i32 6
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 1
  %378 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %379 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %378, i32 0, i32 6
  %380 = load %struct.TYPE_16__*, %struct.TYPE_16__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 8
  %383 = load i8*, i8** %6, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 1
  %385 = load i8, i8* %384, align 1
  %386 = sext i8 %385 to i32
  %387 = icmp eq i32 %386, 100
  %388 = zext i1 %387 to i32
  %389 = call i32 @get_reflog_selector(%struct.strbuf* %368, i32 %373, i32* %377, i32 %382, i32 %388)
  br label %390

390:                                              ; preds = %367, %360
  store i64 2, i64* %4, align 8
  br label %775

391:                                              ; preds = %355
  %392 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %393 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %392, i32 0, i32 6
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %406

398:                                              ; preds = %391
  %399 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %400 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %401 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %400, i32 0, i32 6
  %402 = load %struct.TYPE_16__*, %struct.TYPE_16__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @get_reflog_message(%struct.strbuf* %399, i32 %404)
  br label %406

406:                                              ; preds = %398, %391
  store i64 2, i64* %4, align 8
  br label %775

407:                                              ; preds = %355, %355, %355, %355
  %408 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %409 = load i8*, i8** %6, align 8
  %410 = getelementptr inbounds i8, i8* %409, i64 1
  %411 = load i8, i8* %410, align 1
  %412 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %413 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %412, i32 0, i32 6
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %418 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %417, i32 0, i32 6
  %419 = load %struct.TYPE_16__*, %struct.TYPE_16__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %419, i32 0, i32 1
  %421 = call i64 @format_reflog_person(%struct.strbuf* %408, i8 signext %411, i32 %416, i32* %420)
  store i64 %421, i64* %4, align 8
  br label %775

422:                                              ; preds = %355
  store i64 0, i64* %4, align 8
  br label %775

423:                                              ; preds = %166
  %424 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %425 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %424, i32 0, i32 6
  %426 = load %struct.TYPE_16__*, %struct.TYPE_16__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %426, i32 0, i32 0
  %428 = load i8*, i8** %427, align 8
  %429 = icmp ne i8* %428, null
  br i1 %429, label %430, label %438

430:                                              ; preds = %423
  %431 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %432 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %433 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %432, i32 0, i32 6
  %434 = load %struct.TYPE_16__*, %struct.TYPE_16__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %434, i32 0, i32 0
  %436 = load i8*, i8** %435, align 8
  %437 = call i32 @strbuf_addstr(%struct.strbuf* %431, i8* %436)
  store i64 1, i64* %4, align 8
  br label %775

438:                                              ; preds = %423
  store i64 0, i64* %4, align 8
  br label %775

439:                                              ; preds = %166
  %440 = load i8*, i8** %6, align 8
  %441 = getelementptr inbounds i8, i8* %440, i64 0
  %442 = load i8, i8* %441, align 1
  %443 = sext i8 %442 to i32
  %444 = icmp eq i32 %443, 71
  br i1 %444, label %445, label %549

445:                                              ; preds = %439
  %446 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %447 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %446, i32 0, i32 10
  %448 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %447, i32 0, i32 0
  %449 = load i8, i8* %448, align 8
  %450 = icmp ne i8 %449, 0
  br i1 %450, label %458, label %451

451:                                              ; preds = %445
  %452 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %453 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %452, i32 0, i32 11
  %454 = load %struct.commit*, %struct.commit** %453, align 8
  %455 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %456 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %455, i32 0, i32 10
  %457 = call i32 @check_commit_signature(%struct.commit* %454, %struct.TYPE_18__* %456)
  br label %458

458:                                              ; preds = %451, %445
  %459 = load i8*, i8** %6, align 8
  %460 = getelementptr inbounds i8, i8* %459, i64 1
  %461 = load i8, i8* %460, align 1
  %462 = sext i8 %461 to i32
  switch i32 %462, label %547 [
    i32 71, label %463
    i32 63, label %477
    i32 83, label %491
    i32 75, label %505
    i32 70, label %519
    i32 80, label %533
  ]

463:                                              ; preds = %458
  %464 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %465 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %464, i32 0, i32 10
  %466 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %465, i32 0, i32 1
  %467 = load i8*, i8** %466, align 8
  %468 = icmp ne i8* %467, null
  br i1 %468, label %469, label %476

469:                                              ; preds = %463
  %470 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %471 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %472 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %471, i32 0, i32 10
  %473 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %472, i32 0, i32 1
  %474 = load i8*, i8** %473, align 8
  %475 = call i32 @strbuf_addstr(%struct.strbuf* %470, i8* %474)
  br label %476

476:                                              ; preds = %469, %463
  br label %548

477:                                              ; preds = %458
  %478 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %479 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %478, i32 0, i32 10
  %480 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %479, i32 0, i32 0
  %481 = load i8, i8* %480, align 8
  %482 = sext i8 %481 to i32
  switch i32 %482, label %490 [
    i32 71, label %483
    i32 66, label %483
    i32 69, label %483
    i32 85, label %483
    i32 78, label %483
    i32 88, label %483
    i32 89, label %483
    i32 82, label %483
  ]

483:                                              ; preds = %477, %477, %477, %477, %477, %477, %477, %477
  %484 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %485 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %486 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %485, i32 0, i32 10
  %487 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %486, i32 0, i32 0
  %488 = load i8, i8* %487, align 8
  %489 = call i32 @strbuf_addch(%struct.strbuf* %484, i8 signext %488)
  br label %490

490:                                              ; preds = %483, %477
  br label %548

491:                                              ; preds = %458
  %492 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %493 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %492, i32 0, i32 10
  %494 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %493, i32 0, i32 2
  %495 = load i8*, i8** %494, align 8
  %496 = icmp ne i8* %495, null
  br i1 %496, label %497, label %504

497:                                              ; preds = %491
  %498 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %499 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %500 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %499, i32 0, i32 10
  %501 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %500, i32 0, i32 2
  %502 = load i8*, i8** %501, align 8
  %503 = call i32 @strbuf_addstr(%struct.strbuf* %498, i8* %502)
  br label %504

504:                                              ; preds = %497, %491
  br label %548

505:                                              ; preds = %458
  %506 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %507 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %506, i32 0, i32 10
  %508 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %507, i32 0, i32 3
  %509 = load i8*, i8** %508, align 8
  %510 = icmp ne i8* %509, null
  br i1 %510, label %511, label %518

511:                                              ; preds = %505
  %512 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %513 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %514 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %513, i32 0, i32 10
  %515 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %514, i32 0, i32 3
  %516 = load i8*, i8** %515, align 8
  %517 = call i32 @strbuf_addstr(%struct.strbuf* %512, i8* %516)
  br label %518

518:                                              ; preds = %511, %505
  br label %548

519:                                              ; preds = %458
  %520 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %521 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %520, i32 0, i32 10
  %522 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %521, i32 0, i32 4
  %523 = load i8*, i8** %522, align 8
  %524 = icmp ne i8* %523, null
  br i1 %524, label %525, label %532

525:                                              ; preds = %519
  %526 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %527 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %528 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %527, i32 0, i32 10
  %529 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %528, i32 0, i32 4
  %530 = load i8*, i8** %529, align 8
  %531 = call i32 @strbuf_addstr(%struct.strbuf* %526, i8* %530)
  br label %532

532:                                              ; preds = %525, %519
  br label %548

533:                                              ; preds = %458
  %534 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %535 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %534, i32 0, i32 10
  %536 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %535, i32 0, i32 5
  %537 = load i8*, i8** %536, align 8
  %538 = icmp ne i8* %537, null
  br i1 %538, label %539, label %546

539:                                              ; preds = %533
  %540 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %541 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %542 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %541, i32 0, i32 10
  %543 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %542, i32 0, i32 5
  %544 = load i8*, i8** %543, align 8
  %545 = call i32 @strbuf_addstr(%struct.strbuf* %540, i8* %544)
  br label %546

546:                                              ; preds = %539, %533
  br label %548

547:                                              ; preds = %458
  store i64 0, i64* %4, align 8
  br label %775

548:                                              ; preds = %546, %532, %518, %504, %490, %476
  store i64 2, i64* %4, align 8
  br label %775

549:                                              ; preds = %439
  %550 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %551 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %550, i32 0, i32 9
  %552 = load i32, i32* %551, align 8
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %557, label %554

554:                                              ; preds = %549
  %555 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %556 = call i32 @parse_commit_header(%struct.format_commit_context* %555)
  br label %557

557:                                              ; preds = %554, %549
  %558 = load i8*, i8** %6, align 8
  %559 = getelementptr inbounds i8, i8* %558, i64 0
  %560 = load i8, i8* %559, align 1
  %561 = sext i8 %560 to i32
  switch i32 %561, label %626 [
    i32 97, label %562
    i32 99, label %583
    i32 101, label %604
    i32 66, label %616
  ]

562:                                              ; preds = %557
  %563 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %564 = load i8*, i8** %6, align 8
  %565 = getelementptr inbounds i8, i8* %564, i64 1
  %566 = load i8, i8* %565, align 1
  %567 = load i8*, i8** %10, align 8
  %568 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %569 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %568, i32 0, i32 8
  %570 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %569, i32 0, i32 1
  %571 = load i32, i32* %570, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i8, i8* %567, i64 %572
  %574 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %575 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %574, i32 0, i32 8
  %576 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 8
  %578 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %579 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %578, i32 0, i32 6
  %580 = load %struct.TYPE_16__*, %struct.TYPE_16__** %579, align 8
  %581 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %580, i32 0, i32 1
  %582 = call i64 @format_person_part(%struct.strbuf* %563, i8 signext %566, i8* %573, i32 %577, i32* %581)
  store i64 %582, i64* %4, align 8
  br label %775

583:                                              ; preds = %557
  %584 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %585 = load i8*, i8** %6, align 8
  %586 = getelementptr inbounds i8, i8* %585, i64 1
  %587 = load i8, i8* %586, align 1
  %588 = load i8*, i8** %10, align 8
  %589 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %590 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %589, i32 0, i32 7
  %591 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %590, i32 0, i32 1
  %592 = load i32, i32* %591, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i8, i8* %588, i64 %593
  %595 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %596 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %595, i32 0, i32 7
  %597 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %600 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %599, i32 0, i32 6
  %601 = load %struct.TYPE_16__*, %struct.TYPE_16__** %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %601, i32 0, i32 1
  %603 = call i64 @format_person_part(%struct.strbuf* %584, i8 signext %587, i8* %594, i32 %598, i32* %602)
  store i64 %603, i64* %4, align 8
  br label %775

604:                                              ; preds = %557
  %605 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %606 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %605, i32 0, i32 1
  %607 = load i8*, i8** %606, align 8
  %608 = icmp ne i8* %607, null
  br i1 %608, label %609, label %615

609:                                              ; preds = %604
  %610 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %611 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %612 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %611, i32 0, i32 1
  %613 = load i8*, i8** %612, align 8
  %614 = call i32 @strbuf_addstr(%struct.strbuf* %610, i8* %613)
  br label %615

615:                                              ; preds = %609, %604
  store i64 1, i64* %4, align 8
  br label %775

616:                                              ; preds = %557
  %617 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %618 = load i8*, i8** %10, align 8
  %619 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %620 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %619, i32 0, i32 5
  %621 = load i32, i32* %620, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i8, i8* %618, i64 %622
  %624 = getelementptr inbounds i8, i8* %623, i64 1
  %625 = call i32 @strbuf_addstr(%struct.strbuf* %617, i8* %624)
  store i64 1, i64* %4, align 8
  br label %775

626:                                              ; preds = %557
  %627 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %628 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %627, i32 0, i32 4
  %629 = load i32, i32* %628, align 8
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %634, label %631

631:                                              ; preds = %626
  %632 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %633 = call i32 @parse_commit_message(%struct.format_commit_context* %632)
  br label %634

634:                                              ; preds = %631, %626
  %635 = load i8*, i8** %6, align 8
  %636 = getelementptr inbounds i8, i8* %635, i64 0
  %637 = load i8, i8* %636, align 1
  %638 = sext i8 %637 to i32
  switch i32 %638, label %666 [
    i32 115, label %639
    i32 102, label %648
    i32 98, label %657
  ]

639:                                              ; preds = %634
  %640 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %641 = load i8*, i8** %10, align 8
  %642 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %643 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %642, i32 0, i32 2
  %644 = load i32, i32* %643, align 8
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i8, i8* %641, i64 %645
  %647 = call i32 @format_subject(%struct.strbuf* %640, i8* %646, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 1, i64* %4, align 8
  br label %775

648:                                              ; preds = %634
  %649 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %650 = load i8*, i8** %10, align 8
  %651 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %652 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %651, i32 0, i32 2
  %653 = load i32, i32* %652, align 8
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i8, i8* %650, i64 %654
  %656 = call i32 @format_sanitized_subject(%struct.strbuf* %649, i8* %655)
  store i64 1, i64* %4, align 8
  br label %775

657:                                              ; preds = %634
  %658 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %659 = load i8*, i8** %10, align 8
  %660 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %661 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %660, i32 0, i32 3
  %662 = load i32, i32* %661, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i8, i8* %659, i64 %663
  %665 = call i32 @strbuf_addstr(%struct.strbuf* %658, i8* %664)
  store i64 1, i64* %4, align 8
  br label %775

666:                                              ; preds = %634
  %667 = load i8*, i8** %6, align 8
  %668 = call i64 @skip_prefix(i8* %667, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %12)
  %669 = icmp ne i64 %668, 0
  br i1 %669, label %670, label %774

670:                                              ; preds = %666
  %671 = bitcast %struct.process_trailer_options* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %671, i8* align 8 bitcast (%struct.process_trailer_options* @PROCESS_TRAILER_OPTIONS_INIT to i8*), i64 40, i1 false)
  %672 = bitcast %struct.string_list* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %672, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  %673 = bitcast %struct.strbuf* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %673, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i64 0, i64* %25, align 8
  %674 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %22, i32 0, i32 0
  store i32 1, i32* %674, align 8
  %675 = load i8*, i8** %12, align 8
  %676 = load i8, i8* %675, align 1
  %677 = sext i8 %676 to i32
  %678 = icmp eq i32 %677, 58
  br i1 %678, label %679, label %749

679:                                              ; preds = %670
  %680 = load i8*, i8** %12, align 8
  %681 = getelementptr inbounds i8, i8* %680, i32 1
  store i8* %681, i8** %12, align 8
  br label %682

682:                                              ; preds = %747, %679
  %683 = load i8*, i8** %12, align 8
  %684 = call i64 @match_placeholder_arg_value(i8* %683, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %12, i8** %26, i64* %27)
  %685 = icmp ne i64 %684, 0
  br i1 %685, label %686, label %715

686:                                              ; preds = %682
  %687 = load i64, i64* %27, align 8
  store i64 %687, i64* %28, align 8
  %688 = load i8*, i8** %26, align 8
  %689 = icmp ne i8* %688, null
  br i1 %689, label %691, label %690

690:                                              ; preds = %686
  br label %770

691:                                              ; preds = %686
  %692 = load i64, i64* %28, align 8
  %693 = icmp ne i64 %692, 0
  br i1 %693, label %694, label %705

694:                                              ; preds = %691
  %695 = load i8*, i8** %26, align 8
  %696 = load i64, i64* %28, align 8
  %697 = sub i64 %696, 1
  %698 = getelementptr inbounds i8, i8* %695, i64 %697
  %699 = load i8, i8* %698, align 1
  %700 = sext i8 %699 to i32
  %701 = icmp eq i32 %700, 58
  br i1 %701, label %702, label %705

702:                                              ; preds = %694
  %703 = load i64, i64* %28, align 8
  %704 = add i64 %703, -1
  store i64 %704, i64* %28, align 8
  br label %705

705:                                              ; preds = %702, %694, %691
  %706 = load i64, i64* %28, align 8
  %707 = inttoptr i64 %706 to i8*
  %708 = load i8*, i8** %26, align 8
  %709 = call %struct.TYPE_17__* @string_list_append(%struct.string_list* %23, i8* %708)
  %710 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %709, i32 0, i32 0
  store i8* %707, i8** %710, align 8
  %711 = load i32, i32* @format_trailer_match_cb, align 4
  %712 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %22, i32 0, i32 6
  store i32 %711, i32* %712, align 8
  %713 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %22, i32 0, i32 5
  store %struct.string_list* %23, %struct.string_list** %713, align 8
  %714 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %22, i32 0, i32 1
  store i32 1, i32* %714, align 4
  br label %747

715:                                              ; preds = %682
  %716 = load i8*, i8** %12, align 8
  %717 = call i64 @match_placeholder_arg_value(i8* %716, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %12, i8** %26, i64* %27)
  %718 = icmp ne i64 %717, 0
  br i1 %718, label %719, label %729

719:                                              ; preds = %715
  %720 = call i32 @strbuf_reset(%struct.strbuf* %24)
  %721 = load i8*, i8** %26, align 8
  %722 = load i64, i64* %27, align 8
  %723 = call i8* @xstrndup(i8* %721, i64 %722)
  store i8* %723, i8** %29, align 8
  %724 = load i8*, i8** %29, align 8
  %725 = call i32 @strbuf_expand(%struct.strbuf* %24, i8* %724, i64 (%struct.strbuf*, i8*, i32*)* @strbuf_expand_literal_cb, i32* null)
  %726 = load i8*, i8** %29, align 8
  %727 = call i32 @free(i8* %726)
  %728 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %22, i32 0, i32 4
  store %struct.strbuf* %24, %struct.strbuf** %728, align 8
  br label %746

729:                                              ; preds = %715
  %730 = load i8*, i8** %12, align 8
  %731 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %22, i32 0, i32 1
  %732 = call i32 @match_placeholder_bool_arg(i8* %730, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %12, i32* %731)
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %745, label %734

734:                                              ; preds = %729
  %735 = load i8*, i8** %12, align 8
  %736 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %22, i32 0, i32 2
  %737 = call i32 @match_placeholder_bool_arg(i8* %735, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %12, i32* %736)
  %738 = icmp ne i32 %737, 0
  br i1 %738, label %745, label %739

739:                                              ; preds = %734
  %740 = load i8*, i8** %12, align 8
  %741 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %22, i32 0, i32 3
  %742 = call i32 @match_placeholder_bool_arg(i8* %740, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %12, i32* %741)
  %743 = icmp ne i32 %742, 0
  br i1 %743, label %745, label %744

744:                                              ; preds = %739
  br label %748

745:                                              ; preds = %739, %734, %729
  br label %746

746:                                              ; preds = %745, %719
  br label %747

747:                                              ; preds = %746, %705
  br label %682

748:                                              ; preds = %744
  br label %749

749:                                              ; preds = %748, %670
  %750 = load i8*, i8** %12, align 8
  %751 = load i8, i8* %750, align 1
  %752 = sext i8 %751 to i32
  %753 = icmp eq i32 %752, 41
  br i1 %753, label %754, label %769

754:                                              ; preds = %749
  %755 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %756 = load i8*, i8** %10, align 8
  %757 = load %struct.format_commit_context*, %struct.format_commit_context** %8, align 8
  %758 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %757, i32 0, i32 2
  %759 = load i32, i32* %758, align 8
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds i8, i8* %756, i64 %760
  %762 = call i32 @format_trailers_from_commit(%struct.strbuf* %755, i8* %761, %struct.process_trailer_options* %22)
  %763 = load i8*, i8** %12, align 8
  %764 = load i8*, i8** %6, align 8
  %765 = ptrtoint i8* %763 to i64
  %766 = ptrtoint i8* %764 to i64
  %767 = sub i64 %765, %766
  %768 = add nsw i64 %767, 1
  store i64 %768, i64* %25, align 8
  br label %769

769:                                              ; preds = %754, %749
  br label %770

770:                                              ; preds = %769, %690
  %771 = call i32 @string_list_clear(%struct.string_list* %23, i32 0)
  %772 = call i32 @strbuf_release(%struct.strbuf* %24)
  %773 = load i64, i64* %25, align 8
  store i64 %773, i64* %4, align 8
  br label %775

774:                                              ; preds = %666
  store i64 0, i64* %4, align 8
  br label %775

775:                                              ; preds = %774, %770, %657, %648, %639, %616, %615, %583, %562, %548, %547, %438, %430, %422, %407, %406, %390, %350, %349, %332, %309, %302, %297, %296, %262, %223, %217, %192, %171, %150, %149, %136, %134, %104, %88, %77, %43
  %776 = load i64, i64* %4, align 8
  ret i64 %776
}

declare dso_local i64 @strbuf_expand_literal_cb(%struct.strbuf*, i8*, i32*) #1

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i32 @want_color(i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @parse_color(%struct.strbuf*, i8*, %struct.format_commit_context*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @rewrap_message_tail(%struct.strbuf*, %struct.format_commit_context*, i64, i64, i64) #1

declare dso_local i64 @parse_padding_placeholder(i8*, %struct.format_commit_context*) #1

declare dso_local i32 @parse_object(i32, i32*) #1

declare dso_local i8* @diff_get_color(i32, i32) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @strbuf_add_unique_abbrev(%struct.strbuf*, i32*, i32) #1

declare dso_local i32* @get_commit_tree_oid(%struct.commit*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i8* @get_revision_mark(i32*, %struct.commit*) #1

declare dso_local i32 @format_decorations(%struct.strbuf*, %struct.commit*, i32) #1

declare dso_local i32 @format_decorations_extended(%struct.strbuf*, %struct.commit*, i32, i8*, i8*, i8*) #1

declare dso_local i8** @revision_sources_at(i32, %struct.commit*) #1

declare dso_local i32 @get_reflog_selector(%struct.strbuf*, i32, i32*, i32, i32) #1

declare dso_local i32 @get_reflog_message(%struct.strbuf*, i32) #1

declare dso_local i64 @format_reflog_person(%struct.strbuf*, i8 signext, i32, i32*) #1

declare dso_local i32 @check_commit_signature(%struct.commit*, %struct.TYPE_18__*) #1

declare dso_local i32 @parse_commit_header(%struct.format_commit_context*) #1

declare dso_local i64 @format_person_part(%struct.strbuf*, i8 signext, i8*, i32, i32*) #1

declare dso_local i32 @parse_commit_message(%struct.format_commit_context*) #1

declare dso_local i32 @format_subject(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @format_sanitized_subject(%struct.strbuf*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @match_placeholder_arg_value(i8*, i8*, i8**, i8**, i64*) #1

declare dso_local %struct.TYPE_17__* @string_list_append(%struct.string_list*, i8*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i8* @xstrndup(i8*, i64) #1

declare dso_local i32 @strbuf_expand(%struct.strbuf*, i8*, i64 (%struct.strbuf*, i8*, i32*)*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @match_placeholder_bool_arg(i8*, i8*, i8**, i32*) #1

declare dso_local i32 @format_trailers_from_commit(%struct.strbuf*, i8*, %struct.process_trailer_options*) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
