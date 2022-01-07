; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"hvnu:m:f:g:o:\00", align 1
@verbosity = common dso_local global i64 0, align 8
@allow_negative = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@split_rem = common dso_local global i32 0, align 4
@split_mod = common dso_local global i32 0, align 4
@table_format = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"fatal: unsupported table dump format: %s\0A\00", align 1
@output_format = common dso_local global i32 0, align 4
@groups_fname = common dso_local global i8* null, align 8
@groups_fname2 = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@src_fname = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@src_fd = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"cannot open %s: %m\0A\00", align 1
@GT = common dso_local global i64 0, align 8
@MAX_GROUPS = common dso_local global i32 0, align 4
@Gc = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"read %d bytes from %s\0A\00", align 1
@GA = common dso_local global i64 0, align 8
@GB = common dso_local global i64 0, align 8
@GC = common dso_local global i64 0, align 8
@GS = common dso_local global i64 0, align 8
@Gd = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"fatal: cannot determine table type from filename %s\0A\00", align 1
@targ_fname = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot create %s: %m\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@gm_END = common dso_local global i32 0, align 4
@Args_per_line = common dso_local global i32 0, align 4
@LISTS_SCHEMA_V1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mg_END = common dso_local global i32 0, align 4
@gs_END = common dso_local global i32 0, align 4
@af_END = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"member_apps\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"app_members\00", align 1
@as_END = common dso_local global i32 0, align 4
@an_END = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"member_apps_balance\00", align 1
@LISTS_SCHEMA_CUR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@wc_END = common dso_local global i32 0, align 4
@LISTS_SCHEMA_V3 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"\01\02\02\01\00", align 1
@wv_END = common dso_local global i32 0, align 4
@bl_END = common dso_local global i32 0, align 4
@ba_END = common dso_local global i32 0, align 4
@pr_END = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"\01\03\02\01\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"unknown table type\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"error syncing %s: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @set_debug_handlers()
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @progname, align 8
  br label %11

11:                                               ; preds = %69, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %70

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %69 [
    i32 118, label %18
    i32 104, label %21
    i32 110, label %23
    i32 109, label %24
    i32 102, label %46
    i32 111, label %56
    i32 103, label %59
    i32 117, label %67
  ]

18:                                               ; preds = %16
  %19 = load i64, i64* @verbosity, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @verbosity, align 8
  br label %69

21:                                               ; preds = %16
  %22 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %496

23:                                               ; preds = %16
  store i32 1, i32* @allow_negative, align 4
  br label %69

24:                                               ; preds = %16
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* @split_rem, i32* @split_mod)
  %27 = icmp eq i32 %26, 2
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* @split_mod, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load i32, i32* @split_mod, align 4
  %34 = icmp sle i32 %33, 1000
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* @split_rem, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @split_rem, align 4
  %40 = load i32, i32* @split_mod, align 4
  %41 = icmp slt i32 %39, %40
  br label %42

