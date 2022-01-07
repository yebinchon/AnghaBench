; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-import-dump.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-import-dump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"hvu:m:f:g:o:\00", align 1
@verbosity = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@split_rem = common dso_local global i64 0, align 8
@split_mod = common dso_local global i32 0, align 4
@table_format = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"fatal: unsupported table dump format: %s\0A\00", align 1
@output_format = common dso_local global i32 0, align 4
@groups_fname = common dso_local global i8* null, align 8
@groups_fname2 = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@split_min = common dso_local global i64 0, align 8
@split_max = common dso_local global i64 0, align 8
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
@O_RDWR = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"fatal: bad binlog headers of %s\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"cannot create %s: %m\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@stdout_mode = common dso_local global i32 0, align 4
@MONEY_SCHEMA_V1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"money\00", align 1
@at_END = common dso_local global i32 0, align 4
@Args_per_line = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"unknown table type\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"error syncing %s: %m\00", align 1

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

10:                                               ; preds = %68, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %69

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %68 [
    i32 118, label %17
    i32 104, label %20
    i32 109, label %22
    i32 102, label %45
    i32 111, label %55
    i32 103, label %58
    i32 117, label %66
  ]

17:                                               ; preds = %15
  %18 = load i64, i64* @verbosity, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @verbosity, align 8
  br label %68

20:                                               ; preds = %15
  %21 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %332

22:                                               ; preds = %15
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64* @split_rem, i32* @split_mod)
  %25 = icmp eq i32 %24, 2
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* @split_mod, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load i32, i32* @split_mod, align 4
  %32 = icmp sle i32 %31, 1000
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i64, i64* @split_rem, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i64, i64* @split_rem, align 8
  %38 = load i32, i32* @split_mod, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br label %41

41:                                               ; preds = %36, %33, %30, %22
  %42 = phi i1 [ false, %33 ], [ false, %30 ], [ false, %22 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  br label %68

45:                                               ; preds = %15
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i32 @get_dump_format(i8* %46)
  store i32 %47, i32* @table_format, align 4
  %48 = load i32, i32* @table_format, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** @optarg, align 8
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  store i32 2, i32* %3, align 4
  br label %332

54:                                               ; preds = %45
  br label %68

55:                                               ; preds = %15
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i32 @atol(i8* %56)
  store i32 %57, i32* @output_format, align 4
  br label %68

58:                                               ; preds = %15
  %59 = load i8*, i8** @groups_fname, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i8*, i8** @optarg, align 8
  store i8* %62, i8** @groups_fname2, align 8
  br label %65

63:                                               ; preds = %58
  %64 = load i8*, i8** @optarg, align 8
  store i8* %64, i8** @groups_fname, align 8
  br label %65

65:                                               ; preds = %63, %61
  br label %68

66:                                               ; preds = %15
  %67 = load i8*, i8** @optarg, align 8
  store i8* %67, i8** @username, align 8
  br label %68

68:                                               ; preds = %15, %66, %65, %55, %54, %41, %17
  br label %10

69:                                               ; preds = %10
  %70 = load i64, i64* @split_rem, align 8
  store i64 %70, i64* @split_min, align 8
  %71 = load i64, i64* @split_rem, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* @split_max, align 8
  %73 = load i32, i32* @optind, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* @optind, align 4
  %78 = add nsw i32 %77, 2
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76, %69
  %82 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %332

83:                                               ; preds = %76
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* @optind, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** @src_fname, align 8
  %89 = load i8*, i8** @username, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %83
  %92 = load i8*, i8** @username, align 8
  %93 = call i64 @change_user(i8* %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i32, i32* @stderr, align 4
  %97 = load i8*, i8** @username, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i8*, i8** @username, align 8
  br label %102

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i8* [ %100, %99 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %101 ]
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %103)
  store i32 1, i32* %3, align 4
  br label %332

105:                                              ; preds = %91, %83
  %106 = load i8*, i8** @groups_fname, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %151

108:                                              ; preds = %105
  %109 = load i8*, i8** @groups_fname, align 8
  %110 = load i32, i32* @O_RDONLY, align 4
  %111 = call i64 (i8*, i32, ...) @open(i8* %109, i32 %110)
  store i64 %111, i64* @src_fd, align 8
  %112 = load i64, i64* @src_fd, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, i32* @stderr, align 4
  %116 = load i8*, i8** @groups_fname, align 8
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %116)
  store i32 1, i32* %3, align 4
  br label %332

