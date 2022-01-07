; ModuleID = '/home/carl/AnghaBench/jq/src/extr_lexer.c_yy_get_next_buffer.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_lexer.c_yy_get_next_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i64, i32, i32, i64 }
%struct.yyguts_t = type { i8*, i8*, i32 }

@YY_CURRENT_BUFFER_LVALUE = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@YY_MORE_ADJ = common dso_local global i32 0, align 4
@EOB_ACT_END_OF_FILE = common dso_local global i32 0, align 4
@EOB_ACT_LAST_MATCH = common dso_local global i32 0, align 4
@YY_BUFFER_EOF_PENDING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@YY_READ_BUF_SIZE = common dso_local global i32 0, align 4
@yyin = common dso_local global i32 0, align 4
@EOB_ACT_CONTINUE_SCAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"out of dynamic memory in yy_get_next_buffer()\00", align 1
@YY_END_OF_BUFFER_CHAR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @yy_get_next_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yy_get_next_buffer(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.yyguts_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = inttoptr i64 %15 to %struct.yyguts_t*
  store %struct.yyguts_t* %16, %struct.yyguts_t** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %21 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %24 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %30 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %28, i64 %33
  %35 = icmp ugt i8* %25, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = call i32 @YY_FATAL_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %45 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %48 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %46 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = load i32, i32* @YY_MORE_ADJ, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %52, %54
  %56 = icmp eq i64 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* @EOB_ACT_END_OF_FILE, align 4
  store i32 %58, i32* %2, align 4
  br label %302

59:                                               ; preds = %43
  %60 = load i32, i32* @EOB_ACT_LAST_MATCH, align 4
  store i32 %60, i32* %2, align 4
  br label %302

61:                                               ; preds = %38
  %62 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %63 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %66 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %64 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sub nsw i64 %70, 1
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %83, %61
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %6, align 8
  %80 = load i8, i8* %78, align 1
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  store i8 %80, i8* %81, align 1
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %73

86:                                               ; preds = %73
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @YY_BUFFER_EOF_PENDING, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %94 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %93, i32 0, i32 2
  store i32 0, i32* %94, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i32 0, i32* %96, align 8
  br label %205

97:                                               ; preds = %86
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %167, %97
  %105 = load i32, i32* %10, align 4
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %182

107:                                              ; preds = %104
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  store %struct.TYPE_3__* %108, %struct.TYPE_3__** %11, align 8
  %109 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %110 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = ptrtoint i8* %111 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %12, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %157

123:                                              ; preds = %107
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %126, 2
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp sle i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %123
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = sdiv i32 %133, 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %144

139:                                              ; preds = %123
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %142, 2
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %139, %130
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 2
  %152 = load i64, i64* %3, align 8
  %153 = call i64 @yyrealloc(i8* %147, i32 %151, i64 %152)
  %154 = inttoptr i64 %153 to i8*
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  br label %160

157:                                              ; preds = %107
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  store i8* null, i8** %159, align 8
  br label %160

160:                                              ; preds = %157, %144
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %160
  %166 = call i32 @YY_FATAL_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %160
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %175 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %174, i32 0, i32 1
  store i8* %173, i8** %175, align 8
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %7, align 4
  %180 = sub nsw i32 %178, %179
  %181 = sub nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  br label %104

182:                                              ; preds = %104
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @YY_READ_BUF_SIZE, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* @YY_READ_BUF_SIZE, align 4
  store i32 %187, i32* %10, align 4
  br label %188

188:                                              ; preds = %186, %182
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %196 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @YY_INPUT(i8* %194, i32 %197, i32 %198)
  %200 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %201 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 8
  br label %205

205:                                              ; preds = %188, %92
  %206 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %207 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %205
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @YY_MORE_ADJ, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = load i32, i32* @EOB_ACT_END_OF_FILE, align 4
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* @yyin, align 4
  %217 = load i64, i64* %3, align 8
  %218 = call i32 @yyrestart(i32 %216, i64 %217)
  br label %224

219:                                              ; preds = %210
  %220 = load i32, i32* @EOB_ACT_LAST_MATCH, align 4
  store i32 %220, i32* %9, align 4
  %221 = load i64, i64* @YY_BUFFER_EOF_PENDING, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 2
  store i64 %221, i64* %223, align 8
  br label %224

224:                                              ; preds = %219, %214
  br label %227

225:                                              ; preds = %205
  %226 = load i32, i32* @EOB_ACT_CONTINUE_SCAN, align 4
  store i32 %226, i32* %9, align 4
  br label %227

227:                                              ; preds = %225, %224
  %228 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %229 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %230, %231
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = icmp sgt i32 %232, %235
  br i1 %236, label %237, label %268

237:                                              ; preds = %227
  %238 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %239 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = add nsw i32 %240, %241
  %243 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %244 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = ashr i32 %245, 1
  %247 = add nsw i32 %242, %246
  store i32 %247, i32* %14, align 4
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = load i64, i64* %3, align 8
  %253 = call i64 @yyrealloc(i8* %250, i32 %251, i64 %252)
  %254 = inttoptr i64 %253 to i8*
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  store i8* %254, i8** %256, align 8
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %263, label %261

261:                                              ; preds = %237
  %262 = call i32 @YY_FATAL_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %263

263:                                              ; preds = %261, %237
  %264 = load i32, i32* %14, align 4
  %265 = sub nsw i32 %264, 2
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 4
  store i32 %265, i32* %267, align 4
  br label %268

268:                                              ; preds = %263, %227
  %269 = load i32, i32* %7, align 4
  %270 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %271 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %272, %269
  store i32 %273, i32* %271, align 8
  %274 = load i8*, i8** @YY_END_OF_BUFFER_CHAR, align 8
  %275 = ptrtoint i8* %274 to i8
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %280 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %278, i64 %282
  store i8 %275, i8* %283, align 1
  %284 = load i8*, i8** @YY_END_OF_BUFFER_CHAR, align 8
  %285 = ptrtoint i8* %284 to i8
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %290 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = add nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, i8* %288, i64 %293
  store i8 %285, i8* %294, align 1
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 0
  %299 = load %struct.yyguts_t*, %struct.yyguts_t** %4, align 8
  %300 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %299, i32 0, i32 0
  store i8* %298, i8** %300, align 8
  %301 = load i32, i32* %9, align 4
  store i32 %301, i32* %2, align 4
  br label %302

302:                                              ; preds = %268, %59, %57
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local i32 @YY_FATAL_ERROR(i8*) #1

declare dso_local i64 @yyrealloc(i8*, i32, i64) #1

declare dso_local i32 @YY_INPUT(i8*, i32, i32) #1

declare dso_local i32 @yyrestart(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
