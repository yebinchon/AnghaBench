; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_SERVER = common dso_local global i8* null, align 8
@DEFAULT_PORT = common dso_local global i32 0, align 4
@DEFAULT_COMPRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"s:p:c:dtqvh\00", align 1
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid TCP port.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid compression thoreshold.\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@YRMCDS_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"noop\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"getk\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"gat\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"gatk\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"lag\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"lagk\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"touch\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"rau\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"incr\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"decr\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"prepend\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"unlock\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"unlockall\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"No such command: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [1 x i32], align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i8*, i8** @DEFAULT_SERVER, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i32, i32* @DEFAULT_PORT, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i64, i64* @DEFAULT_COMPRESS, align 8
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %2, %62
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %63

26:                                               ; preds = %19
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %61 [
    i32 115, label %28
    i32 112, label %30
    i32 99, label %43
    i32 100, label %54
    i32 116, label %55
    i32 113, label %56
    i32 118, label %57
    i32 104, label %59
  ]

28:                                               ; preds = %26
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %6, align 8
  br label %62

30:                                               ; preds = %26
  %31 = load i8*, i8** @optarg, align 8
  %32 = call i32 @atoi(i8* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = icmp sgt i32 %36, 65535
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %30
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %345

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %7, align 4
  br label %62

43:                                               ; preds = %26
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i32 @atoi(i8* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %345

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %8, align 8
  br label %62

54:                                               ; preds = %26
  store i32 1, i32* @debug, align 4
  br label %62

55:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %62

56:                                               ; preds = %26
  store i32 1, i32* @quiet, align 4
  br label %62

57:                                               ; preds = %26
  %58 = call i32 (...) @version()
  store i32 0, i32* %3, align 4
  br label %345

59:                                               ; preds = %26
  %60 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %345

61:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %345

62:                                               ; preds = %56, %55, %54, %51, %41, %28
  br label %19

63:                                               ; preds = %25
  %64 = load i32, i32* @optind, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %345

69:                                               ; preds = %63
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32, i32* @optind, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %12, align 8
  %75 = load i32, i32* @optind, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* @optind, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i8**, i8*** %5, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  store i8** %83, i8*** %5, align 8
  %84 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i64 @yrmcds_connect(i32* %84, i8* %85, i32 %86)
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %14, align 8
  %89 = call i32 @CHECK_ERROR(i64 %88)
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %69
  %93 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %94 = call i64 @yrmcds_text_mode(i32* %93)
  store i64 %94, i64* %14, align 8
  %95 = load i64, i64* %14, align 8
  %96 = call i32 @CHECK_ERROR(i64 %95)
  br label %97

97:                                               ; preds = %92, %69
  %98 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %99 = load i64, i64* %8, align 8
  %100 = call i64 @yrmcds_set_compression(i32* %98, i64 %99)
  store i64 %100, i64* %14, align 8
  %101 = load i64, i64* %14, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* @YRMCDS_NOT_IMPLEMENTED, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %109 = call i32 @yrmcds_close(i32* %108)
  %110 = load i64, i64* %14, align 8
  %111 = call i32 @CHECK_ERROR(i64 %110)
  br label %112

112:                                              ; preds = %107, %103, %97
  store i32 1, i32* %15, align 4
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32, i32* %4, align 4
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %120 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_noop to i32 (i32, i8**, i32*, ...)*)(i32 %117, i8** %118, i32* %119)
  store i32 %120, i32* %15, align 4
  br label %341

121:                                              ; preds = %112
  %122 = load i8*, i8** %12, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i32, i32* %4, align 4
  %127 = load i8**, i8*** %5, align 8
  %128 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %129 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_get to i32 (i32, i8**, i32*, ...)*)(i32 %126, i8** %127, i32* %128)
  store i32 %129, i32* %15, align 4
  br label %341

130:                                              ; preds = %121
  %131 = load i8*, i8** %12, align 8
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i32, i32* %4, align 4
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %138 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_getk to i32 (i32, i8**, i32*, ...)*)(i32 %135, i8** %136, i32* %137)
  store i32 %138, i32* %15, align 4
  br label %341