118:                                              ; preds = %108
  %119 = load i64, i64* @src_fd, align 8
  %120 = load i64, i64* @GT, align 8
  %121 = load i32, i32* @MAX_GROUPS, align 4
  %122 = call i32 @read(i64 %119, i64 %120, i32 %121)
  store i32 %122, i32* @Gc, align 4
  %123 = load i64, i64* @verbosity, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load i32, i32* @stderr, align 4
  %127 = load i32, i32* @Gc, align 4
  %128 = load i8*, i8** @groups_fname, align 8
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %127, i8* %128)
  br label %130

130:                                              ; preds = %125, %118
  %131 = load i32, i32* @Gc, align 4
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32, i32* @Gc, align 4
  %135 = load i32, i32* @MAX_GROUPS, align 4
  %136 = icmp slt i32 %134, %135
  br label %137

137:                                              ; preds = %133, %130
  %138 = phi i1 [ false, %130 ], [ %136, %133 ]
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load i64, i64* @src_fd, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 @close(i32 %142)
  store i64 0, i64* @src_fd, align 8
  %144 = load i64, i64* @GT, align 8
  store i64 %144, i64* @GA, align 8
  %145 = load i64, i64* @GA, align 8
  %146 = load i32, i32* @Gc, align 4
  %147 = add nsw i32 %146, 3
  %148 = and i32 %147, -4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %145, %149
  store i64 %150, i64* @GB, align 8
  store i64 %150, i64* @GC, align 8
  store i64 %150, i64* @GS, align 8
  br label %151

151:                                              ; preds = %137, %105
  %152 = load i8*, i8** @groups_fname2, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %202

154:                                              ; preds = %151
  %155 = load i8*, i8** @groups_fname2, align 8
  %156 = load i32, i32* @O_RDONLY, align 4
  %157 = call i64 (i8*, i32, ...) @open(i8* %155, i32 %156)
  store i64 %157, i64* @src_fd, align 8
  %158 = load i64, i64* @src_fd, align 8
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i32, i32* @stderr, align 4
  %162 = load i8*, i8** @groups_fname2, align 8
  %163 = call i32 (i32, i8*, ...) @fprintf(i32 %161, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %162)
  store i32 1, i32* %3, align 4
  br label %332

164:                                              ; preds = %154
  %165 = load i64, i64* @src_fd, align 8
  %166 = load i64, i64* @GB, align 8
  %167 = load i64, i64* @GA, align 8
  %168 = load i32, i32* @MAX_GROUPS, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %167, %169
  %171 = load i64, i64* @GB, align 8
  %172 = sub nsw i64 %170, %171
  %173 = trunc i64 %172 to i32
  %174 = call i32 @read(i64 %165, i64 %166, i32 %173)
  store i32 %174, i32* @Gd, align 4
  %175 = load i64, i64* @verbosity, align 8
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %164
  %178 = load i32, i32* @stderr, align 4
  %179 = load i32, i32* @Gd, align 4
  %180 = load i8*, i8** @groups_fname2, align 8
  %181 = call i32 (i32, i8*, ...) @fprintf(i32 %178, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %179, i8* %180)
  br label %182

182:                                              ; preds = %177, %164
  %183 = load i32, i32* @Gd, align 4
  %184 = icmp sge i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load i32, i32* @Gd, align 4
  %187 = load i32, i32* @MAX_GROUPS, align 4
  %188 = icmp slt i32 %186, %187
  br label %189

