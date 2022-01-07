; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"hvu:m:f:g:o:\00", align 1
@verbosity = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@split_rem = common dso_local global i32 0, align 4
@split_mod = common dso_local global i32 0, align 4
@table_format = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"fatal: unsupported table dump format: %s\0A\00", align 1
@groups_fname = common dso_local global i8* null, align 8
@output_format = common dso_local global i32 0, align 4
@username = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@src_fname = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@src_fd = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"cannot open %s: %m\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"fatal: cannot determine table type from filename %s\0A\00", align 1
@targ_fname = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"cannot create %s: %m\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@au_END = common dso_local global i32 0, align 4
@Args_per_line = common dso_local global i32 0, align 4
@SEARCH_SCHEMA_V1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"audio_search\00", align 1
@vi_END = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"video_search\00", align 1
@ap_END = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"apps_search\00", align 1
@gr_END = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"group_search\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"event_search\00", align 1
@bp_END = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"blog_posts_search\00", align 1
@ml_END = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"member_name_search\00", align 1
@mi_END = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"market_search\00", align 1
@qu_END = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"question_search\00", align 1
@to_END = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"topic_search\00", align 1
@mf_END = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [14 x i8] c"status_search\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"unknown table type\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"error syncing %s: %m\00", align 1
@map_size = common dso_local global i32 0, align 4
@map_changes = common dso_local global i64 0, align 8
@O_TRUNC = common dso_local global i32 0, align 4
@map_fd = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [31 x i8] c"cannot create map file %s: %m\0A\00", align 1
@Map = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [33 x i8] c"%d bytes written to map file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** @progname, align 8
  br label %10

10:                                               ; preds = %59, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %60

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %59 [
    i32 118, label %17
    i32 104, label %18
    i32 109, label %20
    i32 102, label %42
    i32 103, label %52
    i32 111, label %54
    i32 117, label %57
  ]

17:                                               ; preds = %15
  store i64 1, i64* @verbosity, align 8
  br label %59

18:                                               ; preds = %15
  %19 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %329

20:                                               ; preds = %15
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* @split_rem, i32* @split_mod)
  %23 = icmp eq i32 %22, 2
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @split_mod, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load i32, i32* @split_mod, align 4
  %30 = icmp sle i32 %29, 1000
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* @split_rem, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @split_rem, align 4
  %36 = load i32, i32* @split_mod, align 4
  %37 = icmp slt i32 %35, %36
  br label %38