139:                                              ; preds = %130
  %140 = load i8*, i8** %12, align 8
  %141 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i32, i32* %4, align 4
  %145 = load i8**, i8*** %5, align 8
  %146 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %147 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_gat to i32 (i32, i8**, i32*, ...)*)(i32 %144, i8** %145, i32* %146)
  store i32 %147, i32* %15, align 4
  br label %341

148:                                              ; preds = %139
  %149 = load i8*, i8** %12, align 8
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i32, i32* %4, align 4
  %154 = load i8**, i8*** %5, align 8
  %155 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %156 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_gatk to i32 (i32, i8**, i32*, ...)*)(i32 %153, i8** %154, i32* %155)
  store i32 %156, i32* %15, align 4
  br label %341

157:                                              ; preds = %148
  %158 = load i8*, i8** %12, align 8
  %159 = call i32 @strcmp(i8* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load i32, i32* %4, align 4
  %163 = load i8**, i8*** %5, align 8
  %164 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %165 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_lag to i32 (i32, i8**, i32*, ...)*)(i32 %162, i8** %163, i32* %164)
  store i32 %165, i32* %15, align 4
  br label %341

166:                                              ; preds = %157
  %167 = load i8*, i8** %12, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load i32, i32* %4, align 4
  %172 = load i8**, i8*** %5, align 8
  %173 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %174 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_lagk to i32 (i32, i8**, i32*, ...)*)(i32 %171, i8** %172, i32* %173)
  store i32 %174, i32* %15, align 4
  br label %341

175:                                              ; preds = %166
  %176 = load i8*, i8** %12, align 8
  %177 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load i32, i32* %4, align 4
  %181 = load i8**, i8*** %5, align 8
  %182 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %183 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_touch to i32 (i32, i8**, i32*, ...)*)(i32 %180, i8** %181, i32* %182)
  store i32 %183, i32* %15, align 4
  br label %341

184:                                              ; preds = %175
  %185 = load i8*, i8** %12, align 8
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = load i32, i32* %4, align 4
  %190 = load i8**, i8*** %5, align 8
  %191 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %192 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_set to i32 (i32, i8**, i32*, ...)*)(i32 %189, i8** %190, i32* %191)
  store i32 %192, i32* %15, align 4
  br label %341

193:                                              ; preds = %184
  %194 = load i8*, i8** %12, align 8
  %195 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = load i32, i32* %4, align 4
  %199 = load i8**, i8*** %5, align 8
  %200 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %201 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_replace to i32 (i32, i8**, i32*, ...)*)(i32 %198, i8** %199, i32* %200)
  store i32 %201, i32* %15, align 4
  br label %341

202:                                              ; preds = %193
  %203 = load i8*, i8** %12, align 8
  %204 = call i32 @strcmp(i8* %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = load i32, i32* %4, align 4
  %208 = load i8**, i8*** %5, align 8
  %209 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %210 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_add to i32 (i32, i8**, i32*, ...)*)(i32 %207, i8** %208, i32* %209)
  store i32 %210, i32* %15, align 4
  br label %341

211:                                              ; preds = %202
  %212 = load i8*, i8** %12, align 8
  %213 = call i32 @strcmp(i8* %212, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %211
  %216 = load i32, i32* %4, align 4
  %217 = load i8**, i8*** %5, align 8
  %218 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %219 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_rau to i32 (i32, i8**, i32*, ...)*)(i32 %216, i8** %217, i32* %218)
  store i32 %219, i32* %15, align 4
  br label %341

220:                                              ; preds = %211
  %221 = load i8*, i8** %12, align 8
  %222 = call i32 @strcmp(i8* %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %220
  %225 = load i32, i32* %4, align 4
  %226 = load i8**, i8*** %5, align 8
  %227 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %228 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_incr to i32 (i32, i8**, i32*, ...)*)(i32 %225, i8** %226, i32* %227)
  store i32 %228, i32* %15, align 4
  br label %341

