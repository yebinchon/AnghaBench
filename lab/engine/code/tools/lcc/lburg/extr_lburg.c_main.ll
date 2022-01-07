; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/lburg/extr_lburg.c_main.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/lburg/extr_lburg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32*, %struct.TYPE_7__* }
%struct.block = type { %struct.block* }

@.str = private unnamed_addr constant [3 x i8] c"-T\00", align 1
@Tflag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@prefix = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"usage: %s [-T | -p prefix]... [ [ input ] output ] \0A\00", align 1
@infp = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s: can't read `%s'\0A\00", align 1
@outfp = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"%s: can't write `%s'\0A\00", align 1
@start = common dso_local global i64 0, align 8
@nts = common dso_local global %struct.TYPE_7__* null, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"undefined nonterminal `%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"can't reach nonterminal `%s'\0A\00", align 1
@ntnumber = common dso_local global i32 0, align 4
@rules = common dso_local global i32 0, align 4
@nrules = common dso_local global i32 0, align 4
@terms = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@memlist = common dso_local global %struct.block* null, align 8
@errcnt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.block*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  br label %10

10:                                               ; preds = %168, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %171

14:                                               ; preds = %10
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* @Tflag, align 4
  br label %167

23:                                               ; preds = %14
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %23
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  store i8* %47, i8** @prefix, align 8
  br label %166

48:                                               ; preds = %31, %23
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strncmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %62, i64 %65
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** @prefix, align 8
  br label %165

68:                                               ; preds = %56, %48
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 45
  br i1 %76, label %77, label %93

77:                                               ; preds = %68
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %77
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, i8*, ...) @yyerror(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  %92 = call i32 @exit(i32 1) #3
  unreachable

93:                                               ; preds = %77, %68
  %94 = load i32*, i32** @infp, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %128

96:                                               ; preds = %93
  %97 = load i8**, i8*** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32*, i32** @stdin, align 8
  store i32* %105, i32** @infp, align 8
  br label %127

106:                                              ; preds = %96
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i8* @fopen(i8* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %113 = bitcast i8* %112 to i32*
  store i32* %113, i32** @infp, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %106
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i8**, i8*** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i8*, i8*, ...) @yyerror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %118, i8* %123)
  %125 = call i32 @exit(i32 1) #3
  unreachable

126:                                              ; preds = %106
  br label %127

127:                                              ; preds = %126, %104
  br label %163

128:                                              ; preds = %93
  %129 = load i32*, i32** @outfp, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %162

131:                                              ; preds = %128
  %132 = load i8**, i8*** %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @strcmp(i8* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = load i32*, i32** @stdout, align 8
  store i32* %140, i32** @outfp, align 8
  br label %141

141:                                              ; preds = %139, %131
  %142 = load i8**, i8*** %5, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i8* @fopen(i8* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %148 = bitcast i8* %147 to i32*
  store i32* %148, i32** @outfp, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %141
  %151 = load i8**, i8*** %5, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 0
  %153 = load i8*, i8** %152, align 8
  %154 = load i8**, i8*** %5, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i8*, i8*, ...) @yyerror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %153, i8* %158)
  %160 = call i32 @exit(i32 1) #3
  unreachable

161:                                              ; preds = %141
  br label %162

162:                                              ; preds = %161, %128
  br label %163

163:                                              ; preds = %162, %127
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164, %61
  br label %166

166:                                              ; preds = %165, %41
  br label %167

167:                                              ; preds = %166, %22
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %7, align 4
  br label %10

171:                                              ; preds = %10
  %172 = load i32*, i32** @infp, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i32*, i32** @stdin, align 8
  store i32* %175, i32** @infp, align 8
  br label %176

176:                                              ; preds = %174, %171
  %177 = load i32*, i32** @outfp, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i32*, i32** @stdout, align 8
  store i32* %180, i32** @outfp, align 8
  br label %181

181:                                              ; preds = %179, %176
  %182 = call i32 (...) @yyparse()
  %183 = load i64, i64* @start, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i64, i64* @start, align 8
  %187 = call i32 @ckreach(i64 %186)
  br label %188

188:                                              ; preds = %185, %181
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nts, align 8
  store %struct.TYPE_7__* %189, %struct.TYPE_7__** %8, align 8
  br label %190