38:                                               ; preds = %34, %31, %28, %20
  %39 = phi i1 [ false, %31 ], [ false, %28 ], [ false, %20 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  br label %59

42:                                               ; preds = %15
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i32 @get_dump_format(i8* %43)
  store i32 %44, i32* @table_format, align 4
  %45 = load i32, i32* @table_format, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** @optarg, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i32 2, i32* %3, align 4
  br label %329

51:                                               ; preds = %42
  br label %59

52:                                               ; preds = %15
  %53 = load i8*, i8** @optarg, align 8
  store i8* %53, i8** @groups_fname, align 8
  br label %59

54:                                               ; preds = %15
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i32 @atol(i8* %55)
  store i32 %56, i32* @output_format, align 4
  br label %59

57:                                               ; preds = %15
  %58 = load i8*, i8** @optarg, align 8
  store i8* %58, i8** @username, align 8
  br label %59

59:                                               ; preds = %15, %57, %54, %52, %51, %38, %17
  br label %10

60:                                               ; preds = %10
  %61 = load i32, i32* @optind, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @optind, align 4
  %66 = add nsw i32 %65, 2
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64, %60
  %70 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %329

71:                                               ; preds = %64
  %72 = load i8**, i8*** %5, align 8
  %73 = load i32, i32* @optind, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** @src_fname, align 8
  %77 = load i8*, i8** @username, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %71
  %80 = load i8*, i8** @username, align 8
  %81 = call i64 @change_user(i8* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32, i32* @stderr, align 4
  %85 = load i8*, i8** @username, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i8*, i8** @username, align 8
  br label %90

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i8* [ %88, %87 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %89 ]
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  store i32 1, i32* %3, align 4
  br label %329

93:                                               ; preds = %79, %71
  %94 = load i8*, i8** @src_fname, align 8
  %95 = load i32, i32* @O_RDONLY, align 4
  %96 = call i8* (i8*, i32, ...) @open(i8* %94, i32 %95)
  %97 = ptrtoint i8* %96 to i64
  store i64 %97, i64* @src_fd, align 8
  %98 = load i64, i64* @src_fd, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* @stderr, align 4
  %102 = load i8*, i8** @src_fname, align 8
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %102)
  store i32 1, i32* %3, align 4
  br label %329

104:                                              ; preds = %93
  %105 = load i32, i32* @table_format, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %104
  %108 = load i8*, i8** @src_fname, align 8
  %109 = call i8* @fname_last(i8* %108)
  %110 = call i32 @get_dump_format(i8* %109)
  store i32 %110, i32* @table_format, align 4
  %111 = load i32, i32* @table_format, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* @stderr, align 4
  %115 = load i8*, i8** @src_fname, align 8
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %113, %107
  br label %118

118:                                              ; preds = %117, %104
  %119 = load i32, i32* @optind, align 4
  %120 = add nsw i32 %119, 1
  %121 = load i32, i32* %4, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %145

123:                                              ; preds = %118
  %124 = load i8**, i8*** %5, align 8
  %125 = load i32, i32* @optind, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %124, i64 %127
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** @targ_fname, align 8
  %130 = load i8*, i8** @targ_fname, align 8
  %131 = load i32, i32* @O_WRONLY, align 4
  %132 = load i32, i32* @O_APPEND, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @O_CREAT, align 4
  %135 = or i32 %133, %134
  %136 = call i8* (i8*, i32, ...) @open(i8* %130, i32 %135, i32 420)
  %137 = ptrtoint i8* %136 to i32
  store i32 %137, i32* @targ_fd, align 4
  %138 = load i32, i32* @targ_fd, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %123
  %141 = load i32, i32* @stderr, align 4
  %142 = load i8*, i8** @targ_fname, align 8
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %142)
  store i32 1, i32* %3, align 4
  br label %329

144:                                              ; preds = %123
  br label %146

145:                                              ; preds = %118
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %146

146:                                              ; preds = %145, %144
  %147 = load i32, i32* @table_format, align 4
  switch i32 %147, label %259 [
    i32 137, label %148
    i32 128, label %158
    i32 138, label %168
    i32 134, label %178
    i32 135, label %188
    i32 136, label %198
    i32 132, label %208
    i32 133, label %218
    i32 130, label %228
    i32 129, label %238
    i32 131, label %249
  ]

