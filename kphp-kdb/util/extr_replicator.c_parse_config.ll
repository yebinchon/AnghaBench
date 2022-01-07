; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_parse_config.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.location_list_entry*, %struct.location_list_entry*, %struct.remote_binlog*, %struct.repl_server_status*, %struct.repl_server_status* }
%struct.location_list_entry = type { i32, i8*, i32, %struct.location_list_entry* }
%struct.remote_binlog = type { i8*, i32, %struct.location_list_entry* }
%struct.repl_server_status = type { i32 }

@fd = common dso_local global i32* null, align 8
@config_buff = common dso_local global i8* null, align 8
@MAX_CONFIG_SIZE = common dso_local global i32 0, align 4
@config_bytes = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error reading configuration file %s: %m\0A\00", align 1
@config_filename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"configuration file %s too long (max %d bytes)\0A\00", align 1
@cfg_start = common dso_local global i8* null, align 8
@cfg_cur = common dso_local global i32* null, align 8
@cfg_end = common dso_local global i64* null, align 8
@cfg_lno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"'*' must be followed with target description\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"error at line %d: location %s for binlog %s is not of <hostname>:<path> format\0A\00", align 1
@hostname_len = common dso_local global i32 0, align 4
@hostname = common dso_local global i8* null, align 8
@local_rbs = common dso_local global i32 0, align 4
@MAX_LOCAL_RBS = common dso_local global i32 0, align 4
@LR = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [66 x i8] c"error: location %s suggested for two different binlogs %s and %s\0A\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"found related binlog: %s at %s\0A\00", align 1
@cfg_lex = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"EOF expected\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%d related binlogs found\0A\00", align 1
@check_all_locations = common dso_local global i64 0, align 8
@HASH_PRIME = common dso_local global i32 0, align 4
@rb_hash = common dso_local global %struct.remote_binlog** null, align 8
@.str.8 = private unnamed_addr constant [65 x i8] c"%d wrong remote binlog descriptions found in configuration file\0A\00", align 1
@local_masters = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"%d wrong related binlog descriptions found\0A\00", align 1
@.str.10 = private unnamed_addr constant [79 x i8] c"found %d related binlog descriptions, we (%s) hold master copy for %d of them\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"binlog #%d: %s, master at %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"binlog #%d: %s, slave at %s, master is at %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.remote_binlog*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.location_list_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load i32*, i32** @fd, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** @config_buff, align 8
  %22 = load i32, i32* @MAX_CONFIG_SIZE, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @read(i32 %20, i8* %21, i32 %23)
  store i32 %24, i32* %4, align 4
  store i32 %24, i32* @config_bytes, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @config_bytes, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %17
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** @config_filename, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 -2, i32* %2, align 4
  br label %520

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @MAX_CONFIG_SIZE, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* @stderr, align 4
  %40 = load i8*, i8** @config_filename, align 8
  %41 = load i32, i32* @MAX_CONFIG_SIZE, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %41)
  store i32 -2, i32* %2, align 4
  br label %520

43:                                               ; preds = %34
  %44 = load i8*, i8** @config_buff, align 8
  store i8* %44, i8** @cfg_start, align 8
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** @cfg_cur, align 8
  %46 = load i8*, i8** @cfg_start, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %46, i64 %48
  %50 = bitcast i8* %49 to i64*
  store i64* %50, i64** @cfg_end, align 8
  %51 = load i64*, i64** @cfg_end, align 8
  store i64 0, i64* %51, align 8
  store i32 1, i32* @cfg_lno, align 4
  br label %52

52:                                               ; preds = %43, %321
  %53 = call i32 (...) @cfg_skipspc()
  %54 = call i32 @cfg_getword(i32 1)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %322

58:                                               ; preds = %52
  %59 = load i32*, i32** @cfg_cur, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call %struct.remote_binlog* @get_rb_hash(i32* %59, i32 %60, i32 1)
  store %struct.remote_binlog* %61, %struct.remote_binlog** %7, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** @cfg_cur, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** @cfg_cur, align 8
  br label %66