229:                                              ; preds = %220
  %230 = load i8*, i8** %12, align 8
  %231 = call i32 @strcmp(i8* %230, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %229
  %234 = load i32, i32* %4, align 4
  %235 = load i8**, i8*** %5, align 8
  %236 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %237 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_decr to i32 (i32, i8**, i32*, ...)*)(i32 %234, i8** %235, i32* %236)
  store i32 %237, i32* %15, align 4
  br label %341

238:                                              ; preds = %229
  %239 = load i8*, i8** %12, align 8
  %240 = call i32 @strcmp(i8* %239, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  %243 = load i32, i32* %4, align 4
  %244 = load i8**, i8*** %5, align 8
  %245 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %246 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_append to i32 (i32, i8**, i32*, ...)*)(i32 %243, i8** %244, i32* %245)
  store i32 %246, i32* %15, align 4
  br label %341

247:                                              ; preds = %238
  %248 = load i8*, i8** %12, align 8
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %247
  %252 = load i32, i32* %4, align 4
  %253 = load i8**, i8*** %5, align 8
  %254 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %255 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_prepend to i32 (i32, i8**, i32*, ...)*)(i32 %252, i8** %253, i32* %254)
  store i32 %255, i32* %15, align 4
  br label %341

256:                                              ; preds = %247
  %257 = load i8*, i8** %12, align 8
  %258 = call i32 @strcmp(i8* %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %256
  %261 = load i32, i32* %4, align 4
  %262 = load i8**, i8*** %5, align 8
  %263 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %264 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_delete to i32 (i32, i8**, i32*, ...)*)(i32 %261, i8** %262, i32* %263)
  store i32 %264, i32* %15, align 4
  br label %341

265:                                              ; preds = %256
  %266 = load i8*, i8** %12, align 8
  %267 = call i32 @strcmp(i8* %266, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %265
  %270 = load i32, i32* %4, align 4
  %271 = load i8**, i8*** %5, align 8
  %272 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %273 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_lock to i32 (i32, i8**, i32*, ...)*)(i32 %270, i8** %271, i32* %272)
  store i32 %273, i32* %15, align 4
  br label %341

274:                                              ; preds = %265
  %275 = load i8*, i8** %12, align 8
  %276 = call i32 @strcmp(i8* %275, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %274
  %279 = load i32, i32* %4, align 4
  %280 = load i8**, i8*** %5, align 8
  %281 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %282 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_unlock to i32 (i32, i8**, i32*, ...)*)(i32 %279, i8** %280, i32* %281)
  store i32 %282, i32* %15, align 4
  br label %341

283:                                              ; preds = %274
  %284 = load i8*, i8** %12, align 8
  %285 = call i32 @strcmp(i8* %284, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %283
  %288 = load i32, i32* %4, align 4
  %289 = load i8**, i8*** %5, align 8
  %290 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %291 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_unlockall to i32 (i32, i8**, i32*, ...)*)(i32 %288, i8** %289, i32* %290)
  store i32 %291, i32* %15, align 4
  br label %341

292:                                              ; preds = %283
  %293 = load i8*, i8** %12, align 8
  %294 = call i32 @strcmp(i8* %293, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %292
  %297 = load i32, i32* %4, align 4
  %298 = load i8**, i8*** %5, align 8
  %299 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %300 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_flush to i32 (i32, i8**, i32*, ...)*)(i32 %297, i8** %298, i32* %299)
  store i32 %300, i32* %15, align 4
  br label %341

301:                                              ; preds = %292
  %302 = load i8*, i8** %12, align 8
  %303 = call i32 @strcmp(i8* %302, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %301
  %306 = load i32, i32* %4, align 4
  %307 = load i8**, i8*** %5, align 8
  %308 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %309 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_stat to i32 (i32, i8**, i32*, ...)*)(i32 %306, i8** %307, i32* %308)
  store i32 %309, i32* %15, align 4
  br label %341

