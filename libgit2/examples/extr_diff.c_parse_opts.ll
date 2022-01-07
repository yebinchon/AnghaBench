; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_diff.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_diff.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_info = type { i32 }
%struct.opts = type { i8*, i8*, i64, i64, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__, i32, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ARGS_INFO_INIT = common dso_local global %struct.args_info zeroinitializer, align 4
@.str = private unnamed_addr constant [49 x i8] c"Only one or two tree identifiers can be provided\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"--patch\00", align 1
@OUTPUT_DIFF = common dso_local global i32 0, align 4
@GIT_DIFF_FORMAT_PATCH = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"--cached\00", align 1
@CACHE_ONLY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"--cached and --no-index are incompatible\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"--nocache\00", align 1
@CACHE_NONE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"--name-only\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"--format=name\00", align 1
@GIT_DIFF_FORMAT_NAME_ONLY = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"--name-status\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"--format=name-status\00", align 1
@GIT_DIFF_FORMAT_NAME_STATUS = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"--raw\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"--format=raw\00", align 1
@GIT_DIFF_FORMAT_RAW = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [20 x i8] c"--format=diff-index\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"--no-index\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"--color\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"--no-color\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@GIT_DIFF_REVERSE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"--text\00", align 1
@GIT_DIFF_FORCE_TEXT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [22 x i8] c"--ignore-space-at-eol\00", align 1
@GIT_DIFF_IGNORE_WHITESPACE_EOL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"--ignore-space-change\00", align 1
@GIT_DIFF_IGNORE_WHITESPACE_CHANGE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"--ignore-all-space\00", align 1
@GIT_DIFF_IGNORE_WHITESPACE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [10 x i8] c"--ignored\00", align 1
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [12 x i8] c"--untracked\00", align 1
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [11 x i8] c"--patience\00", align 1
@GIT_DIFF_PATIENCE = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [10 x i8] c"--minimal\00", align 1
@GIT_DIFF_MINIMAL = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [7 x i8] c"--stat\00", align 1
@OUTPUT_STAT = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [10 x i8] c"--numstat\00", align 1
@OUTPUT_NUMSTAT = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [12 x i8] c"--shortstat\00", align 1
@OUTPUT_SHORTSTAT = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"--summary\00", align 1
@OUTPUT_SUMMARY = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [3 x i8] c"-M\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"--find-renames\00", align 1
@GIT_DIFF_FIND_RENAMES = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"--find-copies\00", align 1
@GIT_DIFF_FIND_COPIES = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [21 x i8] c"--find-copies-harder\00", align 1
@GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"--break-rewrites\00", align 1
@GIT_DIFF_FIND_REWRITES = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [3 x i8] c"-U\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"--unified\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"--inter-hunk-context\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"--abbrev\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"--src-prefix\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"--dst-prefix\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"--git-dir\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"Unknown command line argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opts*, i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(%struct.opts* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.args_info, align 4
  %8 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %9 = bitcast %struct.args_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.args_info* @ARGS_INFO_INIT to i8*), i64 4, i1 false)
  %10 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  store i32 1, i32* %10, align 4
  br label %11

11:                                               ; preds = %458, %3
  %12 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %462

16:                                               ; preds = %11
  %17 = load i8**, i8*** %6, align 8
  %18 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 45
  br i1 %27, label %28, label %50

28:                                               ; preds = %16
  %29 = load %struct.opts*, %struct.opts** %4, align 8
  %30 = getelementptr inbounds %struct.opts, %struct.opts* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.opts*, %struct.opts** %4, align 8
  %36 = getelementptr inbounds %struct.opts, %struct.opts* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %49

37:                                               ; preds = %28
  %38 = load %struct.opts*, %struct.opts** %4, align 8
  %39 = getelementptr inbounds %struct.opts, %struct.opts* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.opts*, %struct.opts** %4, align 8
  %45 = getelementptr inbounds %struct.opts, %struct.opts* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %48

46:                                               ; preds = %37
  %47 = call i32 @usage(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* null)
  br label %48

48:                                               ; preds = %46, %42
  br label %49

49:                                               ; preds = %48, %33
  br label %457

50:                                               ; preds = %16
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %58, %54, %50
  %63 = load i32, i32* @OUTPUT_DIFF, align 4
  %64 = load %struct.opts*, %struct.opts** %4, align 8
  %65 = getelementptr inbounds %struct.opts, %struct.opts* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i8*, i8** @GIT_DIFF_FORMAT_PATCH, align 8
  %69 = load %struct.opts*, %struct.opts** %4, align 8
  %70 = getelementptr inbounds %struct.opts, %struct.opts* %69, i32 0, i32 9
  store i8* %68, i8** %70, align 8
  br label %456

