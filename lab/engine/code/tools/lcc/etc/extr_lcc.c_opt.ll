; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/etc/extr_lcc.c_opt.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/etc/extr_lcc.c_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@clist = common dso_local global i32 0, align 4
@alist = common dso_local global i32 0, align 4
@llist = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"%s: %s ignored\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"-tempdir=\00", align 1
@tempdir = common dso_local global i8* null, align 8
@opt.path = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"-B overwrites earlier option\00", align 1
@com = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"win32\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"rcc\00", align 1
@suffixes = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"missing directory in -B option\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@opt.printed = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"-static\00", align 1
@Sflag = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"-g2\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"-g3\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-N\00", align 1
@Eflag = common dso_local global i64 0, align 8
@cflag = common dso_local global i64 0, align 8
@cpp = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"gcc-cpp\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"-nostdinc\00", align 1
@include = common dso_local global i32* null, align 8
@ilist = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@rcsid = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 1
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  switch i32 %6, label %171 [
    i32 87, label %7
    i32 100, label %70
    i32 116, label %76
    i32 112, label %88
    i32 68, label %102
    i32 85, label %102
    i32 73, label %102
    i32 66, label %106
    i32 104, label %144
    i32 63, label %149
    i32 115, label %156
  ]

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 2
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %7
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 3
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %13
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %64 [
    i32 111, label %24
    i32 112, label %31
    i32 102, label %36
    i32 97, label %50
    i32 108, label %55
  ]