42:                                               ; preds = %38, %35, %32, %24
  %43 = phi i1 [ false, %35 ], [ false, %32 ], [ false, %24 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  br label %69

46:                                               ; preds = %16
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 @get_dump_format(i8* %47)
  store i32 %48, i32* @table_format, align 4
  %49 = load i32, i32* @table_format, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @stderr, align 4
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  store i32 2, i32* %3, align 4
  br label %496

55:                                               ; preds = %46
  br label %69

56:                                               ; preds = %16
  %57 = load i8*, i8** @optarg, align 8
  %58 = call i32 @atol(i8* %57)
  store i32 %58, i32* @output_format, align 4
  br label %69

59:                                               ; preds = %16
  %60 = load i8*, i8** @groups_fname, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i8*, i8** @optarg, align 8
  store i8* %63, i8** @groups_fname2, align 8
  br label %66

64:                                               ; preds = %59
  %65 = load i8*, i8** @optarg, align 8
  store i8* %65, i8** @groups_fname, align 8
  br label %66

66:                                               ; preds = %64, %62
  br label %69

67:                                               ; preds = %16
  %68 = load i8*, i8** @optarg, align 8
  store i8* %68, i8** @username, align 8
  br label %69

69:                                               ; preds = %16, %67, %66, %56, %55, %42, %23, %18
  br label %11

70:                                               ; preds = %11
  %71 = load i32, i32* @optind, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @optind, align 4
  %76 = add nsw i32 %75, 2
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74, %70
  %80 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %496

81:                                               ; preds = %74
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* @optind, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** @src_fname, align 8
  %87 = load i8*, i8** @username, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %81
  %90 = load i8*, i8** @username, align 8
  %91 = call i64 @change_user(i8* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load i32, i32* @stderr, align 4
  %95 = load i8*, i8** @username, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i8*, i8** @username, align 8
  br label %100

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i8* [ %98, %97 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %99 ]
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %101)
  store i32 1, i32* %3, align 4
  br label %496

103:                                              ; preds = %89, %81
  %104 = load i8*, i8** @groups_fname, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %149

106:                                              ; preds = %103
  %107 = load i8*, i8** @groups_fname, align 8
  %108 = load i32, i32* @O_RDONLY, align 4
  %109 = call i64 (i8*, i32, ...) @open(i8* %107, i32 %108)
  store i64 %109, i64* @src_fd, align 8
  %110 = load i64, i64* @src_fd, align 8
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32, i32* @stderr, align 4
  %114 = load i8*, i8** @groups_fname, align 8
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  store i32 1, i32* %3, align 4
  br label %496

116:                                              ; preds = %106
  %117 = load i64, i64* @src_fd, align 8
  %118 = load i64, i64* @GT, align 8
  %119 = load i32, i32* @MAX_GROUPS, align 4
  %120 = call i32 @read(i64 %117, i64 %118, i32 %119)
  store i32 %120, i32* @Gc, align 4
  %121 = load i64, i64* @verbosity, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load i32, i32* @stderr, align 4
  %125 = load i32, i32* @Gc, align 4
  %126 = load i8*, i8** @groups_fname, align 8
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %125, i8* %126)
  br label %128

128:                                              ; preds = %123, %116
  %129 = load i32, i32* @Gc, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32, i32* @Gc, align 4
  %133 = load i32, i32* @MAX_GROUPS, align 4
  %134 = icmp slt i32 %132, %133
  br label %135

135:                                              ; preds = %131, %128
  %136 = phi i1 [ false, %128 ], [ %134, %131 ]
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load i64, i64* @src_fd, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @close(i32 %140)
  store i64 0, i64* @src_fd, align 8
  %142 = load i64, i64* @GT, align 8
  store i64 %142, i64* @GA, align 8
  %143 = load i64, i64* @GA, align 8
  %144 = load i32, i32* @Gc, align 4
  %145 = add nsw i32 %144, 3
  %146 = and i32 %145, -4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %143, %147
  store i64 %148, i64* @GB, align 8
  store i64 %148, i64* @GC, align 8
  store i64 %148, i64* @GS, align 8
  br label %149

149:                                              ; preds = %135, %103
  %150 = load i8*, i8** @groups_fname2, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %200

152:                                              ; preds = %149
  %153 = load i8*, i8** @groups_fname2, align 8
  %154 = load i32, i32* @O_RDONLY, align 4
  %155 = call i64 (i8*, i32, ...) @open(i8* %153, i32 %154)
  store i64 %155, i64* @src_fd, align 8
  %156 = load i64, i64* @src_fd, align 8
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i32, i32* @stderr, align 4
  %160 = load i8*, i8** @groups_fname2, align 8
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %160)
  store i32 1, i32* %3, align 4
  br label %496