71:                                               ; preds = %58
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* @CACHE_ONLY, align 8
  %77 = load %struct.opts*, %struct.opts** %4, align 8
  %78 = getelementptr inbounds %struct.opts, %struct.opts* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.opts*, %struct.opts** %4, align 8
  %80 = getelementptr inbounds %struct.opts, %struct.opts* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = call i32 @usage(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* null)
  br label %85

85:                                               ; preds = %83, %75
  br label %455

86:                                               ; preds = %71
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* @CACHE_NONE, align 8
  %92 = load %struct.opts*, %struct.opts** %4, align 8
  %93 = getelementptr inbounds %struct.opts, %struct.opts* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  br label %454

94:                                               ; preds = %86
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98, %94
  %103 = load i8*, i8** @GIT_DIFF_FORMAT_NAME_ONLY, align 8
  %104 = load %struct.opts*, %struct.opts** %4, align 8
  %105 = getelementptr inbounds %struct.opts, %struct.opts* %104, i32 0, i32 9
  store i8* %103, i8** %105, align 8
  br label %453

106:                                              ; preds = %98
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110, %106
  %115 = load i8*, i8** @GIT_DIFF_FORMAT_NAME_STATUS, align 8
  %116 = load %struct.opts*, %struct.opts** %4, align 8
  %117 = getelementptr inbounds %struct.opts, %struct.opts* %116, i32 0, i32 9
  store i8* %115, i8** %117, align 8
  br label %452

118:                                              ; preds = %110
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i8*, i8** %8, align 8
  %124 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122, %118
  %127 = load i8*, i8** @GIT_DIFF_FORMAT_RAW, align 8
  %128 = load %struct.opts*, %struct.opts** %4, align 8
  %129 = getelementptr inbounds %struct.opts, %struct.opts* %128, i32 0, i32 9
  store i8* %127, i8** %129, align 8
  br label %451

130:                                              ; preds = %122
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %130
  %135 = load i8*, i8** @GIT_DIFF_FORMAT_RAW, align 8
  %136 = load %struct.opts*, %struct.opts** %4, align 8
  %137 = getelementptr inbounds %struct.opts, %struct.opts* %136, i32 0, i32 9
  store i8* %135, i8** %137, align 8
  %138 = load %struct.opts*, %struct.opts** %4, align 8
  %139 = getelementptr inbounds %struct.opts, %struct.opts* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i32 40, i32* %140, align 8
  br label %450

141:                                              ; preds = %130
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %141
  %146 = load %struct.opts*, %struct.opts** %4, align 8
  %147 = getelementptr inbounds %struct.opts, %struct.opts* %146, i32 0, i32 3
  store i64 0, i64* %147, align 8
  %148 = load %struct.opts*, %struct.opts** %4, align 8
  %149 = getelementptr inbounds %struct.opts, %struct.opts* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CACHE_ONLY, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = call i32 @usage(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* null)
  br label %155

155:                                              ; preds = %153, %145
  br label %449

156:                                              ; preds = %141
  %157 = load i8*, i8** %8, align 8
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = load %struct.opts*, %struct.opts** %4, align 8
  %162 = getelementptr inbounds %struct.opts, %struct.opts* %161, i32 0, i32 4
  store i32 0, i32* %162, align 8
  br label %448

163:                                              ; preds = %156
  %164 = load i8*, i8** %8, align 8
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  %168 = load %struct.opts*, %struct.opts** %4, align 8
  %169 = getelementptr inbounds %struct.opts, %struct.opts* %168, i32 0, i32 4
  store i32 -1, i32* %169, align 8
  br label %447

170:                                              ; preds = %163
  %171 = load i8*, i8** %8, align 8
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %176 = load %struct.opts*, %struct.opts** %4, align 8
  %177 = getelementptr inbounds %struct.opts, %struct.opts* %176, i32 0, i32 6
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %175
  store i32 %180, i32* %178, align 4
  br label %446