189:                                              ; preds = %185, %182
  %190 = phi i1 [ false, %182 ], [ %188, %185 ]
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i64, i64* @src_fd, align 8
  %194 = trunc i64 %193 to i32
  %195 = call i32 @close(i32 %194)
  store i64 0, i64* @src_fd, align 8
  %196 = load i64, i64* @GB, align 8
  %197 = load i32, i32* @Gd, align 4
  %198 = add nsw i32 %197, 3
  %199 = and i32 %198, -4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %196, %200
  store i64 %201, i64* @GC, align 8
  store i64 %201, i64* @GS, align 8
  br label %202

202:                                              ; preds = %189, %151
  %203 = load i8*, i8** @src_fname, align 8
  %204 = load i32, i32* @O_RDONLY, align 4
  %205 = call i64 (i8*, i32, ...) @open(i8* %203, i32 %204)
  store i64 %205, i64* @src_fd, align 8
  %206 = load i64, i64* @src_fd, align 8
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load i32, i32* @stderr, align 4
  %210 = load i8*, i8** @src_fname, align 8
  %211 = call i32 (i32, i8*, ...) @fprintf(i32 %209, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %210)
  store i32 1, i32* %3, align 4
  br label %332

212:                                              ; preds = %202
  %213 = load i32, i32* @table_format, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %226, label %215

215:                                              ; preds = %212
  %216 = load i8*, i8** @src_fname, align 8
  %217 = call i8* @fname_last(i8* %216)
  %218 = call i32 @get_dump_format(i8* %217)
  store i32 %218, i32* @table_format, align 4
  %219 = load i32, i32* @table_format, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %215
  %222 = load i32, i32* @stderr, align 4
  %223 = load i8*, i8** @src_fname, align 8
  %224 = call i32 (i32, i8*, ...) @fprintf(i32 %222, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %223)
  br label %225

225:                                              ; preds = %221, %215
  br label %226

226:                                              ; preds = %225, %212
  %227 = load i32, i32* @optind, align 4
  %228 = add nsw i32 %227, 1
  %229 = load i32, i32* %4, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %290

231:                                              ; preds = %226
  %232 = load i8**, i8*** %5, align 8
  %233 = load i32, i32* @optind, align 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %232, i64 %235
  %237 = load i8*, i8** %236, align 8
  store i8* %237, i8** @targ_fname, align 8
  %238 = load i8*, i8** @targ_fname, align 8
  %239 = load i32, i32* @O_RDWR, align 4
  %240 = call i64 (i8*, i32, ...) @open(i8* %238, i32 %239)
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* @targ_fd, align 4
  %242 = load i32, i32* @targ_fd, align 4
  %243 = icmp sge i32 %242, 0
  br i1 %243, label %244, label %262

244:                                              ; preds = %231
  %245 = load i32, i32* @targ_fd, align 4
  %246 = load i32, i32* @F_WRLCK, align 4
  %247 = call i64 @lock_whole_file(i32 %245, i32 %246)
  %248 = icmp sgt i64 %247, 0
  %249 = zext i1 %248 to i32
  %250 = call i32 @assert(i32 %249)
  %251 = load i32, i32* @targ_fd, align 4
  %252 = call i64 @load_binlog_headers(i32 %251)
  %253 = icmp slt i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %244
  %255 = load i32, i32* @stderr, align 4
  %256 = load i8*, i8** @targ_fname, align 8
  %257 = call i32 (i32, i8*, ...) @fprintf(i32 %255, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %256)
  br label %258

258:                                              ; preds = %254, %244
  %259 = load i32, i32* @targ_fd, align 4
  %260 = load i32, i32* @SEEK_END, align 4
  %261 = call i32 @lseek(i32 %259, i32 0, i32 %260)
  br label %289

262:                                              ; preds = %231
  %263 = load i8*, i8** @targ_fname, align 8
  %264 = load i32, i32* @O_WRONLY, align 4
  %265 = load i32, i32* @O_CREAT, align 4
  %266 = or i32 %264, %265
  %267 = load i32, i32* @O_EXCL, align 4
  %268 = or i32 %266, %267
  %269 = call i64 (i8*, i32, ...) @open(i8* %263, i32 %268, i32 420)
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* @targ_fd, align 4
  %271 = load i32, i32* @targ_fd, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %262
  %274 = load i32, i32* @stderr, align 4
  %275 = load i8*, i8** @targ_fname, align 8
  %276 = call i32 (i32, i8*, ...) @fprintf(i32 %274, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %275)
  store i32 1, i32* %3, align 4
  br label %332