310:                                              ; preds = %301
  %311 = load i8*, i8** %12, align 8
  %312 = call i32 @strcmp(i8* %311, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %310
  %315 = load i32, i32* %4, align 4
  %316 = load i8**, i8*** %5, align 8
  %317 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %318 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_keys to i32 (i32, i8**, i32*, ...)*)(i32 %315, i8** %316, i32* %317)
  store i32 %318, i32* %15, align 4
  br label %341

319:                                              ; preds = %310
  %320 = load i8*, i8** %12, align 8
  %321 = call i32 @strcmp(i8* %320, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %319
  %324 = load i32, i32* %4, align 4
  %325 = load i8**, i8*** %5, align 8
  %326 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %327 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_version to i32 (i32, i8**, i32*, ...)*)(i32 %324, i8** %325, i32* %326)
  store i32 %327, i32* %15, align 4
  br label %341

328:                                              ; preds = %319
  %329 = load i8*, i8** %12, align 8
  %330 = call i32 @strcmp(i8* %329, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %328
  %333 = load i32, i32* %4, align 4
  %334 = load i8**, i8*** %5, align 8
  %335 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %336 = call i32 (i32, i8**, i32*, ...) bitcast (i32 (...)* @cmd_quit to i32 (i32, i8**, i32*, ...)*)(i32 %333, i8** %334, i32* %335)
  store i32 %336, i32* %15, align 4
  br label %341

337:                                              ; preds = %328
  %338 = load i32, i32* @stderr, align 4
  %339 = load i8*, i8** %12, align 8
  %340 = call i32 (i32, i8*, ...) @fprintf(i32 %338, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i8* %339)
  br label %341

341:                                              ; preds = %337, %332, %323, %314, %305, %296, %287, %278, %269, %260, %251, %242, %233, %224, %215, %206, %197, %188, %179, %170, %161, %152, %143, %134, %125, %116
  %342 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %343 = call i32 @yrmcds_close(i32* %342)
  %344 = load i32, i32* %15, align 4
  store i32 %344, i32* %3, align 4
  br label %345

345:                                              ; preds = %341, %67, %61, %59, %57, %48, %38
  %346 = load i32, i32* %3, align 4
  ret i32 %346
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @version(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @yrmcds_connect(i32*, i8*, i32) #1

declare dso_local i32 @CHECK_ERROR(i64) #1

declare dso_local i64 @yrmcds_text_mode(i32*) #1

declare dso_local i64 @yrmcds_set_compression(i32*, i64) #1

declare dso_local i32 @yrmcds_close(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @cmd_noop(...) #1

declare dso_local i32 @cmd_get(...) #1

declare dso_local i32 @cmd_getk(...) #1

declare dso_local i32 @cmd_gat(...) #1

declare dso_local i32 @cmd_gatk(...) #1

declare dso_local i32 @cmd_lag(...) #1

declare dso_local i32 @cmd_lagk(...) #1

declare dso_local i32 @cmd_touch(...) #1

declare dso_local i32 @cmd_set(...) #1

declare dso_local i32 @cmd_replace(...) #1

declare dso_local i32 @cmd_add(...) #1

declare dso_local i32 @cmd_rau(...) #1

declare dso_local i32 @cmd_incr(...) #1

declare dso_local i32 @cmd_decr(...) #1

declare dso_local i32 @cmd_append(...) #1

declare dso_local i32 @cmd_prepend(...) #1

declare dso_local i32 @cmd_delete(...) #1

declare dso_local i32 @cmd_lock(...) #1

declare dso_local i32 @cmd_unlock(...) #1

declare dso_local i32 @cmd_unlockall(...) #1

declare dso_local i32 @cmd_flush(...) #1

declare dso_local i32 @cmd_stat(...) #1

declare dso_local i32 @cmd_keys(...) #1

declare dso_local i32 @cmd_version(...) #1

declare dso_local i32 @cmd_quit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