181:                                              ; preds = %170
  %182 = load i8*, i8** %8, align 8
  %183 = call i32 @strcmp(i8* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = load i8*, i8** %8, align 8
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %185, %181
  %190 = load i32, i32* @GIT_DIFF_FORCE_TEXT, align 4
  %191 = load %struct.opts*, %struct.opts** %4, align 8
  %192 = getelementptr inbounds %struct.opts, %struct.opts* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %190
  store i32 %195, i32* %193, align 4
  br label %445

196:                                              ; preds = %185
  %197 = load i8*, i8** %8, align 8
  %198 = call i32 @strcmp(i8* %197, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* @GIT_DIFF_IGNORE_WHITESPACE_EOL, align 4
  %202 = load %struct.opts*, %struct.opts** %4, align 8
  %203 = getelementptr inbounds %struct.opts, %struct.opts* %202, i32 0, i32 6
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %201
  store i32 %206, i32* %204, align 4
  br label %444

207:                                              ; preds = %196
  %208 = load i8*, i8** %8, align 8
  %209 = call i32 @strcmp(i8* %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load i8*, i8** %8, align 8
  %213 = call i32 @strcmp(i8* %212, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0))
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %211, %207
  %216 = load i32, i32* @GIT_DIFF_IGNORE_WHITESPACE_CHANGE, align 4
  %217 = load %struct.opts*, %struct.opts** %4, align 8
  %218 = getelementptr inbounds %struct.opts, %struct.opts* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %216
  store i32 %221, i32* %219, align 4
  br label %443

222:                                              ; preds = %211
  %223 = load i8*, i8** %8, align 8
  %224 = call i32 @strcmp(i8* %223, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %222
  %227 = load i8*, i8** %8, align 8
  %228 = call i32 @strcmp(i8* %227, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %237, label %230

230:                                              ; preds = %226, %222
  %231 = load i32, i32* @GIT_DIFF_IGNORE_WHITESPACE, align 4
  %232 = load %struct.opts*, %struct.opts** %4, align 8
  %233 = getelementptr inbounds %struct.opts, %struct.opts* %232, i32 0, i32 6
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %231
  store i32 %236, i32* %234, align 4
  br label %442

237:                                              ; preds = %226
  %238 = load i8*, i8** %8, align 8
  %239 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %248, label %241

241:                                              ; preds = %237
  %242 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %243 = load %struct.opts*, %struct.opts** %4, align 8
  %244 = getelementptr inbounds %struct.opts, %struct.opts* %243, i32 0, i32 6
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %242
  store i32 %247, i32* %245, align 4
  br label %441

248:                                              ; preds = %237
  %249 = load i8*, i8** %8, align 8
  %250 = call i32 @strcmp(i8* %249, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %259, label %252

252:                                              ; preds = %248
  %253 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %254 = load %struct.opts*, %struct.opts** %4, align 8
  %255 = getelementptr inbounds %struct.opts, %struct.opts* %254, i32 0, i32 6
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %253
  store i32 %258, i32* %256, align 4
  br label %440

259:                                              ; preds = %248
  %260 = load i8*, i8** %8, align 8
  %261 = call i32 @strcmp(i8* %260, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %270, label %263

263:                                              ; preds = %259
  %264 = load i32, i32* @GIT_DIFF_PATIENCE, align 4
  %265 = load %struct.opts*, %struct.opts** %4, align 8
  %266 = getelementptr inbounds %struct.opts, %struct.opts* %265, i32 0, i32 6
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, %264
  store i32 %269, i32* %267, align 4
  br label %439

270:                                              ; preds = %259
  %271 = load i8*, i8** %8, align 8
  %272 = call i32 @strcmp(i8* %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %281, label %274

274:                                              ; preds = %270
  %275 = load i32, i32* @GIT_DIFF_MINIMAL, align 4
  %276 = load %struct.opts*, %struct.opts** %4, align 8
  %277 = getelementptr inbounds %struct.opts, %struct.opts* %276, i32 0, i32 6
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, %275
  store i32 %280, i32* %278, align 4
  br label %438

281:                                              ; preds = %270
  %282 = load i8*, i8** %8, align 8
  %283 = call i32 @strcmp(i8* %282, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %291, label %285

285:                                              ; preds = %281
  %286 = load i32, i32* @OUTPUT_STAT, align 4
  %287 = load %struct.opts*, %struct.opts** %4, align 8
  %288 = getelementptr inbounds %struct.opts, %struct.opts* %287, i32 0, i32 8
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 4
  br label %437

291:                                              ; preds = %281
  %292 = load i8*, i8** %8, align 8
  %293 = call i32 @strcmp(i8* %292, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0))
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %301, label %295

295:                                              ; preds = %291
  %296 = load i32, i32* @OUTPUT_NUMSTAT, align 4
  %297 = load %struct.opts*, %struct.opts** %4, align 8
  %298 = getelementptr inbounds %struct.opts, %struct.opts* %297, i32 0, i32 8
  %299 = load i32, i32* %298, align 4
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 4
  br label %436

301:                                              ; preds = %291
  %302 = load i8*, i8** %8, align 8
  %303 = call i32 @strcmp(i8* %302, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0))
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %301
  %306 = load i32, i32* @OUTPUT_SHORTSTAT, align 4
  %307 = load %struct.opts*, %struct.opts** %4, align 8
  %308 = getelementptr inbounds %struct.opts, %struct.opts* %307, i32 0, i32 8
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 4
  br label %435

311:                                              ; preds = %301
  %312 = load i8*, i8** %8, align 8
  %313 = call i32 @strcmp(i8* %312, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0))
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %321, label %315

315:                                              ; preds = %311
  %316 = load i32, i32* @OUTPUT_SUMMARY, align 4
  %317 = load %struct.opts*, %struct.opts** %4, align 8
  %318 = getelementptr inbounds %struct.opts, %struct.opts* %317, i32 0, i32 8
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %319, %316
  store i32 %320, i32* %318, align 4
  br label %434

321:                                              ; preds = %311
  %322 = load %struct.opts*, %struct.opts** %4, align 8
  %323 = getelementptr inbounds %struct.opts, %struct.opts* %322, i32 0, i32 7
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 0
  %325 = call i64 @match_uint16_arg(i32* %324, %struct.args_info* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0))
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %333, label %327

327:                                              ; preds = %321
  %328 = load %struct.opts*, %struct.opts** %4, align 8
  %329 = getelementptr inbounds %struct.opts, %struct.opts* %328, i32 0, i32 7
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 0
  %331 = call i64 @match_uint16_arg(i32* %330, %struct.args_info* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0))
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %327, %321
  %334 = load i32, i32* @GIT_DIFF_FIND_RENAMES, align 4
  %335 = load %struct.opts*, %struct.opts** %4, align 8
  %336 = getelementptr inbounds %struct.opts, %struct.opts* %335, i32 0, i32 7
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = or i32 %338, %334
  store i32 %339, i32* %337, align 8
  br label %433

340:                                              ; preds = %327
  %341 = load %struct.opts*, %struct.opts** %4, align 8
  %342 = getelementptr inbounds %struct.opts, %struct.opts* %341, i32 0, i32 7
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 1
  %344 = call i64 @match_uint16_arg(i32* %343, %struct.args_info* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0))
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %352, label %346

346:                                              ; preds = %340
  %347 = load %struct.opts*, %struct.opts** %4, align 8
  %348 = getelementptr inbounds %struct.opts, %struct.opts* %347, i32 0, i32 7
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 1
  %350 = call i64 @match_uint16_arg(i32* %349, %struct.args_info* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0))
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %346, %340
  %353 = load i32, i32* @GIT_DIFF_FIND_COPIES, align 4
  %354 = load %struct.opts*, %struct.opts** %4, align 8
  %355 = getelementptr inbounds %struct.opts, %struct.opts* %354, i32 0, i32 7
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = or i32 %357, %353
  store i32 %358, i32* %356, align 8
  br label %432

359:                                              ; preds = %346
  %360 = load i8*, i8** %8, align 8
  %361 = call i32 @strcmp(i8* %360, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0))
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %370, label %363

