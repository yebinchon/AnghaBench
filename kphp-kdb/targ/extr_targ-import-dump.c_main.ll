; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_main.c"
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
@Gd = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"fatal: cannot determine table type from filename %s\0A\00", align 1
@targ_fname = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot create %s: %m\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@Args_per_line = common dso_local global i32 0, align 4
@TARG_SCHEMA_V1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ms_END = common dso_local global i32 0, align 4
@MAX_CHARS = common dso_local global i32 0, align 4
@TS = common dso_local global i32 0, align 4
@Tw = common dso_local global i32 0, align 4
@Tc = common dso_local global i32 0, align 4
@MAX_GID = common dso_local global i32 0, align 4
@mp_END = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"unknown table type\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"error syncing %s: %m\00", align 1

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
  %10 = call i32 (...) @init_allowed()
  br label %11

11:                                               ; preds = %66, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %67

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %66 [
    i32 118, label %18
    i32 104, label %19
    i32 109, label %21
    i32 102, label %43
    i32 111, label %53
    i32 103, label %56
    i32 117, label %64
  ]

18:                                               ; preds = %16
  store i64 1, i64* @verbosity, align 8
  br label %66

19:                                               ; preds = %16
  %20 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %415

21:                                               ; preds = %16
  %22 = load i8*, i8** @optarg, align 8
  %23 = call i32 @sscanf(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* @split_rem, i32* @split_mod)
  %24 = icmp eq i32 %23, 2
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* @split_mod, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load i32, i32* @split_mod, align 4
  %31 = icmp sle i32 %30, 1000
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* @split_rem, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @split_rem, align 4
  %37 = load i32, i32* @split_mod, align 4
  %38 = icmp slt i32 %36, %37
  br label %39

39:                                               ; preds = %35, %32, %29, %21
  %40 = phi i1 [ false, %32 ], [ false, %29 ], [ false, %21 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  br label %66

43:                                               ; preds = %16
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i32 @get_dump_format(i8* %44)
  store i32 %45, i32* @table_format, align 4
  %46 = load i32, i32* @table_format, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** @optarg, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  store i32 2, i32* %3, align 4
  br label %415

52:                                               ; preds = %43
  br label %66

53:                                               ; preds = %16
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i32 @atol(i8* %54)
  store i32 %55, i32* @output_format, align 4
  br label %66

56:                                               ; preds = %16
  %57 = load i8*, i8** @groups_fname, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i8*, i8** @optarg, align 8
  store i8* %60, i8** @groups_fname2, align 8
  br label %63

61:                                               ; preds = %56
  %62 = load i8*, i8** @optarg, align 8
  store i8* %62, i8** @groups_fname, align 8
  br label %63

63:                                               ; preds = %61, %59
  br label %66

64:                                               ; preds = %16
  %65 = load i8*, i8** @optarg, align 8
  store i8* %65, i8** @username, align 8
  br label %66

66:                                               ; preds = %16, %64, %63, %53, %52, %39, %18
  br label %11

67:                                               ; preds = %11
  %68 = load i32, i32* @optind, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @optind, align 4
  %73 = add nsw i32 %72, 2
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71, %67
  %77 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %415

78:                                               ; preds = %71
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* @optind, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** @src_fname, align 8
  %84 = load i8*, i8** @username, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %100

86:                                               ; preds = %78
  %87 = load i8*, i8** @username, align 8
  %88 = call i64 @change_user(i8* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i32, i32* @stderr, align 4
  %92 = load i8*, i8** @username, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i8*, i8** @username, align 8
  br label %97

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i8* [ %95, %94 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %96 ]
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  store i32 1, i32* %3, align 4
  br label %415

100:                                              ; preds = %86, %78
  %101 = load i8*, i8** @groups_fname, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %146

103:                                              ; preds = %100
  %104 = load i8*, i8** @groups_fname, align 8
  %105 = load i32, i32* @O_RDONLY, align 4
  %106 = call i64 (i8*, i32, ...) @open(i8* %104, i32 %105)
  store i64 %106, i64* @src_fd, align 8
  %107 = load i64, i64* @src_fd, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* @stderr, align 4
  %111 = load i8*, i8** @groups_fname, align 8
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %111)
  store i32 1, i32* %3, align 4
  br label %415

113:                                              ; preds = %103
  %114 = load i64, i64* @src_fd, align 8
  %115 = load i64, i64* @GT, align 8
  %116 = load i32, i32* @MAX_GROUPS, align 4
  %117 = call i32 @read(i64 %114, i64 %115, i32 %116)
  store i32 %117, i32* @Gc, align 4
  %118 = load i64, i64* @verbosity, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load i32, i32* @stderr, align 4
  %122 = load i32, i32* @Gc, align 4
  %123 = load i8*, i8** @groups_fname, align 8
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %122, i8* %123)
  br label %125