162:                                              ; preds = %152
  %163 = load i64, i64* @src_fd, align 8
  %164 = load i64, i64* @GB, align 8
  %165 = load i64, i64* @GA, align 8
  %166 = load i32, i32* @MAX_GROUPS, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %165, %167
  %169 = load i64, i64* @GB, align 8
  %170 = sub nsw i64 %168, %169
  %171 = trunc i64 %170 to i32
  %172 = call i32 @read(i64 %163, i64 %164, i32 %171)
  store i32 %172, i32* @Gd, align 4
  %173 = load i64, i64* @verbosity, align 8
  %174 = icmp sgt i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %162
  %176 = load i32, i32* @stderr, align 4
  %177 = load i32, i32* @Gd, align 4
  %178 = load i8*, i8** @groups_fname2, align 8
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %177, i8* %178)
  br label %180

180:                                              ; preds = %175, %162
  %181 = load i32, i32* @Gd, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32, i32* @Gd, align 4
  %185 = load i32, i32* @MAX_GROUPS, align 4
  %186 = icmp slt i32 %184, %185
  br label %187

187:                                              ; preds = %183, %180
  %188 = phi i1 [ false, %180 ], [ %186, %183 ]
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  %191 = load i64, i64* @src_fd, align 8
  %192 = trunc i64 %191 to i32
  %193 = call i32 @close(i32 %192)
  store i64 0, i64* @src_fd, align 8
  %194 = load i64, i64* @GB, align 8
  %195 = load i32, i32* @Gd, align 4
  %196 = add nsw i32 %195, 3
  %197 = and i32 %196, -4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %194, %198
  store i64 %199, i64* @GC, align 8
  store i64 %199, i64* @GS, align 8
  br label %200

200:                                              ; preds = %187, %149
  %201 = load i8*, i8** @src_fname, align 8
  %202 = load i32, i32* @O_RDONLY, align 4
  %203 = call i64 (i8*, i32, ...) @open(i8* %201, i32 %202)
  store i64 %203, i64* @src_fd, align 8
  %204 = load i64, i64* @src_fd, align 8
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = load i32, i32* @stderr, align 4
  %208 = load i8*, i8** @src_fname, align 8
  %209 = call i32 (i32, i8*, ...) @fprintf(i32 %207, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %208)
  store i32 1, i32* %3, align 4
  br label %496

210:                                              ; preds = %200
  %211 = load i32, i32* @table_format, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %224, label %213

213:                                              ; preds = %210
  %214 = load i8*, i8** @src_fname, align 8
  %215 = call i8* @fname_last(i8* %214)
  %216 = call i32 @get_dump_format(i8* %215)
  store i32 %216, i32* @table_format, align 4
  %217 = load i32, i32* @table_format, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %213
  %220 = load i32, i32* @stderr, align 4
  %221 = load i8*, i8** @src_fname, align 8
  %222 = call i32 (i32, i8*, ...) @fprintf(i32 %220, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %221)
  br label %223

223:                                              ; preds = %219, %213
  br label %224

224:                                              ; preds = %223, %210
  %225 = load i32, i32* @optind, align 4
  %226 = add nsw i32 %225, 1
  %227 = load i32, i32* %4, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %251

229:                                              ; preds = %224
  %230 = load i8**, i8*** %5, align 8
  %231 = load i32, i32* @optind, align 4
  %232 = add nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %230, i64 %233
  %235 = load i8*, i8** %234, align 8
  store i8* %235, i8** @targ_fname, align 8
  %236 = load i8*, i8** @targ_fname, align 8
  %237 = load i32, i32* @O_WRONLY, align 4
  %238 = load i32, i32* @O_APPEND, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @O_CREAT, align 4
  %241 = or i32 %239, %240
  %242 = call i64 (i8*, i32, ...) @open(i8* %236, i32 %241, i32 420)
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* @targ_fd, align 4
  %244 = load i32, i32* @targ_fd, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %229
  %247 = load i32, i32* @stderr, align 4
  %248 = load i8*, i8** @targ_fname, align 8
  %249 = call i32 (i32, i8*, ...) @fprintf(i32 %247, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %248)
  store i32 1, i32* %3, align 4
  br label %496