363:                                              ; preds = %359
  %364 = load i32, i32* @GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED, align 4
  %365 = load %struct.opts*, %struct.opts** %4, align 8
  %366 = getelementptr inbounds %struct.opts, %struct.opts* %365, i32 0, i32 7
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = or i32 %368, %364
  store i32 %369, i32* %367, align 8
  br label %431

370:                                              ; preds = %359
  %371 = load i8*, i8** %8, align 8
  %372 = call i64 @is_prefixed(i8* %371, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0))
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %378, label %374

374:                                              ; preds = %370
  %375 = load i8*, i8** %8, align 8
  %376 = call i64 @is_prefixed(i8* %375, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0))
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %385

378:                                              ; preds = %374, %370
  %379 = load i32, i32* @GIT_DIFF_FIND_REWRITES, align 4
  %380 = load %struct.opts*, %struct.opts** %4, align 8
  %381 = getelementptr inbounds %struct.opts, %struct.opts* %380, i32 0, i32 7
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = or i32 %383, %379
  store i32 %384, i32* %382, align 8
  br label %430

385:                                              ; preds = %374
  %386 = load %struct.opts*, %struct.opts** %4, align 8
  %387 = getelementptr inbounds %struct.opts, %struct.opts* %386, i32 0, i32 6
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 4
  %389 = call i32 @match_uint32_arg(i32* %388, %struct.args_info* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %429, label %391

391:                                              ; preds = %385
  %392 = load %struct.opts*, %struct.opts** %4, align 8
  %393 = getelementptr inbounds %struct.opts, %struct.opts* %392, i32 0, i32 6
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 4
  %395 = call i32 @match_uint32_arg(i32* %394, %struct.args_info* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0))
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %429, label %397