24:                                               ; preds = %19
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  %27 = call i32 @option(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %302

30:                                               ; preds = %24
  br label %64

31:                                               ; preds = %19
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i32, i32* @plist, align 4
  %35 = call i32 @append(i8* %33, i32 %34)
  store i32 %35, i32* @plist, align 4
  br label %302

36:                                               ; preds = %19
  %37 = load i8*, i8** %2, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = call i32 @option(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41, %36
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i32, i32* @clist, align 4
  %48 = call i32 @append(i8* %46, i32 %47)
  store i32 %48, i32* @clist, align 4
  br label %302

49:                                               ; preds = %41
  br label %64

50:                                               ; preds = %19
  %51 = load i8*, i8** %2, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  %53 = load i32, i32* @alist, align 4
  %54 = call i32 @append(i8* %52, i32 %53)
  store i32 %54, i32* @alist, align 4
  br label %302

55:                                               ; preds = %19
  %56 = load i8*, i8** %2, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 3
  %58 = load i32*, i32** @llist, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @append(i8* %57, i32 %60)
  %62 = load i32*, i32** @llist, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %61, i32* %63, align 4
  br label %302

64:                                               ; preds = %19, %49, %30
  br label %65

65:                                               ; preds = %64, %13, %7
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** @progname, align 8
  %68 = load i8*, i8** %2, align 8
  %69 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %67, i8* %68)
  br label %302

70:                                               ; preds = %1
  %71 = load i8*, i8** %2, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8 115, i8* %72, align 1
  %73 = load i8*, i8** %2, align 8
  %74 = load i32, i32* @clist, align 4
  %75 = call i32 @append(i8* %73, i32 %74)
  store i32 %75, i32* @clist, align 4
  br label %302

76:                                               ; preds = %1
  %77 = load i8*, i8** %2, align 8
  %78 = call i32 @strncmp(i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** %2, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 9
  store i8* %82, i8** @tempdir, align 8
  br label %87

83:                                               ; preds = %76
  %84 = load i8*, i8** %2, align 8
  %85 = load i32, i32* @clist, align 4
  %86 = call i32 @append(i8* %84, i32 %85)
  store i32 %86, i32* @clist, align 4
  br label %87

87:                                               ; preds = %83, %80
  br label %302

88:                                               ; preds = %1
  %89 = load i8*, i8** %2, align 8
  %90 = call i32 @option(i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i8*, i8** %2, align 8
  %94 = load i32, i32* @clist, align 4
  %95 = call i32 @append(i8* %93, i32 %94)
  store i32 %95, i32* @clist, align 4
  br label %101

96:                                               ; preds = %88
  %97 = load i32, i32* @stderr, align 4
  %98 = load i8*, i8** @progname, align 8
  %99 = load i8*, i8** %2, align 8
  %100 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %98, i8* %99)
  br label %101

101:                                              ; preds = %96, %92
  br label %302

102:                                              ; preds = %1, %1, %1
  %103 = load i8*, i8** %2, align 8
  %104 = load i32, i32* @plist, align 4
  %105 = call i32 @append(i8* %103, i32 %104)
  store i32 %105, i32* @plist, align 4
  br label %302

106:                                              ; preds = %1
  %107 = load i8*, i8** @opt.path, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %111

111:                                              ; preds = %109, %106
  %112 = load i8*, i8** %2, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  store i8* %113, i8** @opt.path, align 8
  %114 = load i8**, i8*** @com, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32* @strstr(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %130

119:                                              ; preds = %111
  %120 = load i8*, i8** @opt.path, align 8
  %121 = call i8* @replace(i8* %120, i8 signext 47, i8 signext 92)
  %122 = load i32*, i32** @suffixes, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @first(i32 %124)
  %126 = call i8* @concat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %125)
  %127 = call i8* @concat(i8* %121, i8* %126)
  %128 = load i8**, i8*** @com, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 0
  store i8* %127, i8** %129, align 8
  br label %135

130:                                              ; preds = %111
  %131 = load i8*, i8** @opt.path, align 8
  %132 = call i8* @concat(i8* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %133 = load i8**, i8*** @com, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %130, %119
  %136 = load i8*, i8** @opt.path, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 0)
  br label %143

143:                                              ; preds = %141, %135
  br label %302

144:                                              ; preds = %1
  %145 = load i8*, i8** %2, align 8
  %146 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  br label %149

149:                                              ; preds = %1, %148
  %150 = load i32, i32* @opt.printed, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = call i32 (...) @help()
  br label %154

154:                                              ; preds = %152, %149
  store i32 1, i32* @opt.printed, align 4
  br label %302

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %1, %155
  %157 = load i8*, i8** %2, align 8
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = load i8*, i8** %2, align 8
  %162 = call i32 @option(i8* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %160
  %165 = load i32, i32* @stderr, align 4
  %166 = load i8*, i8** @progname, align 8
  %167 = load i8*, i8** %2, align 8
  %168 = call i32 @fprintf(i32 %165, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %166, i8* %167)
  br label %169

169:                                              ; preds = %164, %160
  br label %302

170:                                              ; preds = %156
  br label %171

171:                                              ; preds = %170, %1
  %172 = load i8*, i8** %2, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 2
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %280

177:                                              ; preds = %171
  %178 = load i8*, i8** %2, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  switch i32 %181, label %279 [
    i32 83, label %182
    i32 79, label %185
    i32 65, label %190
    i32 110, label %190
    i32 119, label %190
    i32 80, label %190
    i32 103, label %194
    i32 98, label %194
    i32 71, label %217
    i32 69, label %236
    i32 99, label %239
    i32 78, label %242
    i32 118, label %255
  ]

182:                                              ; preds = %177
  %183 = load i64, i64* @Sflag, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* @Sflag, align 8
  br label %302

185:                                              ; preds = %177
  %186 = load i32, i32* @stderr, align 4
  %187 = load i8*, i8** @progname, align 8
  %188 = load i8*, i8** %2, align 8
  %189 = call i32 @fprintf(i32 %186, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %187, i8* %188)
  br label %302

190:                                              ; preds = %177, %177, %177, %177
  %191 = load i8*, i8** %2, align 8
  %192 = load i32, i32* @clist, align 4
  %193 = call i32 @append(i8* %191, i32 %192)
  store i32 %193, i32* @clist, align 4
  br label %302

194:                                              ; preds = %177, %177
  %195 = load i8*, i8** %2, align 8
  %196 = call i32 @option(i8* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %194
  %199 = load i8*, i8** %2, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 103
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %207

205:                                              ; preds = %198
  %206 = load i8*, i8** %2, align 8
  br label %207

207:                                              ; preds = %205, %204
  %208 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %204 ], [ %206, %205 ]
  %209 = load i32, i32* @clist, align 4
  %210 = call i32 @append(i8* %208, i32 %209)
  store i32 %210, i32* @clist, align 4
  br label %216

211:                                              ; preds = %194
  %212 = load i32, i32* @stderr, align 4
  %213 = load i8*, i8** @progname, align 8
  %214 = load i8*, i8** %2, align 8
  %215 = call i32 @fprintf(i32 %212, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %213, i8* %214)
  br label %216

216:                                              ; preds = %211, %207
  br label %302

217:                                              ; preds = %177
  %218 = load i8*, i8** %2, align 8
  %219 = call i32 @option(i8* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %217
  %222 = load i32, i32* @clist, align 4
  %223 = call i32 @append(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %222)
  store i32 %223, i32* @clist, align 4
  %224 = load i32*, i32** @llist, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @append(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %226)
  %228 = load i32*, i32** @llist, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  store i32 %227, i32* %229, align 4
  br label %235

230:                                              ; preds = %217
  %231 = load i32, i32* @stderr, align 4
  %232 = load i8*, i8** @progname, align 8
  %233 = load i8*, i8** %2, align 8
  %234 = call i32 @fprintf(i32 %231, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %232, i8* %233)
  br label %235

235:                                              ; preds = %230, %221
  br label %302

236:                                              ; preds = %177
  %237 = load i64, i64* @Eflag, align 8
  %238 = add nsw i64 %237, 1
  store i64 %238, i64* @Eflag, align 8
  br label %302

239:                                              ; preds = %177
  %240 = load i64, i64* @cflag, align 8
  %241 = add nsw i64 %240, 1
  store i64 %241, i64* @cflag, align 8
  br label %302

242:                                              ; preds = %177
  %243 = load i32*, i32** @cpp, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = call i8* @basename(i32 %245)
  %247 = call i32 @strcmp(i8* %246, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %242
  %250 = load i32, i32* @plist, align 4
  %251 = call i32 @append(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %250)
  store i32 %251, i32* @plist, align 4
  br label %252

252:                                              ; preds = %249, %242
  %253 = load i32*, i32** @include, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  store i32 0, i32* %254, align 4
  store i32 0, i32* @ilist, align 4
  br label %302

255:                                              ; preds = %177
  %256 = load i32, i32* @verbose, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* @verbose, align 4
  %258 = icmp eq i32 %256, 0
  br i1 %258, label %259, label %278

259:                                              ; preds = %255
  %260 = load i32*, i32** @cpp, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = call i8* @basename(i32 %262)
  %264 = call i32 @strcmp(i8* %263, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %259
  %267 = load i8*, i8** %2, align 8
  %268 = load i32, i32* @plist, align 4
  %269 = call i32 @append(i8* %267, i32 %268)
  store i32 %269, i32* @plist, align 4
  br label %270

270:                                              ; preds = %266, %259
  %271 = load i8*, i8** %2, align 8
  %272 = load i32, i32* @clist, align 4
  %273 = call i32 @append(i8* %271, i32 %272)
  store i32 %273, i32* @clist, align 4
  %274 = load i32, i32* @stderr, align 4
  %275 = load i8*, i8** @progname, align 8
  %276 = load i8*, i8** @rcsid, align 8
  %277 = call i32 @fprintf(i32 %274, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %275, i8* %276)
  br label %278

278:                                              ; preds = %270, %255
  br label %302

279:                                              ; preds = %177
  br label %280

280:                                              ; preds = %279, %171
  %281 = load i64, i64* @cflag, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %289, label %283

283:                                              ; preds = %280
  %284 = load i64, i64* @Sflag, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %283
  %287 = load i64, i64* @Eflag, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %286, %283, %280
  %290 = load i32, i32* @stderr, align 4
  %291 = load i8*, i8** @progname, align 8
  %292 = load i8*, i8** %2, align 8
  %293 = call i32 @fprintf(i32 %290, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %291, i8* %292)
  br label %302

294:                                              ; preds = %286
  %295 = load i8*, i8** %2, align 8
  %296 = load i32*, i32** @llist, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @append(i8* %295, i32 %298)
  %300 = load i32*, i32** @llist, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 1
  store i32 %299, i32* %301, align 4
  br label %302

302:                                              ; preds = %29, %31, %44, %50, %55, %65, %70, %87, %101, %102, %143, %154, %169, %182, %185, %190, %216, %235, %236, %239, %252, %278, %294, %289
  ret void
}

declare dso_local i32 @option(i8*) #1

declare dso_local i32 @append(i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i8* @concat(i8*, i8*) #1

declare dso_local i8* @replace(i8*, i8 signext, i8 signext) #1

declare dso_local i8* @first(i32) #1

declare dso_local i32 @help(...) #1

declare dso_local i8* @basename(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