190:                                              ; preds = %214, %188
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %192 = icmp ne %struct.TYPE_7__* %191, null
  br i1 %192, label %193, label %218

193:                                              ; preds = %190
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = icmp eq i32* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 (i8*, i8*, ...) @yyerror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %198, %193
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 (i8*, i8*, ...) @yyerror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %211)
  br label %213

213:                                              ; preds = %208, %203
  br label %214

214:                                              ; preds = %213
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  store %struct.TYPE_7__* %217, %struct.TYPE_7__** %8, align 8
  br label %190

218:                                              ; preds = %190
  %219 = call i32 (...) @emitheader()
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nts, align 8
  %221 = load i32, i32* @ntnumber, align 4
  %222 = call i32 @emitdefs(%struct.TYPE_7__* %220, i32 %221)
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nts, align 8
  %224 = load i32, i32* @ntnumber, align 4
  %225 = call i32 @emitstruct(%struct.TYPE_7__* %223, i32 %224)
  %226 = load i32, i32* @rules, align 4
  %227 = load i32, i32* @nrules, align 4
  %228 = call i32 @emitnts(i32 %226, i32 %227)
  %229 = load i32, i32* @rules, align 4
  %230 = call i32 @emitstring(i32 %229)
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nts, align 8
  %232 = call i32 @emitrule(%struct.TYPE_7__* %231)
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nts, align 8
  %234 = call i32 @emitclosure(%struct.TYPE_7__* %233)
  %235 = load i64, i64* @start, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %218
  %238 = load i32, i32* @terms, align 4
  %239 = load i64, i64* @start, align 8
  %240 = load i32, i32* @ntnumber, align 4
  %241 = call i32 @emitlabel(i32 %238, i64 %239, i32 %240)
  br label %242

242:                                              ; preds = %237, %218
  %243 = load i32, i32* @rules, align 4
  %244 = load i32, i32* @nrules, align 4
  %245 = call i32 @emitkids(i32 %243, i32 %244)
  %246 = load i32*, i32** @infp, align 8
  %247 = call i32 @feof(i32* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %260, label %249

249:                                              ; preds = %242
  br label %250

250:                                              ; preds = %255, %249
  %251 = load i32*, i32** @infp, align 8
  %252 = call i32 @getc(i32* %251)
  store i32 %252, i32* %6, align 4
  %253 = load i32, i32* @EOF, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %250
  %256 = load i32, i32* %6, align 4
  %257 = load i32*, i32** @outfp, align 8
  %258 = call i32 @putc(i32 %256, i32* %257)
  br label %250

259:                                              ; preds = %250
  br label %260

260:                                              ; preds = %259, %242
  br label %261

261:                                              ; preds = %264, %260
  %262 = load %struct.block*, %struct.block** @memlist, align 8
  %263 = icmp ne %struct.block* %262, null
  br i1 %263, label %264, label %271

264:                                              ; preds = %261
  %265 = load %struct.block*, %struct.block** @memlist, align 8
  %266 = getelementptr inbounds %struct.block, %struct.block* %265, i32 0, i32 0
  %267 = load %struct.block*, %struct.block** %266, align 8
  store %struct.block* %267, %struct.block** %9, align 8
  %268 = load %struct.block*, %struct.block** @memlist, align 8
  %269 = call i32 @free(%struct.block* %268)
  %270 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %270, %struct.block** @memlist, align 8
  br label %261

271:                                              ; preds = %261
  %272 = load i64, i64* @errcnt, align 8
  %273 = icmp sgt i64 %272, 0
  %274 = zext i1 %273 to i32
  ret i32 %274
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @yyerror(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @yyparse(...) #1

declare dso_local i32 @ckreach(i64) #1

declare dso_local i32 @emitheader(...) #1

declare dso_local i32 @emitdefs(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @emitstruct(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @emitnts(i32, i32) #1

declare dso_local i32 @emitstring(i32) #1

declare dso_local i32 @emitrule(%struct.TYPE_7__*) #1

declare dso_local i32 @emitclosure(%struct.TYPE_7__*) #1

declare dso_local i32 @emitlabel(i32, i64, i32) #1

declare dso_local i32 @emitkids(i32, i32) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i32 @free(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