125:                                              ; preds = %120, %113
  %126 = load i32, i32* @Gc, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* @Gc, align 4
  %130 = load i32, i32* @MAX_GROUPS, align 4
  %131 = icmp slt i32 %129, %130
  br label %132

132:                                              ; preds = %128, %125
  %133 = phi i1 [ false, %125 ], [ %131, %128 ]
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i64, i64* @src_fd, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @close(i32 %137)
  store i64 0, i64* @src_fd, align 8
  %139 = load i64, i64* @GT, align 8
  store i64 %139, i64* @GA, align 8
  %140 = load i64, i64* @GA, align 8
  %141 = load i32, i32* @Gc, align 4
  %142 = add nsw i32 %141, 3
  %143 = and i32 %142, -4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %140, %144
  store i64 %145, i64* @GB, align 8
  store i64 %145, i64* @GC, align 8
  br label %146

146:                                              ; preds = %132, %100
  %147 = load i8*, i8** @groups_fname2, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %197

149:                                              ; preds = %146
  %150 = load i8*, i8** @groups_fname2, align 8
  %151 = load i32, i32* @O_RDONLY, align 4
  %152 = call i64 (i8*, i32, ...) @open(i8* %150, i32 %151)
  store i64 %152, i64* @src_fd, align 8
  %153 = load i64, i64* @src_fd, align 8
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i32, i32* @stderr, align 4
  %157 = load i8*, i8** @groups_fname2, align 8
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %156, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %157)
  store i32 1, i32* %3, align 4
  br label %415

159:                                              ; preds = %149
  %160 = load i64, i64* @src_fd, align 8
  %161 = load i64, i64* @GB, align 8
  %162 = load i64, i64* @GA, align 8
  %163 = load i32, i32* @MAX_GROUPS, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %162, %164
  %166 = load i64, i64* @GB, align 8
  %167 = sub nsw i64 %165, %166
  %168 = trunc i64 %167 to i32
  %169 = call i32 @read(i64 %160, i64 %161, i32 %168)
  store i32 %169, i32* @Gd, align 4
  %170 = load i64, i64* @verbosity, align 8
  %171 = icmp sgt i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %159
  %173 = load i32, i32* @stderr, align 4
  %174 = load i32, i32* @Gd, align 4
  %175 = load i8*, i8** @groups_fname2, align 8
  %176 = call i32 (i32, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %174, i8* %175)
  br label %177

177:                                              ; preds = %172, %159
  %178 = load i32, i32* @Gd, align 4
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* @Gd, align 4
  %182 = load i32, i32* @MAX_GROUPS, align 4
  %183 = icmp slt i32 %181, %182
  br label %184

