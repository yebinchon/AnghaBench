; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_targ_prepare_search_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_targ_prepare_search_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@targ_extra = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"search(\00", align 1
@is_search = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"target%*u_%*d%n(\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"prices%*u%n(\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ad_\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ad_clicks%*u%n\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ad_ctrsump%*u%n\00", align 1
@Q_limit = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"ad_ctr%*u%n\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ad_disable%*u%n\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ad_enable%*u%n\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"ad_enable%*u_%*d%n\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"ad_limited_views%*u,%*u%n\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"ad_money%*u%n\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"ad_sump\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"ad_sump%*u%n\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"ad_setctrsump\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"ad_setctrsump%*u:%*d,%*d,%*d,%*d,%*d%n\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"ad_setsump\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"ad_setsump%*u:%*d,%*d,%*d%n\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"ad_setctr\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"ad_setctr%*u:%*d,%*d%n\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"ad_setaud\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"ad_setaud%*u:%*d%n\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"ad_sites\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"ad_sites%*u,%*u%n\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"ad_views%*u%n\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"deletegroup\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"deletegroup%*u%n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @targ_prepare_search_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targ_prepare_search_query(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 1, i32* @targ_extra, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* @is_search, align 4
  store i32 7, i32* %6, align 4
  br label %193

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @sscanf(i8* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 7
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 40
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %192

30:                                               ; preds = %19, %16, %12
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @sscanf(i8* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %35, 7
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 40
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %191

48:                                               ; preds = %37, %34, %30
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @strncmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %181, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  switch i32 %56, label %160 [
    i32 99, label %57
    i32 100, label %83
    i32 101, label %86
    i32 108, label %103
    i32 109, label %106
    i32 115, label %109
    i32 118, label %157
  ]

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 108
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %4, align 8
  %65 = call i64 @sscanf(i8* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  br label %82

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  %68 = icmp sge i32 %67, 7
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 6
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 115
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i8*, i8** %4, align 8
  %77 = call i64 @sscanf(i8* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %7)
  store i32 13, i32* @Q_limit, align 4
  br label %81

78:                                               ; preds = %69, %66
  %79 = load i8*, i8** %4, align 8
  %80 = call i64 @sscanf(i8* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %7)
  store i32 4, i32* @Q_limit, align 4
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %63
  br label %160

83:                                               ; preds = %52
  %84 = load i8*, i8** %4, align 8
  %85 = call i64 @sscanf(i8* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32* %7)
  br label %160

86:                                               ; preds = %52
  %87 = load i8*, i8** %4, align 8
  %88 = call i64 @sscanf(i8* %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32* %7)
  %89 = load i32, i32* %7, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 95
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  store i32 -1, i32* %7, align 4
  %100 = load i8*, i8** %4, align 8
  %101 = call i64 @sscanf(i8* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32* %7)
  br label %102

102:                                              ; preds = %99, %91, %86
  br label %160

103:                                              ; preds = %52
  %104 = load i8*, i8** %4, align 8
  %105 = call i64 @sscanf(i8* %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32* %7)
  br label %160

106:                                              ; preds = %52
  %107 = load i8*, i8** %4, align 8
  %108 = call i64 @sscanf(i8* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32* %7)
  br label %160

109:                                              ; preds = %52
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 @strncmp(i8* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 7)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = load i8*, i8** %4, align 8
  %115 = call i64 @sscanf(i8* %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32* %7)
  store i32 9, i32* @Q_limit, align 4
  br label %156

116:                                              ; preds = %109
  %117 = load i8*, i8** %4, align 8
  %118 = call i32 @strncmp(i8* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 13)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load i8*, i8** %4, align 8
  %122 = call i64 @sscanf(i8* %121, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32* %7)
  br label %155

123:                                              ; preds = %116
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 @strncmp(i8* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 10)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = load i8*, i8** %4, align 8
  %129 = call i64 @sscanf(i8* %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32* %7)
  br label %154

130:                                              ; preds = %123
  %131 = load i8*, i8** %4, align 8
  %132 = call i32 @strncmp(i8* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 9)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = load i8*, i8** %4, align 8
  %136 = call i64 @sscanf(i8* %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32* %7)
  br label %153

137:                                              ; preds = %130
  %138 = load i8*, i8** %4, align 8
  %139 = call i32 @strncmp(i8* %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 9)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = load i8*, i8** %4, align 8
  %143 = call i64 @sscanf(i8* %142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i32* %7)
  br label %152

144:                                              ; preds = %137
  %145 = load i8*, i8** %4, align 8
  %146 = call i32 @strncmp(i8* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 8)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = load i8*, i8** %4, align 8
  %150 = call i64 @sscanf(i8* %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32* %7)
  br label %151

151:                                              ; preds = %148, %144
  br label %152

152:                                              ; preds = %151, %141
  br label %153

153:                                              ; preds = %152, %134
  br label %154

154:                                              ; preds = %153, %127
  br label %155

155:                                              ; preds = %154, %120
  br label %156

156:                                              ; preds = %155, %113
  br label %160

157:                                              ; preds = %52
  %158 = load i8*, i8** %4, align 8
  %159 = call i64 @sscanf(i8* %158, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32* %7)
  br label %160

160:                                              ; preds = %52, %157, %156, %106, %103, %102, %83, %82
  %161 = load i32, i32* %7, align 4
  %162 = icmp sle i32 %161, 0
  br i1 %162, label %179, label %163

163:                                              ; preds = %160
  %164 = load i8*, i8** %4, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %163
  %172 = load i8*, i8** %4, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 35
  br i1 %178, label %179, label %180

179:                                              ; preds = %171, %160
  store i32 -1, i32* %3, align 4
  br label %284

180:                                              ; preds = %171, %163
  store i32 3, i32* %6, align 4
  br label %190

181:                                              ; preds = %48
  %182 = load i8*, i8** %4, align 8
  %183 = call i32 @strncmp(i8* %182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 11)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %181
  %186 = load i8*, i8** %4, align 8
  %187 = call i64 @sscanf(i8* %186, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i32* %7)
  store i32 3, i32* %6, align 4
  br label %189

188:                                              ; preds = %181
  store i32 -1, i32* %3, align 4
  br label %284

189:                                              ; preds = %185
  br label %190

190:                                              ; preds = %189, %180
  br label %191

191:                                              ; preds = %190, %45
  br label %192

192:                                              ; preds = %191, %27
  br label %193

193:                                              ; preds = %192, %11
  %194 = load i32, i32* %7, align 4
  %195 = icmp sle i32 %194, 0
  br i1 %195, label %196, label %277

196:                                              ; preds = %193
  %197 = load i32, i32* %5, align 4
  %198 = sub nsw i32 %197, 2
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %262, %196
  %200 = load i32, i32* %6, align 4
  %201 = icmp sgt i32 %200, 7
  br i1 %201, label %202, label %260

202:                                              ; preds = %199
  %203 = load i8*, i8** %4, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp sge i32 %208, 48
  br i1 %209, label %210, label %218

210:                                              ; preds = %202
  %211 = load i8*, i8** %4, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp sle i32 %216, 57
  br i1 %217, label %258, label %218

218:                                              ; preds = %210, %202
  %219 = load i8*, i8** %4, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 37
  br i1 %225, label %258, label %226

226:                                              ; preds = %218
  %227 = load i8*, i8** %4, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 105
  br i1 %233, label %258, label %234

234:                                              ; preds = %226
  %235 = load i8*, i8** %4, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %235, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %240, 73
  br i1 %241, label %258, label %242

242:                                              ; preds = %234
  %243 = load i8*, i8** %4, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 114
  br i1 %249, label %258, label %250

250:                                              ; preds = %242
  %251 = load i8*, i8** %4, align 8
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp eq i32 %256, 82
  br label %258

258:                                              ; preds = %250, %242, %234, %226, %218, %210
  %259 = phi i1 [ true, %242 ], [ true, %234 ], [ true, %226 ], [ true, %218 ], [ true, %210 ], [ %257, %250 ]
  br label %260

260:                                              ; preds = %258, %199
  %261 = phi i1 [ false, %199 ], [ %259, %258 ]
  br i1 %261, label %262, label %265

262:                                              ; preds = %260
  %263 = load i32, i32* %6, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %6, align 4
  br label %199

265:                                              ; preds = %260
  %266 = load i8*, i8** %4, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp ne i32 %271, 35
  br i1 %272, label %273, label %276

273:                                              ; preds = %265
  %274 = load i32, i32* %5, align 4
  %275 = sub nsw i32 %274, 1
  store i32 %275, i32* %6, align 4
  br label %276

276:                                              ; preds = %273, %265
  br label %279

277:                                              ; preds = %193
  %278 = load i32, i32* %7, align 4
  store i32 %278, i32* %6, align 4
  br label %279

279:                                              ; preds = %277, %276
  %280 = load i32, i32* %7, align 4
  %281 = icmp sle i32 %280, 0
  %282 = zext i1 %281 to i32
  store i32 %282, i32* @targ_extra, align 4
  %283 = load i32, i32* %6, align 4
  store i32 %283, i32* %3, align 4
  br label %284

284:                                              ; preds = %279, %188, %179
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