66:                                               ; preds = %302, %58
  %67 = load i32*, i32** @cfg_cur, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32*, i32** @cfg_cur, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 9
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i1 [ true, %66 ], [ %73, %70 ]
  br i1 %75, label %76, label %307

76:                                               ; preds = %74
  %77 = call i32 (...) @cfg_skonlyspc()
  store i32 1, i32* %8, align 4
  %78 = load i32*, i32** @cfg_cur, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 35
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %307

82:                                               ; preds = %76
  %83 = load i32*, i32** @cfg_cur, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 42
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  store i32 0, i32* %8, align 4
  %87 = load i32*, i32** @cfg_cur, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** @cfg_cur, align 8
  br label %89

89:                                               ; preds = %86, %82
  %90 = call i32 @cfg_getword(i32 0)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = call i32 @syntax(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 %97, i32* %2, align 4
  br label %520

98:                                               ; preds = %93
  br label %307

99:                                               ; preds = %89
  %100 = load %struct.remote_binlog*, %struct.remote_binlog** %7, align 8
  %101 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %100, i32 0, i32 2
  %102 = load %struct.location_list_entry*, %struct.location_list_entry** %101, align 8
  store %struct.location_list_entry* %102, %struct.location_list_entry** %9, align 8
  br label %103

103:                                              ; preds = %126, %99
  %104 = load %struct.location_list_entry*, %struct.location_list_entry** %9, align 8
  %105 = icmp ne %struct.location_list_entry* %104, null
  br i1 %105, label %106, label %130

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.location_list_entry*, %struct.location_list_entry** %9, align 8
  %109 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %107, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %106
  %113 = load %struct.location_list_entry*, %struct.location_list_entry** %9, align 8
  %114 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i32*, i32** @cfg_cur, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 (i8*, ...) @memcmp(i8* %115, i32* %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.location_list_entry*, %struct.location_list_entry** %9, align 8
  %123 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %130

126:                                              ; preds = %112, %106
  %127 = load %struct.location_list_entry*, %struct.location_list_entry** %9, align 8
  %128 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %127, i32 0, i32 3
  %129 = load %struct.location_list_entry*, %struct.location_list_entry** %128, align 8
  store %struct.location_list_entry* %129, %struct.location_list_entry** %9, align 8
  br label %103

130:                                              ; preds = %120, %103
  %131 = load %struct.location_list_entry*, %struct.location_list_entry** %9, align 8
  %132 = icmp ne %struct.location_list_entry* %131, null
  br i1 %132, label %302, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  %136 = call i8* @zmalloc(i32 %135)
  store i8* %136, i8** %10, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = load i32*, i32** @cfg_cur, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @memcpy(i8* %137, i32* %138, i32 %139)
  %141 = load i8*, i8** %10, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  store i8 0, i8* %144, align 1
  %145 = load i8*, i8** %10, align 8
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @memchr(i8* %145, i8 signext 58, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %133
  %150 = load i32, i32* @stderr, align 4
  %151 = load i32, i32* @cfg_lno, align 4
  %152 = load i8*, i8** %10, align 8
  %153 = load %struct.remote_binlog*, %struct.remote_binlog** %7, align 8
  %154 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i32 %151, i8* %152, i8* %155)
  store i32 -1, i32* %2, align 4
  br label %520

157:                                              ; preds = %133
  %158 = call i8* @zmalloc(i32 32)
  %159 = bitcast i8* %158 to %struct.location_list_entry*
  store %struct.location_list_entry* %159, %struct.location_list_entry** %9, align 8
  %160 = load %struct.remote_binlog*, %struct.remote_binlog** %7, align 8
  %161 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %160, i32 0, i32 2
  %162 = load %struct.location_list_entry*, %struct.location_list_entry** %161, align 8
  %163 = load %struct.location_list_entry*, %struct.location_list_entry** %9, align 8
  %164 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %163, i32 0, i32 3
  store %struct.location_list_entry* %162, %struct.location_list_entry** %164, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = load %struct.location_list_entry*, %struct.location_list_entry** %9, align 8
  %167 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load %struct.location_list_entry*, %struct.location_list_entry** %9, align 8
  %170 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.location_list_entry*, %struct.location_list_entry** %9, align 8
  %172 = load %struct.remote_binlog*, %struct.remote_binlog** %7, align 8
  %173 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %172, i32 0, i32 2
  store %struct.location_list_entry* %171, %struct.location_list_entry** %173, align 8
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* @hostname_len, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %298

177:                                              ; preds = %157
  %178 = load i8*, i8** %10, align 8
  %179 = load i8*, i8** @hostname, align 8
  %180 = load i32, i32* @hostname_len, align 4
  %181 = call i32 (i8*, ...) @memcmp(i8* %178, i8* %179, i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %298, label %183

183:                                              ; preds = %177
  %184 = load i8*, i8** %10, align 8
  %185 = load i32, i32* @hostname_len, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 58
  br i1 %190, label %191, label %298

191:                                              ; preds = %183
  %192 = load i32, i32* %8, align 4
  %193 = or i32 %192, 2
  store i32 %193, i32* %8, align 4
  %194 = load %struct.remote_binlog*, %struct.remote_binlog** %7, align 8
  %195 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, 2
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %297, label %199

199:                                              ; preds = %191
  %200 = load %struct.remote_binlog*, %struct.remote_binlog** %7, align 8
  %201 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, 2
  store i32 %203, i32* %201, align 8
  %204 = load i32, i32* @local_rbs, align 4
  %205 = load i32, i32* @MAX_LOCAL_RBS, align 4
  %206 = icmp slt i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = call i32 @assert(i32 %207)
  store i32 0, i32* %6, align 4
  br label %209

209:                                              ; preds = %253, %199
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @local_rbs, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %256

213:                                              ; preds = %209
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 2
  %219 = load %struct.location_list_entry*, %struct.location_list_entry** %218, align 8
  %220 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %252

224:                                              ; preds = %213
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 2
  %230 = load %struct.location_list_entry*, %struct.location_list_entry** %229, align 8
  %231 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = load i8*, i8** %10, align 8
  %234 = load i32, i32* %5, align 4
  %235 = call i32 (i8*, ...) @memcmp(i8* %232, i8* %233, i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %252, label %237

237:                                              ; preds = %224
  %238 = load i32, i32* @stderr, align 4
  %239 = load i8*, i8** %10, align 8
  %240 = load %struct.remote_binlog*, %struct.remote_binlog** %7, align 8
  %241 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 3
  %248 = load %struct.remote_binlog*, %struct.remote_binlog** %247, align 8
  %249 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 (i32, i8*, ...) @fprintf(i32 %238, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i8* %239, i8* %242, i8* %250)
  store i32 -1, i32* %2, align 4
  br label %520

252:                                              ; preds = %224, %213
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %6, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %6, align 4
  br label %209

256:                                              ; preds = %209
  %257 = load %struct.location_list_entry*, %struct.location_list_entry** %9, align 8
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %259 = load i32, i32* @local_rbs, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 2
  store %struct.location_list_entry* %257, %struct.location_list_entry** %262, align 8
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %264 = load i32, i32* @local_rbs, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i64 %265
  %267 = bitcast %struct.TYPE_2__* %266 to %struct.repl_server_status*
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %269 = load i32, i32* @local_rbs, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 4
  store %struct.repl_server_status* %267, %struct.repl_server_status** %272, align 8
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %274 = load i32, i32* @local_rbs, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 5
  store %struct.repl_server_status* %267, %struct.repl_server_status** %277, align 8
  %278 = load %struct.remote_binlog*, %struct.remote_binlog** %7, align 8
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %280 = load i32, i32* @local_rbs, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* @local_rbs, align 4
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 3
  store %struct.remote_binlog* %278, %struct.remote_binlog** %284, align 8
  %285 = load i64, i64* @verbosity, align 8
  %286 = icmp sgt i64 %285, 0
  br i1 %286, label %287, label %296

287:                                              ; preds = %256
  %288 = load i32, i32* @stderr, align 4
  %289 = load %struct.remote_binlog*, %struct.remote_binlog** %7, align 8
  %290 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.location_list_entry*, %struct.location_list_entry** %9, align 8
  %293 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %292, i32 0, i32 1
  %294 = load i8*, i8** %293, align 8
  %295 = call i32 (i32, i8*, ...) @fprintf(i32 %288, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %291, i8* %294)
  br label %296

296:                                              ; preds = %287, %256
  br label %297

297:                                              ; preds = %296, %191
  br label %298

298:                                              ; preds = %297, %183, %177, %157
  %299 = load i32, i32* %8, align 4
  %300 = load %struct.location_list_entry*, %struct.location_list_entry** %9, align 8
  %301 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %300, i32 0, i32 2
  store i32 %299, i32* %301, align 8
  br label %302

302:                                              ; preds = %298, %130
  %303 = load i32, i32* %5, align 4
  %304 = load i32*, i32** @cfg_cur, align 8
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  store i32* %306, i32** @cfg_cur, align 8
  br label %66

307:                                              ; preds = %98, %81, %74
  %308 = call i32 (...) @cfg_skonlyspc()
  %309 = load i32*, i32** @cfg_cur, align 8
  %310 = load i32, i32* %309, align 4
  %311 = icmp ne i32 %310, 13
  br i1 %311, label %312, label %321

312:                                              ; preds = %307
  %313 = load i32*, i32** @cfg_cur, align 8
  %314 = load i32, i32* %313, align 4
  %315 = icmp ne i32 %314, 10
  br i1 %315, label %316, label %321

316:                                              ; preds = %312
  %317 = load i32*, i32** @cfg_cur, align 8
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 35
  br i1 %319, label %320, label %321

320:                                              ; preds = %316
  br label %322

321:                                              ; preds = %316, %312, %307
  br label %52

322:                                              ; preds = %320, %57
  %323 = call i32 (...) @cfg_getlex()
  %324 = load i64, i64* @cfg_lex, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %322
  %327 = call i32 @syntax(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 %327, i32* %2, align 4
  br label %520

328:                                              ; preds = %322
  %329 = load i64, i64* @verbosity, align 8
  %330 = icmp sgt i64 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %328
  %332 = load i32, i32* @stderr, align 4
  %333 = load i32, i32* @local_rbs, align 4
  %334 = call i32 (i32, i8*, ...) @fprintf(i32 %332, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %333)
  br label %335

335:                                              ; preds = %331, %328
  %336 = load i64, i64* @check_all_locations, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %373

338:                                              ; preds = %335
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %339

339:                                              ; preds = %362, %338
  %340 = load i32, i32* %11, align 4
  %341 = load i32, i32* @HASH_PRIME, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %343, label %365

343:                                              ; preds = %339
  %344 = load %struct.remote_binlog**, %struct.remote_binlog*** @rb_hash, align 8
  %345 = load i32, i32* %11, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.remote_binlog*, %struct.remote_binlog** %344, i64 %346
  %348 = load %struct.remote_binlog*, %struct.remote_binlog** %347, align 8
  %349 = icmp ne %struct.remote_binlog* %348, null
  br i1 %349, label %350, label %361

350:                                              ; preds = %343
  %351 = load %struct.remote_binlog**, %struct.remote_binlog*** @rb_hash, align 8
  %352 = load i32, i32* %11, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.remote_binlog*, %struct.remote_binlog** %351, i64 %353
  %355 = load %struct.remote_binlog*, %struct.remote_binlog** %354, align 8
  %356 = call i64 @check_location(%struct.remote_binlog* %355)
  %357 = load i32, i32* %12, align 4
  %358 = sext i32 %357 to i64
  %359 = add nsw i64 %358, %356
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %12, align 4
  br label %361

361:                                              ; preds = %350, %343
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %11, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %11, align 4
  br label %339

365:                                              ; preds = %339
  %366 = load i32, i32* %12, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %365
  %369 = load i32, i32* @stderr, align 4
  %370 = load i32, i32* %12, align 4
  %371 = call i32 (i32, i8*, ...) @fprintf(i32 %369, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i32 %370)
  store i32 -1, i32* %2, align 4
  br label %520

372:                                              ; preds = %365
  br label %373

373:                                              ; preds = %372, %335
  store i32 0, i32* %13, align 4
  store i32 0, i32* %6, align 4
  br label %374

374:                                              ; preds = %441, %373
  %375 = load i32, i32* %6, align 4
  %376 = load i32, i32* @local_rbs, align 4
  %377 = icmp slt i32 %375, %376
  br i1 %377, label %378, label %444

378:                                              ; preds = %374
  %379 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %380 = load i32, i32* %6, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i32 0, i32 3
  %384 = load %struct.remote_binlog*, %struct.remote_binlog** %383, align 8
  %385 = call i64 @check_location(%struct.remote_binlog* %384)
  %386 = load i32, i32* %13, align 4
  %387 = sext i32 %386 to i64
  %388 = add nsw i64 %387, %385
  %389 = trunc i64 %388 to i32
  store i32 %389, i32* %13, align 4
  %390 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %391 = load i32, i32* %6, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %393, i32 0, i32 3
  %395 = load %struct.remote_binlog*, %struct.remote_binlog** %394, align 8
  %396 = call %struct.location_list_entry* @get_master(%struct.remote_binlog* %395)
  %397 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %398 = load i32, i32* %6, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %400, i32 0, i32 1
  store %struct.location_list_entry* %396, %struct.location_list_entry** %401, align 8
  %402 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %403 = load i32, i32* %6, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %405, i32 0, i32 1
  %407 = load %struct.location_list_entry*, %struct.location_list_entry** %406, align 8
  %408 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %409 = load i32, i32* %6, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %408, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i32 0, i32 2
  %413 = load %struct.location_list_entry*, %struct.location_list_entry** %412, align 8
  %414 = icmp eq %struct.location_list_entry* %407, %413
  br i1 %414, label %415, label %427

415:                                              ; preds = %378
  %416 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %417 = load i32, i32* %6, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %419, i32 0, i32 3
  %421 = load %struct.remote_binlog*, %struct.remote_binlog** %420, align 8
  %422 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 8
  %424 = or i32 %423, 4
  store i32 %424, i32* %422, align 8
  %425 = load i32, i32* @local_masters, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* @local_masters, align 4
  br label %427

427:                                              ; preds = %415, %378
  %428 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %429 = load i32, i32* %6, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %428, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %431, i32 0, i32 3
  %433 = load %struct.remote_binlog*, %struct.remote_binlog** %432, align 8
  %434 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %437 = load i32, i32* %6, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %436, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %439, i32 0, i32 0
  store i32 %435, i32* %440, align 8
  br label %441

441:                                              ; preds = %427
  %442 = load i32, i32* %6, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %6, align 4
  br label %374

444:                                              ; preds = %374
  %445 = load i32, i32* %13, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %444
  %448 = load i32, i32* @stderr, align 4
  %449 = load i32, i32* %13, align 4
  %450 = call i32 (i32, i8*, ...) @fprintf(i32 %448, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %449)
  store i32 -1, i32* %2, align 4
  br label %520

451:                                              ; preds = %444
  %452 = load i64, i64* @verbosity, align 8
  %453 = icmp sgt i64 %452, 0
  br i1 %453, label %454, label %519

454:                                              ; preds = %451
  %455 = load i32, i32* @stderr, align 4
  %456 = load i32, i32* @local_rbs, align 4
  %457 = load i8*, i8** @hostname, align 8
  %458 = load i32, i32* @local_masters, align 4
  %459 = call i32 (i32, i8*, ...) @fprintf(i32 %455, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.10, i64 0, i64 0), i32 %456, i8* %457, i32 %458)
  store i32 0, i32* %6, align 4
  br label %460

460:                                              ; preds = %515, %454
  %461 = load i32, i32* %6, align 4
  %462 = load i32, i32* @local_rbs, align 4
  %463 = icmp slt i32 %461, %462
  br i1 %463, label %464, label %518

464:                                              ; preds = %460
  %465 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %466 = load i32, i32* %6, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %468, i32 0, i32 3
  %470 = load %struct.remote_binlog*, %struct.remote_binlog** %469, align 8
  store %struct.remote_binlog* %470, %struct.remote_binlog** %7, align 8
  %471 = load %struct.remote_binlog*, %struct.remote_binlog** %7, align 8
  %472 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 8
  %474 = and i32 %473, 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %491

476:                                              ; preds = %464
  %477 = load i32, i32* @stderr, align 4
  %478 = load i32, i32* %6, align 4
  %479 = load %struct.remote_binlog*, %struct.remote_binlog** %7, align 8
  %480 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %479, i32 0, i32 0
  %481 = load i8*, i8** %480, align 8
  %482 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %483 = load i32, i32* %6, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %482, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %485, i32 0, i32 2
  %487 = load %struct.location_list_entry*, %struct.location_list_entry** %486, align 8
  %488 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %487, i32 0, i32 1
  %489 = load i8*, i8** %488, align 8
  %490 = call i32 (i32, i8*, ...) @fprintf(i32 %477, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %478, i8* %481, i8* %489)
  br label %514

491:                                              ; preds = %464
  %492 = load i32, i32* @stderr, align 4
  %493 = load i32, i32* %6, align 4
  %494 = load %struct.remote_binlog*, %struct.remote_binlog** %7, align 8
  %495 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %494, i32 0, i32 0
  %496 = load i8*, i8** %495, align 8
  %497 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %498 = load i32, i32* %6, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %497, i64 %499
  %501 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %500, i32 0, i32 2
  %502 = load %struct.location_list_entry*, %struct.location_list_entry** %501, align 8
  %503 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %502, i32 0, i32 1
  %504 = load i8*, i8** %503, align 8
  %505 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LR, align 8
  %506 = load i32, i32* %6, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %505, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %508, i32 0, i32 1
  %510 = load %struct.location_list_entry*, %struct.location_list_entry** %509, align 8
  %511 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %510, i32 0, i32 1
  %512 = load i8*, i8** %511, align 8
  %513 = call i32 (i32, i8*, ...) @fprintf(i32 %492, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i32 %493, i8* %496, i8* %504, i8* %512)
  br label %514

514:                                              ; preds = %491, %476
  br label %515

515:                                              ; preds = %514
  %516 = load i32, i32* %6, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %6, align 4
  br label %460

518:                                              ; preds = %460
  br label %519

519:                                              ; preds = %518, %451
  store i32 0, i32* %2, align 4
  br label %520

520:                                              ; preds = %519, %447, %368, %326, %237, %149, %96, %38, %30
  %521 = load i32, i32* %2, align 4
  ret i32 %521
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @cfg_skipspc(...) #1

declare dso_local i32 @cfg_getword(i32) #1

declare dso_local %struct.remote_binlog* @get_rb_hash(i32*, i32, i32) #1

declare dso_local i32 @cfg_skonlyspc(...) #1

declare dso_local i32 @syntax(i8*) #1

declare dso_local i32 @memcmp(i8*, ...) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cfg_getlex(...) #1

declare dso_local i64 @check_location(%struct.remote_binlog*) #1

declare dso_local %struct.location_list_entry* @get_master(%struct.remote_binlog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