250:                                              ; preds = %229
  br label %252

251:                                              ; preds = %224
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %252

252:                                              ; preds = %251, %250
  %253 = load i32, i32* @table_format, align 4
  switch i32 %253, label %470 [
    i32 132, label %254
    i32 131, label %270
    i32 133, label %286
    i32 137, label %309
    i32 145, label %321
    i32 134, label %333
    i32 143, label %343
    i32 135, label %353
    i32 144, label %363
    i32 136, label %373
    i32 138, label %385
    i32 129, label %390
    i32 128, label %402
    i32 140, label %414
    i32 139, label %426
    i32 142, label %438
    i32 141, label %448
    i32 130, label %458
  ]

254:                                              ; preds = %252
  %255 = load i32, i32* @split_mod, align 4
  %256 = call i32 @assert(i32 %255)
  %257 = load i32, i32* @Gc, align 4
  %258 = icmp sgt i32 %257, 0
  %259 = zext i1 %258 to i32
  %260 = call i32 @assert(i32 %259)
  %261 = load i32, i32* @gm_END, align 4
  store i32 %261, i32* @Args_per_line, align 4
  %262 = load i32, i32* @LISTS_SCHEMA_V1, align 4
  %263 = call i32 @start_binlog(i32 %262, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %264

264:                                              ; preds = %267, %254
  %265 = call i32 (...) @read_record()
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = call i32 (...) @process_group_members_row()
  br label %264

269:                                              ; preds = %264
  br label %474

270:                                              ; preds = %252
  %271 = load i32, i32* @split_mod, align 4
  %272 = call i32 @assert(i32 %271)
  %273 = load i32, i32* @Gc, align 4
  %274 = icmp sgt i32 %273, 0
  %275 = zext i1 %274 to i32
  %276 = call i32 @assert(i32 %275)
  %277 = load i32, i32* @mg_END, align 4
  store i32 %277, i32* @Args_per_line, align 4
  %278 = load i32, i32* @LISTS_SCHEMA_V1, align 4
  %279 = call i32 @start_binlog(i32 %278, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %280

280:                                              ; preds = %283, %270
  %281 = call i32 (...) @read_record()
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  %284 = call i32 (...) @process_member_groups_row()
  br label %280

285:                                              ; preds = %280
  br label %474

286:                                              ; preds = %252
  %287 = load i32, i32* @gs_END, align 4
  store i32 %287, i32* @Args_per_line, align 4
  br label %288

288:                                              ; preds = %291, %286
  %289 = call i32 (...) @read_record()
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %288
  %292 = call i32 (...) @process_groups_short_row()
  br label %288

293:                                              ; preds = %288
  %294 = load i32, i32* @output_format, align 4
  %295 = icmp eq i32 %294, 1
  br i1 %295, label %296, label %308

296:                                              ; preds = %293
  %297 = load i32, i32* @Gc, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %308

299:                                              ; preds = %296
  %300 = load i32, i32* @targ_fd, align 4
  %301 = load i64, i64* @GT, align 8
  %302 = load i32, i32* @Gc, align 4
  %303 = call i32 @write(i32 %300, i64 %301, i32 %302)
  %304 = load i32, i32* @Gc, align 4
  %305 = icmp eq i32 %303, %304
  %306 = zext i1 %305 to i32
  %307 = call i32 @assert(i32 %306)
  br label %308

308:                                              ; preds = %299, %296, %293
  br label %474

309:                                              ; preds = %252
  %310 = load i32, i32* @split_mod, align 4
  %311 = call i32 @assert(i32 %310)
  store i32 1, i32* @allow_negative, align 4
  %312 = load i32, i32* @af_END, align 4
  store i32 %312, i32* @Args_per_line, align 4
  %313 = load i32, i32* @LISTS_SCHEMA_V1, align 4
  %314 = call i32 @start_binlog(i32 %313, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %315

315:                                              ; preds = %318, %309
  %316 = call i32 (...) @read_record()
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %315
  %319 = call i32 (...) @process_fan_apps_row()
  br label %315

320:                                              ; preds = %315
  br label %474

321:                                              ; preds = %252
  %322 = load i32, i32* @split_mod, align 4
  %323 = call i32 @assert(i32 %322)
  %324 = load i32, i32* @af_END, align 4
  store i32 %324, i32* @Args_per_line, align 4
  %325 = load i32, i32* @LISTS_SCHEMA_V1, align 4
  %326 = call i32 @start_binlog(i32 %325, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %327

327:                                              ; preds = %330, %321
  %328 = call i32 (...) @read_record()
  %329 = icmp sgt i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %327
  %331 = call i32 (...) @process_app_fans_row()
  br label %327

332:                                              ; preds = %327
  br label %474

333:                                              ; preds = %252
  %334 = load i32, i32* @split_mod, align 4
  %335 = call i32 @assert(i32 %334)
  %336 = load i32, i32* @as_END, align 4
  store i32 %336, i32* @Args_per_line, align 4
  br label %337

337:                                              ; preds = %340, %333
  %338 = call i32 (...) @read_record()
  %339 = icmp sgt i32 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %337
  %341 = call i32 (...) @process_fan_apps_settings_row()
  br label %337

342:                                              ; preds = %337
  br label %474

343:                                              ; preds = %252
  %344 = load i32, i32* @split_mod, align 4
  %345 = call i32 @assert(i32 %344)
  %346 = load i32, i32* @as_END, align 4
  store i32 %346, i32* @Args_per_line, align 4
  br label %347

347:                                              ; preds = %350, %343
  %348 = call i32 (...) @read_record()
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %347
  %351 = call i32 (...) @process_app_fans_settings_row()
  br label %347

352:                                              ; preds = %347
  br label %474

353:                                              ; preds = %252
  %354 = load i32, i32* @split_mod, align 4
  %355 = call i32 @assert(i32 %354)
  %356 = load i32, i32* @an_END, align 4
  store i32 %356, i32* @Args_per_line, align 4
  br label %357

357:                                              ; preds = %360, %353
  %358 = call i32 (...) @read_record()
  %359 = icmp sgt i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %357
  %361 = call i32 (...) @process_fan_apps_notify_row()
  br label %357

362:                                              ; preds = %357
  br label %474

363:                                              ; preds = %252
  %364 = load i32, i32* @split_mod, align 4
  %365 = call i32 @assert(i32 %364)
  %366 = load i32, i32* @an_END, align 4
  store i32 %366, i32* @Args_per_line, align 4
  br label %367

367:                                              ; preds = %370, %363
  %368 = call i32 (...) @read_record()
  %369 = icmp sgt i32 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %367
  %371 = call i32 (...) @process_app_fans_notify_row()
  br label %367

372:                                              ; preds = %367
  br label %474

373:                                              ; preds = %252
  %374 = load i32, i32* @split_mod, align 4
  %375 = call i32 @assert(i32 %374)
  %376 = load i32, i32* @LISTS_SCHEMA_V1, align 4
  %377 = call i32 @start_binlog(i32 %376, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %378 = load i32, i32* @as_END, align 4
  store i32 %378, i32* @Args_per_line, align 4
  br label %379

379:                                              ; preds = %382, %373
  %380 = call i32 (...) @read_record()
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %379
  %383 = call i32 (...) @process_fan_apps_balance_row()
  br label %379

384:                                              ; preds = %379
  br label %474

385:                                              ; preds = %252
  %386 = load i32, i32* @split_mod, align 4
  %387 = call i32 @assert(i32 %386)
  %388 = load i32, i32* @LISTS_SCHEMA_CUR, align 4
  %389 = call i32 @start_binlog(i32 %388, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %474

390:                                              ; preds = %252
  %391 = load i32, i32* @split_mod, align 4
  %392 = call i32 @assert(i32 %391)
  %393 = load i32, i32* @wc_END, align 4
  store i32 %393, i32* @Args_per_line, align 4
  %394 = load i32, i32* @LISTS_SCHEMA_V3, align 4
  %395 = call i32 @start_binlog(i32 %394, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %396

396:                                              ; preds = %399, %390
  %397 = call i32 (...) @read_record()
  %398 = icmp sgt i32 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %396
  %400 = call i32 (...) @process_widget_comments_row()
  br label %396

401:                                              ; preds = %396
  br label %474

402:                                              ; preds = %252
  %403 = load i32, i32* @split_mod, align 4
  %404 = call i32 @assert(i32 %403)
  %405 = load i32, i32* @wv_END, align 4
  store i32 %405, i32* @Args_per_line, align 4
  %406 = load i32, i32* @LISTS_SCHEMA_V1, align 4
  %407 = call i32 @start_binlog(i32 %406, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %408

408:                                              ; preds = %411, %402
  %409 = call i32 (...) @read_record()
  %410 = icmp sgt i32 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %408
  %412 = call i32 (...) @process_widget_votes_row()
  br label %408

413:                                              ; preds = %408
  br label %474

414:                                              ; preds = %252
  %415 = load i32, i32* @split_mod, align 4
  %416 = call i32 @assert(i32 %415)
  %417 = load i32, i32* @bl_END, align 4
  store i32 %417, i32* @Args_per_line, align 4
  %418 = load i32, i32* @LISTS_SCHEMA_V1, align 4
  %419 = call i32 @start_binlog(i32 %418, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %420

420:                                              ; preds = %423, %414
  %421 = call i32 (...) @read_record()
  %422 = icmp sgt i32 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %420
  %424 = call i32 (...) @process_blacklist_row()
  br label %420

425:                                              ; preds = %420
  br label %474

426:                                              ; preds = %252
  %427 = load i32, i32* @split_mod, align 4
  %428 = call i32 @assert(i32 %427)
  %429 = load i32, i32* @bl_END, align 4
  store i32 %429, i32* @Args_per_line, align 4
  %430 = load i32, i32* @LISTS_SCHEMA_V1, align 4
  %431 = call i32 @start_binlog(i32 %430, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %432

432:                                              ; preds = %435, %426
  %433 = call i32 (...) @read_record()
  %434 = icmp sgt i32 %433, 0
  br i1 %434, label %435, label %437

435:                                              ; preds = %432
  %436 = call i32 (...) @process_blacklisted_row()
  br label %432

437:                                              ; preds = %432
  br label %474

438:                                              ; preds = %252
  %439 = load i32, i32* @split_mod, align 4
  %440 = call i32 @assert(i32 %439)
  %441 = load i32, i32* @ba_END, align 4
  store i32 %441, i32* @Args_per_line, align 4
  br label %442

442:                                              ; preds = %445, %438
  %443 = call i32 (...) @read_record()
  %444 = icmp sgt i32 %443, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %442
  %446 = call i32 (...) @process_banlist_row()
  br label %442

447:                                              ; preds = %442
  br label %474

448:                                              ; preds = %252
  %449 = load i32, i32* @split_mod, align 4
  %450 = call i32 @assert(i32 %449)
  %451 = load i32, i32* @ba_END, align 4
  store i32 %451, i32* @Args_per_line, align 4
  br label %452

452:                                              ; preds = %455, %448
  %453 = call i32 (...) @read_record()
  %454 = icmp sgt i32 %453, 0
  br i1 %454, label %455, label %457

455:                                              ; preds = %452
  %456 = call i32 (...) @process_banlisted_row()
  br label %452

457:                                              ; preds = %452
  br label %474

458:                                              ; preds = %252
  %459 = load i32, i32* @split_mod, align 4
  %460 = call i32 @assert(i32 %459)
  %461 = load i32, i32* @pr_END, align 4
  store i32 %461, i32* @Args_per_line, align 4
  %462 = load i32, i32* @LISTS_SCHEMA_V3, align 4
  %463 = call i32 @start_binlog(i32 %462, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %464

464:                                              ; preds = %467, %458
  %465 = call i32 (...) @read_record()
  %466 = icmp sgt i32 %465, 0
  br i1 %466, label %467, label %469

467:                                              ; preds = %464
  %468 = call i32 (...) @process_photo_rev_row()
  br label %464

469:                                              ; preds = %464
  br label %474

470:                                              ; preds = %252
  %471 = load i32, i32* @stderr, align 4
  %472 = call i32 (i32, i8*, ...) @fprintf(i32 %471, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %473 = call i32 @exit(i32 1) #3
  unreachable

474:                                              ; preds = %469, %457, %447, %437, %425, %413, %401, %385, %384, %372, %362, %352, %342, %332, %320, %308, %285, %269
  %475 = call i32 (...) @flush_out()
  %476 = load i32, i32* @targ_fd, align 4
  %477 = icmp ne i32 %476, 1
  br i1 %477, label %478, label %490

478:                                              ; preds = %474
  %479 = load i32, i32* @targ_fd, align 4
  %480 = call i64 @fdatasync(i32 %479)
  %481 = icmp slt i64 %480, 0
  br i1 %481, label %482, label %487

482:                                              ; preds = %478
  %483 = load i32, i32* @stderr, align 4
  %484 = load i8*, i8** @targ_fname, align 8
  %485 = call i32 (i32, i8*, ...) @fprintf(i32 %483, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i8* %484)
  %486 = call i32 @exit(i32 1) #3
  unreachable

487:                                              ; preds = %478
  %488 = load i32, i32* @targ_fd, align 4
  %489 = call i32 @close(i32 %488)
  br label %490

490:                                              ; preds = %487, %474
  %491 = load i64, i64* @verbosity, align 8
  %492 = icmp sgt i64 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %490
  %494 = call i32 (...) @output_stats()
  br label %495

495:                                              ; preds = %493, %490
  store i32 0, i32* %3, align 4
  br label %496

496:                                              ; preds = %495, %246, %206, %158, %112, %100, %79, %51, %21
  %497 = load i32, i32* %3, align 4
  ret i32 %497
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @get_dump_format(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @atol(i8*) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i64 @open(i8*, i32, ...) #1

declare dso_local i32 @read(i64, i64, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @fname_last(i8*) #1

declare dso_local i32 @start_binlog(i32, i8*) #1

declare dso_local i32 @read_record(...) #1

declare dso_local i32 @process_group_members_row(...) #1

declare dso_local i32 @process_member_groups_row(...) #1

declare dso_local i32 @process_groups_short_row(...) #1

declare dso_local i32 @write(i32, i64, i32) #1

declare dso_local i32 @process_fan_apps_row(...) #1

declare dso_local i32 @process_app_fans_row(...) #1

declare dso_local i32 @process_fan_apps_settings_row(...) #1

declare dso_local i32 @process_app_fans_settings_row(...) #1

declare dso_local i32 @process_fan_apps_notify_row(...) #1

declare dso_local i32 @process_app_fans_notify_row(...) #1

declare dso_local i32 @process_fan_apps_balance_row(...) #1

declare dso_local i32 @process_widget_comments_row(...) #1

declare dso_local i32 @process_widget_votes_row(...) #1

declare dso_local i32 @process_blacklist_row(...) #1

declare dso_local i32 @process_blacklisted_row(...) #1

declare dso_local i32 @process_banlist_row(...) #1

declare dso_local i32 @process_banlisted_row(...) #1

declare dso_local i32 @process_photo_rev_row(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @flush_out(...) #1

declare dso_local i64 @fdatasync(i32) #1

declare dso_local i32 @output_stats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