148:                                              ; preds = %146
  %149 = load i32, i32* @au_END, align 4
  store i32 %149, i32* @Args_per_line, align 4
  %150 = load i32, i32* @SEARCH_SCHEMA_V1, align 4
  %151 = call i32 @start_binlog(i32 %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %152

152:                                              ; preds = %155, %148
  %153 = call i32 (...) @read_record()
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = call i32 (...) @process_audio_row()
  br label %152

157:                                              ; preds = %152
  br label %263

158:                                              ; preds = %146
  %159 = load i32, i32* @vi_END, align 4
  store i32 %159, i32* @Args_per_line, align 4
  %160 = load i32, i32* @SEARCH_SCHEMA_V1, align 4
  %161 = call i32 @start_binlog(i32 %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %162

162:                                              ; preds = %165, %158
  %163 = call i32 (...) @read_record()
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = call i32 (...) @process_video_row()
  br label %162

167:                                              ; preds = %162
  br label %263

168:                                              ; preds = %146
  %169 = load i32, i32* @ap_END, align 4
  store i32 %169, i32* @Args_per_line, align 4
  %170 = load i32, i32* @SEARCH_SCHEMA_V1, align 4
  %171 = call i32 @start_binlog(i32 %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %172

172:                                              ; preds = %175, %168
  %173 = call i32 (...) @read_record()
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 (...) @process_applications_row()
  br label %172

177:                                              ; preds = %172
  br label %263

178:                                              ; preds = %146
  %179 = load i32, i32* @gr_END, align 4
  store i32 %179, i32* @Args_per_line, align 4
  %180 = load i32, i32* @SEARCH_SCHEMA_V1, align 4
  %181 = call i32 @start_binlog(i32 %180, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %182

182:                                              ; preds = %185, %178
  %183 = call i32 (...) @read_record()
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = call i32 (...) @process_groups_row()
  br label %182

187:                                              ; preds = %182
  br label %263

188:                                              ; preds = %146
  %189 = load i32, i32* @gr_END, align 4
  store i32 %189, i32* @Args_per_line, align 4
  %190 = load i32, i32* @SEARCH_SCHEMA_V1, align 4
  %191 = call i32 @start_binlog(i32 %190, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  br label %192

192:                                              ; preds = %195, %188
  %193 = call i32 (...) @read_record()
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = call i32 (...) @process_events_row()
  br label %192

197:                                              ; preds = %192
  br label %263

198:                                              ; preds = %146
  %199 = load i32, i32* @bp_END, align 4
  store i32 %199, i32* @Args_per_line, align 4
  %200 = load i32, i32* @SEARCH_SCHEMA_V1, align 4
  %201 = call i32 @start_binlog(i32 %200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  br label %202

202:                                              ; preds = %205, %198
  %203 = call i32 (...) @read_record()
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = call i32 (...) @process_blog_posts_row()
  br label %202

207:                                              ; preds = %202
  br label %263

208:                                              ; preds = %146
  %209 = load i32, i32* @ml_END, align 4
  store i32 %209, i32* @Args_per_line, align 4
  %210 = load i32, i32* @SEARCH_SCHEMA_V1, align 4
  %211 = call i32 @start_binlog(i32 %210, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  br label %212

212:                                              ; preds = %215, %208
  %213 = call i32 (...) @read_record()
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = call i32 (...) @process_memlite_row()
  br label %212

217:                                              ; preds = %212
  br label %263

218:                                              ; preds = %146
  %219 = load i32, i32* @mi_END, align 4
  store i32 %219, i32* @Args_per_line, align 4
  %220 = load i32, i32* @SEARCH_SCHEMA_V1, align 4
  %221 = call i32 @start_binlog(i32 %220, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  br label %222

222:                                              ; preds = %225, %218
  %223 = call i32 (...) @read_record()
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = call i32 (...) @process_market_row()
  br label %222

227:                                              ; preds = %222
  br label %263

228:                                              ; preds = %146
  %229 = load i32, i32* @qu_END, align 4
  store i32 %229, i32* @Args_per_line, align 4
  %230 = load i32, i32* @SEARCH_SCHEMA_V1, align 4
  %231 = call i32 @start_binlog(i32 %230, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  br label %232

232:                                              ; preds = %235, %228
  %233 = call i32 (...) @read_record()
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = call i32 (...) @process_questions_row()
  br label %232

237:                                              ; preds = %232
  br label %263

238:                                              ; preds = %146
  %239 = call i32 @load_map(i32 1)
  %240 = load i32, i32* @to_END, align 4
  store i32 %240, i32* @Args_per_line, align 4
  %241 = load i32, i32* @SEARCH_SCHEMA_V1, align 4
  %242 = call i32 @start_binlog(i32 %241, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  br label %243

243:                                              ; preds = %246, %238
  %244 = call i32 (...) @read_record()
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = call i32 (...) @process_topics_row()
  br label %243

248:                                              ; preds = %243
  br label %263

249:                                              ; preds = %146
  %250 = load i32, i32* @mf_END, align 4
  store i32 %250, i32* @Args_per_line, align 4
  %251 = load i32, i32* @SEARCH_SCHEMA_V1, align 4
  %252 = call i32 @start_binlog(i32 %251, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  br label %253

253:                                              ; preds = %256, %249
  %254 = call i32 (...) @read_record()
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = call i32 (...) @process_minifeed_row()
  br label %253

258:                                              ; preds = %253
  br label %263

259:                                              ; preds = %146
  %260 = load i32, i32* @stderr, align 4
  %261 = call i32 (i32, i8*, ...) @fprintf(i32 %260, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %262 = call i32 @exit(i32 1) #3
  unreachable

263:                                              ; preds = %258, %248, %237, %227, %217, %207, %197, %187, %177, %167, %157
  %264 = call i32 (...) @flush_out()
  %265 = load i32, i32* @targ_fd, align 4
  %266 = icmp ne i32 %265, 1
  br i1 %266, label %267, label %279

267:                                              ; preds = %263
  %268 = load i32, i32* @targ_fd, align 4
  %269 = call i64 @fdatasync(i32 %268)
  %270 = icmp slt i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %267
  %272 = load i32, i32* @stderr, align 4
  %273 = load i8*, i8** @targ_fname, align 8
  %274 = call i32 (i32, i8*, ...) @fprintf(i32 %272, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8* %273)
  %275 = call i32 @exit(i32 1) #3
  unreachable

276:                                              ; preds = %267
  %277 = load i32, i32* @targ_fd, align 4
  %278 = call i32 @close(i32 %277)
  br label %279

279:                                              ; preds = %276, %263
  %280 = load i32, i32* @map_size, align 4
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %323

282:                                              ; preds = %279
  %283 = load i64, i64* @map_changes, align 8
  %284 = icmp sgt i64 %283, 0
  br i1 %284, label %285, label %323

285:                                              ; preds = %282
  %286 = load i8*, i8** @groups_fname, align 8
  %287 = icmp ne i8* %286, null
  br i1 %287, label %288, label %323

288:                                              ; preds = %285
  %289 = load i8*, i8** @groups_fname, align 8
  %290 = load i32, i32* @O_WRONLY, align 4
  %291 = load i32, i32* @O_CREAT, align 4
  %292 = or i32 %290, %291
  %293 = load i32, i32* @O_TRUNC, align 4
  %294 = or i32 %292, %293
  %295 = call i8* (i8*, i32, ...) @open(i8* %289, i32 %294, i32 416)
  %296 = ptrtoint i8* %295 to i32
  store i32 %296, i32* @map_fd, align 4
  %297 = load i32, i32* @map_fd, align 4
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %288
  %300 = load i32, i32* @stderr, align 4
  %301 = load i8*, i8** @groups_fname, align 8
  %302 = call i32 (i32, i8*, ...) @fprintf(i32 %300, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8* %301)
  %303 = call i32 @exit(i32 1) #3
  unreachable

304:                                              ; preds = %288
  %305 = load i32, i32* @map_fd, align 4
  %306 = load i32, i32* @Map, align 4
  %307 = load i32, i32* @map_size, align 4
  %308 = call i32 @write(i32 %305, i32 %306, i32 %307)
  %309 = load i32, i32* @map_size, align 4
  %310 = icmp eq i32 %308, %309
  %311 = zext i1 %310 to i32
  %312 = call i32 @assert(i32 %311)
  %313 = load i32, i32* @map_fd, align 4
  %314 = call i32 @close(i32 %313)
  %315 = load i64, i64* @verbosity, align 8
  %316 = icmp sgt i64 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %304
  %318 = load i32, i32* @stderr, align 4
  %319 = load i32, i32* @map_size, align 4
  %320 = load i8*, i8** @groups_fname, align 8
  %321 = call i32 (i32, i8*, ...) @fprintf(i32 %318, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i32 %319, i8* %320)
  br label %322

322:                                              ; preds = %317, %304
  br label %323

323:                                              ; preds = %322, %285, %282, %279
  %324 = load i64, i64* @verbosity, align 8
  %325 = icmp sgt i64 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %323
  %327 = call i32 (...) @output_stats()
  br label %328

328:                                              ; preds = %326, %323
  store i32 0, i32* %3, align 4
  br label %329

329:                                              ; preds = %328, %140, %100, %90, %69, %47, %18
  %330 = load i32, i32* %3, align 4
  ret i32 %330
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @get_dump_format(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @atol(i8*) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i8* @open(i8*, i32, ...) #1

declare dso_local i8* @fname_last(i8*) #1

declare dso_local i32 @start_binlog(i32, i8*) #1

declare dso_local i32 @read_record(...) #1

declare dso_local i32 @process_audio_row(...) #1

declare dso_local i32 @process_video_row(...) #1

declare dso_local i32 @process_applications_row(...) #1

declare dso_local i32 @process_groups_row(...) #1

declare dso_local i32 @process_events_row(...) #1

declare dso_local i32 @process_blog_posts_row(...) #1

declare dso_local i32 @process_memlite_row(...) #1

declare dso_local i32 @process_market_row(...) #1

declare dso_local i32 @process_questions_row(...) #1

declare dso_local i32 @load_map(i32) #1

declare dso_local i32 @process_topics_row(...) #1

declare dso_local i32 @process_minifeed_row(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @flush_out(...) #1

declare dso_local i64 @fdatasync(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @output_stats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