277:                                              ; preds = %262
  %278 = load i32, i32* @targ_fd, align 4
  %279 = load i32, i32* @F_WRLCK, align 4
  %280 = call i64 @lock_whole_file(i32 %278, i32 %279)
  %281 = icmp sgt i64 %280, 0
  %282 = zext i1 %281 to i32
  %283 = call i32 @assert(i32 %282)
  %284 = load i32, i32* @targ_fd, align 4
  %285 = call i32 @ftruncate(i32 %284, i32 0)
  %286 = load i32, i32* @targ_fd, align 4
  %287 = load i32, i32* @SEEK_SET, align 4
  %288 = call i32 @lseek(i32 %286, i32 0, i32 %287)
  br label %289

289:                                              ; preds = %277, %258
  br label %291

290:                                              ; preds = %226
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  store i32 1, i32* @stdout_mode, align 4
  br label %291

291:                                              ; preds = %290, %289
  %292 = call i32 (...) @randomize()
  %293 = load i32, i32* @table_format, align 4
  switch i32 %293, label %305 [
    i32 128, label %294
    i32 129, label %304
  ]

294:                                              ; preds = %291
  %295 = load i32, i32* @MONEY_SCHEMA_V1, align 4
  %296 = call i32 @start_binlog(i32 %295, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %297 = load i32, i32* @at_END, align 4
  store i32 %297, i32* @Args_per_line, align 4
  br label %298

298:                                              ; preds = %301, %294
  %299 = call i32 (...) @read_record()
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = call i32 (...) @process_account_types_row()
  br label %298

303:                                              ; preds = %298
  br label %309

304:                                              ; preds = %291
  br label %305

305:                                              ; preds = %291, %304
  %306 = load i32, i32* @stderr, align 4
  %307 = call i32 (i32, i8*, ...) @fprintf(i32 %306, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %308 = call i32 @exit(i32 1) #3
  unreachable

309:                                              ; preds = %303
  %310 = call i32 (...) @flush_out()
  %311 = load i32, i32* @targ_fd, align 4
  %312 = icmp ne i32 %311, 1
  br i1 %312, label %313, label %326

313:                                              ; preds = %309
  %314 = call i32 (...) @write_binlog_headers()
  %315 = load i32, i32* @targ_fd, align 4
  %316 = call i64 @fsync(i32 %315)
  %317 = icmp slt i64 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %313
  %319 = load i32, i32* @stderr, align 4
  %320 = load i8*, i8** @targ_fname, align 8
  %321 = call i32 (i32, i8*, ...) @fprintf(i32 %319, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %320)
  %322 = call i32 @exit(i32 1) #3
  unreachable

323:                                              ; preds = %313
  %324 = load i32, i32* @targ_fd, align 4
  %325 = call i32 @close(i32 %324)
  br label %326

326:                                              ; preds = %323, %309
  %327 = load i64, i64* @verbosity, align 8
  %328 = icmp sgt i64 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %326
  %330 = call i32 (...) @output_stats()
  br label %331

331:                                              ; preds = %329, %326
  store i32 0, i32* %3, align 4
  br label %332

332:                                              ; preds = %331, %273, %208, %160, %114, %102, %81, %50, %20
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i32*) #1

declare dso_local i32 @get_dump_format(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @atol(i8*) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i64 @open(i8*, i32, ...) #1

declare dso_local i32 @read(i64, i64, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @fname_last(i8*) #1

declare dso_local i64 @lock_whole_file(i32, i32) #1

declare dso_local i64 @load_binlog_headers(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @randomize(...) #1

declare dso_local i32 @start_binlog(i32, i8*) #1

declare dso_local i32 @read_record(...) #1

declare dso_local i32 @process_account_types_row(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @flush_out(...) #1

declare dso_local i32 @write_binlog_headers(...) #1

declare dso_local i64 @fsync(i32) #1

declare dso_local i32 @output_stats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