184:                                              ; preds = %180, %177
  %185 = phi i1 [ false, %177 ], [ %183, %180 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load i64, i64* @src_fd, align 8
  %189 = trunc i64 %188 to i32
  %190 = call i32 @close(i32 %189)
  store i64 0, i64* @src_fd, align 8
  %191 = load i64, i64* @GB, align 8
  %192 = load i32, i32* @Gd, align 4
  %193 = add nsw i32 %192, 3
  %194 = and i32 %193, -4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %191, %195
  store i64 %196, i64* @GC, align 8
  br label %197

197:                                              ; preds = %184, %146
  %198 = load i8*, i8** @src_fname, align 8
  %199 = load i32, i32* @O_RDONLY, align 4
  %200 = call i64 (i8*, i32, ...) @open(i8* %198, i32 %199)
  store i64 %200, i64* @src_fd, align 8
  %201 = load i64, i64* @src_fd, align 8
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load i32, i32* @stderr, align 4
  %205 = load i8*, i8** @src_fname, align 8
  %206 = call i32 (i32, i8*, ...) @fprintf(i32 %204, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %205)
  store i32 1, i32* %3, align 4
  br label %415

207:                                              ; preds = %197
  %208 = load i32, i32* @table_format, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %221, label %210

210:                                              ; preds = %207
  %211 = load i8*, i8** @src_fname, align 8
  %212 = call i8* @fname_last(i8* %211)
  %213 = call i32 @get_dump_format(i8* %212)
  store i32 %213, i32* @table_format, align 4
  %214 = load i32, i32* @table_format, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %210
  %217 = load i32, i32* @stderr, align 4
  %218 = load i8*, i8** @src_fname, align 8
  %219 = call i32 (i32, i8*, ...) @fprintf(i32 %217, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %218)
  br label %220

220:                                              ; preds = %216, %210
  br label %221

221:                                              ; preds = %220, %207
  %222 = load i32, i32* @optind, align 4
  %223 = add nsw i32 %222, 1
  %224 = load i32, i32* %4, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %248

226:                                              ; preds = %221
  %227 = load i8**, i8*** %5, align 8
  %228 = load i32, i32* @optind, align 4
  %229 = add nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %227, i64 %230
  %232 = load i8*, i8** %231, align 8
  store i8* %232, i8** @targ_fname, align 8
  %233 = load i8*, i8** @targ_fname, align 8
  %234 = load i32, i32* @O_WRONLY, align 4
  %235 = load i32, i32* @O_APPEND, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @O_CREAT, align 4
  %238 = or i32 %236, %237
  %239 = call i64 (i8*, i32, ...) @open(i8* %233, i32 %238, i32 420)
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* @targ_fd, align 4
  %241 = load i32, i32* @targ_fd, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %226
  %244 = load i32, i32* @stderr, align 4
  %245 = load i8*, i8** @targ_fname, align 8
  %246 = call i32 (i32, i8*, ...) @fprintf(i32 %244, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %245)
  store i32 1, i32* %3, align 4
  br label %415

247:                                              ; preds = %226
  br label %249

248:                                              ; preds = %221
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %249

249:                                              ; preds = %248, %247
  %250 = load i32, i32* @table_format, align 4
  switch i32 %250, label %389 [
    i32 131, label %251
    i32 136, label %260
    i32 130, label %269
    i32 133, label %279
    i32 137, label %301
    i32 135, label %310
    i32 132, label %332
    i32 129, label %346
    i32 128, label %355
    i32 134, label %379
  ]

251:                                              ; preds = %249
  store i32 27, i32* @Args_per_line, align 4
  %252 = load i32, i32* @TARG_SCHEMA_V1, align 4
  %253 = call i32 @start_binlog(i32 %252, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %254

254:                                              ; preds = %257, %251
  %255 = call i32 (...) @read_record()
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %254
  %258 = call i32 (...) @process_memlite_row()
  br label %254

259:                                              ; preds = %254
  br label %393

260:                                              ; preds = %249
  store i32 11, i32* @Args_per_line, align 4
  %261 = load i32, i32* @TARG_SCHEMA_V1, align 4
  %262 = call i32 @start_binlog(i32 %261, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %263

263:                                              ; preds = %266, %260
  %264 = call i32 (...) @read_record()
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  %267 = call i32 (...) @process_education_row()
  br label %263

268:                                              ; preds = %263
  br label %393

269:                                              ; preds = %249
  %270 = load i32, i32* @ms_END, align 4
  store i32 %270, i32* @Args_per_line, align 4
  %271 = load i32, i32* @TARG_SCHEMA_V1, align 4
  %272 = call i32 @start_binlog(i32 %271, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %273

273:                                              ; preds = %276, %269
  %274 = call i32 (...) @read_record()
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = call i32 (...) @process_memshort_row()
  br label %273

278:                                              ; preds = %273
  br label %393

279:                                              ; preds = %249
  store i32 3, i32* @Args_per_line, align 4
  %280 = load i32, i32* @output_format, align 4
  %281 = icmp ne i32 %280, 1
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i32, i32* @TARG_SCHEMA_V1, align 4
  %284 = call i32 @start_binlog(i32 %283, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %285

285:                                              ; preds = %282, %279
  %286 = load i32, i32* @MAX_CHARS, align 4
  %287 = call i32 @malloc(i32 %286)
  store i32 %287, i32* @TS, align 4
  store i32 %287, i32* @Tw, align 4
  %288 = load i32, i32* @TS, align 4
  %289 = call i32 @assert(i32 %288)
  br label %290

290:                                              ; preds = %293, %285
  %291 = call i32 (...) @read_record()
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = call i32 (...) @process_memextra_row()
  br label %290

295:                                              ; preds = %290
  %296 = load i32, i32* @Tc, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %295
  %299 = call i32 (...) @flush_words()
  br label %300

300:                                              ; preds = %298, %295
  br label %393

301:                                              ; preds = %249
  store i32 15, i32* @Args_per_line, align 4
  %302 = load i32, i32* @TARG_SCHEMA_V1, align 4
  %303 = call i32 @start_binlog(i32 %302, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %304

304:                                              ; preds = %307, %301
  %305 = call i32 (...) @read_record()
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %304
  %308 = call i32 (...) @process_addresses_row()
  br label %304

309:                                              ; preds = %304
  br label %393

310:                                              ; preds = %249
  store i32 3, i32* @Args_per_line, align 4
  br label %311

311:                                              ; preds = %314, %310
  %312 = call i32 (...) @read_record()
  %313 = icmp sgt i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = call i32 (...) @process_groupshort_row()
  br label %311

316:                                              ; preds = %311
  %317 = load i32, i32* @output_format, align 4
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %319, label %331

319:                                              ; preds = %316
  %320 = load i32, i32* @Gc, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %319
  %323 = load i32, i32* @targ_fd, align 4
  %324 = load i64, i64* @GT, align 8
  %325 = load i32, i32* @Gc, align 4
  %326 = call i32 @write(i32 %323, i64 %324, i32 %325)
  %327 = load i32, i32* @Gc, align 4
  %328 = icmp eq i32 %326, %327
  %329 = zext i1 %328 to i32
  %330 = call i32 @assert(i32 %329)
  br label %331

331:                                              ; preds = %322, %319, %316
  br label %393

332:                                              ; preds = %249
  %333 = load i32, i32* @Gc, align 4
  %334 = icmp sgt i32 %333, 0
  %335 = zext i1 %334 to i32
  %336 = call i32 @assert(i32 %335)
  store i32 5, i32* @Args_per_line, align 4
  %337 = load i32, i32* @TARG_SCHEMA_V1, align 4
  %338 = call i32 @start_binlog(i32 %337, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %339

339:                                              ; preds = %342, %332
  %340 = call i32 (...) @read_record()
  %341 = icmp sgt i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %339
  %343 = call i32 (...) @process_memgroups_row()
  br label %339

344:                                              ; preds = %339
  %345 = call i32 (...) @flush_memgroups()
  br label %393

346:                                              ; preds = %249
  store i32 6, i32* @Args_per_line, align 4
  %347 = load i32, i32* @TARG_SCHEMA_V1, align 4
  %348 = call i32 @start_binlog(i32 %347, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %349

349:                                              ; preds = %352, %346
  %350 = call i32 (...) @read_record()
  %351 = icmp sgt i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %349
  %353 = call i32 (...) @process_military_row()
  br label %349

354:                                              ; preds = %349
  br label %393

355:                                              ; preds = %249
  store i32 2, i32* @Args_per_line, align 4
  %356 = load i32, i32* @MAX_GID, align 4
  %357 = mul nsw i32 %356, 4
  store i32 %357, i32* @Gc, align 4
  br label %358

358:                                              ; preds = %361, %355
  %359 = call i32 (...) @read_record()
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %358
  %362 = call i32 (...) @process_names_row()
  br label %358

363:                                              ; preds = %358
  %364 = load i32, i32* @output_format, align 4
  %365 = icmp eq i32 %364, 1
  br i1 %365, label %366, label %378

366:                                              ; preds = %363
  %367 = load i32, i32* @Gc, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %378

369:                                              ; preds = %366
  %370 = load i32, i32* @targ_fd, align 4
  %371 = load i64, i64* @GT, align 8
  %372 = load i32, i32* @Gc, align 4
  %373 = call i32 @write(i32 %370, i64 %371, i32 %372)
  %374 = load i32, i32* @Gc, align 4
  %375 = icmp eq i32 %373, %374
  %376 = zext i1 %375 to i32
  %377 = call i32 @assert(i32 %376)
  br label %378

378:                                              ; preds = %369, %366, %363
  br label %393

379:                                              ; preds = %249
  %380 = load i32, i32* @mp_END, align 4
  store i32 %380, i32* @Args_per_line, align 4
  %381 = load i32, i32* @TARG_SCHEMA_V1, align 4
  %382 = call i32 @start_binlog(i32 %381, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %383

383:                                              ; preds = %386, %379
  %384 = call i32 (...) @read_record()
  %385 = icmp sgt i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %383
  %387 = call i32 (...) @process_matches_row()
  br label %383

388:                                              ; preds = %383
  br label %393

389:                                              ; preds = %249
  %390 = load i32, i32* @stderr, align 4
  %391 = call i32 (i32, i8*, ...) @fprintf(i32 %390, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %392 = call i32 @exit(i32 1) #3
  unreachable

393:                                              ; preds = %388, %378, %354, %344, %331, %309, %300, %278, %268, %259
  %394 = call i32 (...) @flush_out()
  %395 = load i32, i32* @targ_fd, align 4
  %396 = icmp ne i32 %395, 1
  br i1 %396, label %397, label %409

397:                                              ; preds = %393
  %398 = load i32, i32* @targ_fd, align 4
  %399 = call i64 @fdatasync(i32 %398)
  %400 = icmp slt i64 %399, 0
  br i1 %400, label %401, label %406

401:                                              ; preds = %397
  %402 = load i32, i32* @stderr, align 4
  %403 = load i8*, i8** @targ_fname, align 8
  %404 = call i32 (i32, i8*, ...) @fprintf(i32 %402, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %403)
  %405 = call i32 @exit(i32 1) #3
  unreachable

406:                                              ; preds = %397
  %407 = load i32, i32* @targ_fd, align 4
  %408 = call i32 @close(i32 %407)
  br label %409

409:                                              ; preds = %406, %393
  %410 = load i64, i64* @verbosity, align 8
  %411 = icmp sgt i64 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %409
  %413 = call i32 (...) @output_stats()
  br label %414

414:                                              ; preds = %412, %409
  store i32 0, i32* %3, align 4
  br label %415

415:                                              ; preds = %414, %243, %203, %155, %109, %97, %76, %48, %19
  %416 = load i32, i32* %3, align 4
  ret i32 %416
}

declare dso_local i32 @init_allowed(...) #1

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

declare dso_local i32 @process_memlite_row(...) #1

declare dso_local i32 @process_education_row(...) #1

declare dso_local i32 @process_memshort_row(...) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @process_memextra_row(...) #1

declare dso_local i32 @flush_words(...) #1

declare dso_local i32 @process_addresses_row(...) #1

declare dso_local i32 @process_groupshort_row(...) #1

declare dso_local i32 @write(i32, i64, i32) #1

declare dso_local i32 @process_memgroups_row(...) #1

declare dso_local i32 @flush_memgroups(...) #1

declare dso_local i32 @process_military_row(...) #1

declare dso_local i32 @process_names_row(...) #1

declare dso_local i32 @process_matches_row(...) #1

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