397:                                              ; preds = %391
  %398 = load %struct.opts*, %struct.opts** %4, align 8
  %399 = getelementptr inbounds %struct.opts, %struct.opts* %398, i32 0, i32 6
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 3
  %401 = call i32 @match_uint32_arg(i32* %400, %struct.args_info* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0))
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %429, label %403

403:                                              ; preds = %397
  %404 = load %struct.opts*, %struct.opts** %4, align 8
  %405 = getelementptr inbounds %struct.opts, %struct.opts* %404, i32 0, i32 6
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i32 0, i32 0
  %407 = call i64 @match_uint16_arg(i32* %406, %struct.args_info* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0))
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %429, label %409

409:                                              ; preds = %403
  %410 = load %struct.opts*, %struct.opts** %4, align 8
  %411 = getelementptr inbounds %struct.opts, %struct.opts* %410, i32 0, i32 6
  %412 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %411, i32 0, i32 2
  %413 = call i32 @match_str_arg(i32* %412, %struct.args_info* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0))
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %429, label %415

415:                                              ; preds = %409
  %416 = load %struct.opts*, %struct.opts** %4, align 8
  %417 = getelementptr inbounds %struct.opts, %struct.opts* %416, i32 0, i32 6
  %418 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i32 0, i32 1
  %419 = call i32 @match_str_arg(i32* %418, %struct.args_info* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0))
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %429, label %421

421:                                              ; preds = %415
  %422 = load %struct.opts*, %struct.opts** %4, align 8
  %423 = getelementptr inbounds %struct.opts, %struct.opts* %422, i32 0, i32 5
  %424 = call i32 @match_str_arg(i32* %423, %struct.args_info* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0))
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %429, label %426

426:                                              ; preds = %421
  %427 = load i8*, i8** %8, align 8
  %428 = call i32 @usage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i64 0, i64 0), i8* %427)
  br label %429

429:                                              ; preds = %426, %421, %415, %409, %403, %397, %391, %385
  br label %430

430:                                              ; preds = %429, %378
  br label %431

431:                                              ; preds = %430, %363
  br label %432

432:                                              ; preds = %431, %352
  br label %433

433:                                              ; preds = %432, %333
  br label %434

434:                                              ; preds = %433, %315
  br label %435

435:                                              ; preds = %434, %305
  br label %436

436:                                              ; preds = %435, %295
  br label %437

437:                                              ; preds = %436, %285
  br label %438

438:                                              ; preds = %437, %274
  br label %439

439:                                              ; preds = %438, %263
  br label %440

440:                                              ; preds = %439, %252
  br label %441

441:                                              ; preds = %440, %241
  br label %442

442:                                              ; preds = %441, %230
  br label %443

443:                                              ; preds = %442, %215
  br label %444

444:                                              ; preds = %443, %200
  br label %445

445:                                              ; preds = %444, %189
  br label %446

446:                                              ; preds = %445, %174
  br label %447

447:                                              ; preds = %446, %167
  br label %448

448:                                              ; preds = %447, %160
  br label %449

449:                                              ; preds = %448, %155
  br label %450

450:                                              ; preds = %449, %134
  br label %451

451:                                              ; preds = %450, %126
  br label %452

452:                                              ; preds = %451, %114
  br label %453

453:                                              ; preds = %452, %102
  br label %454

454:                                              ; preds = %453, %90
  br label %455

455:                                              ; preds = %454, %85
  br label %456

456:                                              ; preds = %455, %62
  br label %457

457:                                              ; preds = %456, %49
  br label %458

458:                                              ; preds = %457
  %459 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %459, align 4
  br label %11

462:                                              ; preds = %11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usage(i8*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @match_uint16_arg(i32*, %struct.args_info*, i8*) #2

declare dso_local i64 @is_prefixed(i8*, i8*) #2

declare dso_local i32 @match_uint32_arg(i32*, %struct.args_info*, i8*) #2

declare dso_local i32 @match_str_arg(i32*, %struct.args_info*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
