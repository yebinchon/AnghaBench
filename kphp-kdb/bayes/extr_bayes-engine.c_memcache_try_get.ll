; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-engine.c_memcache_try_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-engine.c_memcache_try_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"memcache_get: key='%s', key_len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@STATS_BUFF_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"set_spam\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"set_spam%d\00", align 1
@get = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"set_ham\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"set_ham%d\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"unset_spam\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"unset_spam%d\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"unset_ham\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"unset_ham%d\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"reset_spam\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"reset_spam%d\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"reset_ham\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"reset_ham%d\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"test_debug\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"test_debug%d\00", align 1
@buf = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [10 x i8] c"test_prob\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"test_prob%d\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%.6lf\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"test%d\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"spam\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"ham\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"black_list\00", align 1
@MAX_VALUE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_try_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %25 = load i32, i32* @INIT, align 4
  %26 = load i32, i32* @verbosity, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %3
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @eat_at(i8* %34, i32 %35, i8** %8, i32* %9)
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 5
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %39
  %44 = call i32 (...) @bayes_prepare_stats()
  store i32 %44, i32* %10, align 4
  %45 = load %struct.connection*, %struct.connection** %5, align 8
  %46 = load i8*, i8** @stats_buff, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i64, i64* @STATS_BUFF_SIZE, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %50, %52
  %54 = call i32 @prepare_stats(%struct.connection* %45, i8* %49, i64 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.connection*, %struct.connection** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** @stats_buff, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %58, %59
  %61 = sub nsw i32 %60, 1
  %62 = call i32 @return_one_key(%struct.connection* %55, i8* %56, i8* %57, i32 %61)
  store i32 0, i32* %4, align 4
  br label %321

63:                                               ; preds = %39, %33
  %64 = load i32, i32* %9, align 4
  %65 = icmp sge i32 %64, 8
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @strncmp(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @sscanf(i8* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %12)
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @get, align 4
  %76 = call i32 @RETURN(i32 %75, i32 0)
  br label %77

77:                                               ; preds = %74, %70
  %78 = load %struct.connection*, %struct.connection** %5, align 8
  %79 = call i32 @BYS_MSG(%struct.connection* %78)
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @do_bayes_set_spam(i32 %79, i32 %80)
  %82 = load i32, i32* @get, align 4
  %83 = call i32 @RETURN(i32 %82, i32 0)
  br label %84

84:                                               ; preds = %77, %66, %63
  %85 = load i32, i32* %9, align 4
  %86 = icmp sge i32 %85, 7
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @strncmp(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %87
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @sscanf(i8* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %13)
  %94 = icmp ne i32 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @get, align 4
  %97 = call i32 @RETURN(i32 %96, i32 0)
  br label %98

98:                                               ; preds = %95, %91
  %99 = load %struct.connection*, %struct.connection** %5, align 8
  %100 = call i32 @BYS_MSG(%struct.connection* %99)
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @do_bayes_set_ham(i32 %100, i32 %101)
  %103 = load i32, i32* @get, align 4
  %104 = call i32 @RETURN(i32 %103, i32 0)
  br label %105

105:                                              ; preds = %98, %87, %84
  %106 = load i32, i32* %9, align 4
  %107 = icmp sge i32 %106, 10
  br i1 %107, label %108, label %126

108:                                              ; preds = %105
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @strncmp(i8* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 10)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %108
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @sscanf(i8* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* %14)
  %115 = icmp ne i32 %114, 1
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* @get, align 4
  %118 = call i32 @RETURN(i32 %117, i32 0)
  br label %119

119:                                              ; preds = %116, %112
  %120 = load %struct.connection*, %struct.connection** %5, align 8
  %121 = call i32 @BYS_MSG(%struct.connection* %120)
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @do_bayes_unset_spam(i32 %121, i32 %122)
  %124 = load i32, i32* @get, align 4
  %125 = call i32 @RETURN(i32 %124, i32 0)
  br label %126

126:                                              ; preds = %119, %108, %105
  %127 = load i32, i32* %9, align 4
  %128 = icmp sge i32 %127, 9
  br i1 %128, label %129, label %147

129:                                              ; preds = %126
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 @strncmp(i8* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 9)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %147, label %133

133:                                              ; preds = %129
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 @sscanf(i8* %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* %15)
  %136 = icmp ne i32 %135, 1
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* @get, align 4
  %139 = call i32 @RETURN(i32 %138, i32 0)
  br label %140

140:                                              ; preds = %137, %133
  %141 = load %struct.connection*, %struct.connection** %5, align 8
  %142 = call i32 @BYS_MSG(%struct.connection* %141)
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @do_bayes_unset_ham(i32 %142, i32 %143)
  %145 = load i32, i32* @get, align 4
  %146 = call i32 @RETURN(i32 %145, i32 0)
  br label %147

147:                                              ; preds = %140, %129, %126
  %148 = load i32, i32* %9, align 4
  %149 = icmp sge i32 %148, 10
  br i1 %149, label %150, label %168

150:                                              ; preds = %147
  %151 = load i8*, i8** %8, align 8
  %152 = call i32 @strncmp(i8* %151, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 10)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %168, label %154

154:                                              ; preds = %150
  %155 = load i8*, i8** %8, align 8
  %156 = call i32 @sscanf(i8* %155, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32* %16)
  %157 = icmp ne i32 %156, 1
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* @get, align 4
  %160 = call i32 @RETURN(i32 %159, i32 0)
  br label %161

161:                                              ; preds = %158, %154
  %162 = load %struct.connection*, %struct.connection** %5, align 8
  %163 = call i32 @BYS_MSG(%struct.connection* %162)
  %164 = load i32, i32* %16, align 4
  %165 = call i32 @do_bayes_reset_spam(i32 %163, i32 %164)
  %166 = load i32, i32* @get, align 4
  %167 = call i32 @RETURN(i32 %166, i32 0)
  br label %168

168:                                              ; preds = %161, %150, %147
  %169 = load i32, i32* %9, align 4
  %170 = icmp sge i32 %169, 9
  br i1 %170, label %171, label %189

171:                                              ; preds = %168
  %172 = load i8*, i8** %8, align 8
  %173 = call i32 @strncmp(i8* %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 9)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %189, label %175

175:                                              ; preds = %171
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 @sscanf(i8* %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32* %17)
  %178 = icmp ne i32 %177, 1
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* @get, align 4
  %181 = call i32 @RETURN(i32 %180, i32 0)
  br label %182

182:                                              ; preds = %179, %175
  %183 = load %struct.connection*, %struct.connection** %5, align 8
  %184 = call i32 @BYS_MSG(%struct.connection* %183)
  %185 = load i32, i32* %17, align 4
  %186 = call i32 @do_bayes_reset_ham(i32 %184, i32 %185)
  %187 = load i32, i32* @get, align 4
  %188 = call i32 @RETURN(i32 %187, i32 0)
  br label %189

189:                                              ; preds = %182, %171, %168
  %190 = load i32, i32* %9, align 4
  %191 = icmp sge i32 %190, 9
  br i1 %191, label %192, label %217

192:                                              ; preds = %189
  %193 = load i8*, i8** %8, align 8
  %194 = call i32 @strncmp(i8* %193, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 10)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %217, label %196

196:                                              ; preds = %192
  %197 = load i8*, i8** %8, align 8
  %198 = call i32 @sscanf(i8* %197, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32* %18)
  %199 = icmp ne i32 %198, 1
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i32, i32* @get, align 4
  %202 = call i32 @RETURN(i32 %201, i32 0)
  br label %203

203:                                              ; preds = %200, %196
  %204 = load %struct.connection*, %struct.connection** %5, align 8
  %205 = call i32 @BYS_MSG(%struct.connection* %204)
  %206 = load i32, i32* %18, align 4
  %207 = load i8*, i8** @buf, align 8
  %208 = call i32 @bayes_is_spam_debug(i32 %205, i32 %206, i8* %207)
  %209 = load %struct.connection*, %struct.connection** %5, align 8
  %210 = load i8*, i8** %6, align 8
  %211 = load i8*, i8** @buf, align 8
  %212 = load i8*, i8** @buf, align 8
  %213 = call i32 @strlen(i8* %212)
  %214 = call i32 @return_one_key(%struct.connection* %209, i8* %210, i8* %211, i32 %213)
  %215 = load i32, i32* @get, align 4
  %216 = call i32 @RETURN(i32 %215, i32 0)
  br label %217

217:                                              ; preds = %203, %192, %189
  %218 = load i32, i32* %9, align 4
  %219 = icmp sge i32 %218, 9
  br i1 %219, label %220, label %256

220:                                              ; preds = %217
  %221 = load i8*, i8** %8, align 8
  %222 = call i32 @strncmp(i8* %221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 9)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %256, label %224

224:                                              ; preds = %220
  %225 = load i8*, i8** %8, align 8
  %226 = call i32 @sscanf(i8* %225, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32* %19)
  %227 = icmp ne i32 %226, 1
  br i1 %227, label %228, label %231

228:                                              ; preds = %224
  %229 = load i32, i32* @get, align 4
  %230 = call i32 @RETURN(i32 %229, i32 0)
  br label %231

231:                                              ; preds = %228, %224
  %232 = load %struct.connection*, %struct.connection** %5, align 8
  %233 = call i32 @BYS_MSG(%struct.connection* %232)
  %234 = load i32, i32* %19, align 4
  %235 = call double @bayes_is_spam_prob(i32 %233, i32 %234)
  store double %235, double* %20, align 8
  %236 = load double, double* %20, align 8
  %237 = fcmp oge double %236, -1.000000e-09
  br i1 %237, label %238, label %250

238:                                              ; preds = %231
  %239 = load i8*, i8** @buf, align 8
  %240 = load double, double* %20, align 8
  %241 = call i32 @sprintf(i8* %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), double %240)
  %242 = load %struct.connection*, %struct.connection** %5, align 8
  %243 = load i8*, i8** %6, align 8
  %244 = load i8*, i8** @buf, align 8
  %245 = load i8*, i8** @buf, align 8
  %246 = call i32 @strlen(i8* %245)
  %247 = call i32 @return_one_key(%struct.connection* %242, i8* %243, i8* %244, i32 %246)
  %248 = load i32, i32* @get, align 4
  %249 = call i32 @RETURN(i32 %248, i32 0)
  br label %250

250:                                              ; preds = %238, %231
  %251 = load double, double* %20, align 8
  %252 = fptosi double %251 to i32
  store i32 %252, i32* %21, align 4
  %253 = load i32, i32* @get, align 4
  %254 = load i32, i32* %21, align 4
  %255 = call i32 @RETURN(i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %250, %220, %217
  %257 = load i32, i32* %9, align 4
  %258 = icmp sge i32 %257, 4
  br i1 %258, label %259, label %295

259:                                              ; preds = %256
  %260 = load i8*, i8** %8, align 8
  %261 = call i32 @strncmp(i8* %260, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 4)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %295, label %263

263:                                              ; preds = %259
  %264 = load i8*, i8** %8, align 8
  %265 = call i32 @sscanf(i8* %264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32* %22)
  %266 = icmp ne i32 %265, 1
  br i1 %266, label %267, label %270

267:                                              ; preds = %263
  %268 = load i32, i32* @get, align 4
  %269 = call i32 @RETURN(i32 %268, i32 0)
  br label %270

270:                                              ; preds = %267, %263
  %271 = load %struct.connection*, %struct.connection** %5, align 8
  %272 = call i32 @BYS_MSG(%struct.connection* %271)
  %273 = load i32, i32* %22, align 4
  %274 = call i32 @bayes_is_spam(i32 %272, i32 %273)
  store i32 %274, i32* %23, align 4
  %275 = load i32, i32* %23, align 4
  %276 = icmp sge i32 %275, 0
  br i1 %276, label %277, label %291

277:                                              ; preds = %270
  %278 = load %struct.connection*, %struct.connection** %5, align 8
  %279 = load i8*, i8** %6, align 8
  %280 = load i32, i32* %23, align 4
  %281 = icmp ne i32 %280, 0
  %282 = zext i1 %281 to i64
  %283 = select i1 %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)
  %284 = load i32, i32* %23, align 4
  %285 = icmp ne i32 %284, 0
  %286 = zext i1 %285 to i64
  %287 = select i1 %285, i32 4, i32 3
  %288 = call i32 @return_one_key(%struct.connection* %278, i8* %279, i8* %283, i32 %287)
  %289 = load i32, i32* @get, align 4
  %290 = call i32 @RETURN(i32 %289, i32 0)
  br label %291

291:                                              ; preds = %277, %270
  %292 = load i32, i32* @get, align 4
  %293 = load i32, i32* %23, align 4
  %294 = call i32 @RETURN(i32 %292, i32 %293)
  br label %295

295:                                              ; preds = %291, %259, %256
  %296 = load i32, i32* %9, align 4
  %297 = icmp sge i32 %296, 10
  br i1 %297, label %298, label %318

298:                                              ; preds = %295
  %299 = load i8*, i8** %8, align 8
  %300 = call i32 @strncmp(i8* %299, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 10)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %318, label %302

302:                                              ; preds = %298
  %303 = load i8*, i8** @buf, align 8
  %304 = load i32, i32* @MAX_VALUE_LEN, align 4
  %305 = call i32 @black_list_get(i8* %303, i32 %304)
  store i32 %305, i32* %24, align 4
  %306 = load i32, i32* %24, align 4
  %307 = icmp sge i32 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %302
  %309 = load %struct.connection*, %struct.connection** %5, align 8
  %310 = load i8*, i8** %6, align 8
  %311 = load i8*, i8** @buf, align 8
  %312 = load i8*, i8** @buf, align 8
  %313 = call i32 @strlen(i8* %312)
  %314 = call i32 @return_one_key(%struct.connection* %309, i8* %310, i8* %311, i32 %313)
  br label %315

315:                                              ; preds = %308, %302
  %316 = load i32, i32* @get, align 4
  %317 = call i32 @RETURN(i32 %316, i32 0)
  br label %318

318:                                              ; preds = %315, %298, %295
  %319 = load i32, i32* @get, align 4
  %320 = call i32 @RETURN(i32 %319, i32 0)
  br label %321

321:                                              ; preds = %318, %43
  %322 = load i32, i32* %4, align 4
  ret i32 %322
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @bayes_prepare_stats(...) #1

declare dso_local i32 @prepare_stats(%struct.connection*, i8*, i64) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i32 @do_bayes_set_spam(i32, i32) #1

declare dso_local i32 @BYS_MSG(%struct.connection*) #1

declare dso_local i32 @do_bayes_set_ham(i32, i32) #1

declare dso_local i32 @do_bayes_unset_spam(i32, i32) #1

declare dso_local i32 @do_bayes_unset_ham(i32, i32) #1

declare dso_local i32 @do_bayes_reset_spam(i32, i32) #1

declare dso_local i32 @do_bayes_reset_ham(i32, i32) #1

declare dso_local i32 @bayes_is_spam_debug(i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local double @bayes_is_spam_prob(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, double) #1

declare dso_local i32 @bayes_is_spam(i32, i32) #1

declare dso_local i32 @black_list_get(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
