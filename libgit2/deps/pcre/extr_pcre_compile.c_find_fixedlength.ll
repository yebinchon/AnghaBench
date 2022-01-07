; ModuleID = '/home/carl/AnghaBench/libgit2/deps/pcre/extr_pcre_compile.c_find_fixedlength.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/pcre/extr_pcre_compile.c_find_fixedlength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_5__* }

@LINK_SIZE = common dso_local global i32 0, align 4
@IMM2_SIZE = common dso_local global i32 0, align 4
@OP_lengths = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*)* @find_fixedlength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_fixedlength(i32* %0, i32 %1, i32 %2, %struct.TYPE_6__* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* @LINK_SIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %15, align 8
  br label %26

26:                                               ; preds = %308, %5
  %27 = load i32*, i32** %15, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  switch i32 %29, label %307 [
    i32 272, label %30
    i32 278, label %30
    i32 184, label %30
    i32 183, label %30
    i32 263, label %30
    i32 287, label %70
    i32 233, label %70
    i32 241, label %70
    i32 289, label %70
    i32 280, label %70
    i32 167, label %93
    i32 283, label %174
    i32 279, label %174
    i32 282, label %174
    i32 281, label %174
    i32 229, label %191
    i32 170, label %191
    i32 154, label %191
    i32 148, label %191
    i32 273, label %206
    i32 268, label %206
    i32 267, label %206
    i32 265, label %206
    i32 264, label %206
    i32 262, label %206
    i32 249, label %206
    i32 247, label %206
    i32 244, label %206
    i32 243, label %206
    i32 242, label %206
    i32 240, label %206
    i32 239, label %206
    i32 235, label %206
    i32 185, label %206
    i32 171, label %206
    i32 164, label %206
    i32 163, label %206
    i32 157, label %206
    i32 156, label %206
    i32 153, label %206
    i32 152, label %206
    i32 149, label %206
    i32 129, label %206
    i32 270, label %217
    i32 269, label %217
    i32 219, label %217
    i32 216, label %217
    i32 238, label %222
    i32 237, label %222
    i32 218, label %222
    i32 217, label %222
    i32 147, label %232
    i32 172, label %262
    i32 197, label %262
    i32 234, label %265
    i32 132, label %265
    i32 189, label %265
    i32 188, label %265
    i32 190, label %265
    i32 248, label %265
    i32 187, label %265
    i32 131, label %265
    i32 186, label %265
    i32 130, label %265
    i32 286, label %265
    i32 288, label %265
    i32 285, label %270
    i32 266, label %271
    i32 220, label %271
    i32 284, label %306
    i32 277, label %306
    i32 276, label %306
    i32 275, label %306
    i32 274, label %306
    i32 271, label %306
    i32 236, label %306
    i32 232, label %306
    i32 231, label %306
    i32 230, label %306
    i32 228, label %306
    i32 227, label %306
    i32 226, label %306
    i32 225, label %306
    i32 224, label %306
    i32 223, label %306
    i32 222, label %306
    i32 221, label %306
    i32 215, label %306
    i32 214, label %306
    i32 213, label %306
    i32 212, label %306
    i32 211, label %306
    i32 210, label %306
    i32 209, label %306
    i32 208, label %306
    i32 207, label %306
    i32 206, label %306
    i32 205, label %306
    i32 204, label %306
    i32 203, label %306
    i32 202, label %306
    i32 201, label %306
    i32 200, label %306
    i32 199, label %306
    i32 198, label %306
    i32 196, label %306
    i32 195, label %306
    i32 194, label %306
    i32 193, label %306
    i32 192, label %306
    i32 191, label %306
    i32 182, label %306
    i32 181, label %306
    i32 180, label %306
    i32 179, label %306
    i32 178, label %306
    i32 177, label %306
    i32 176, label %306
    i32 175, label %306
    i32 174, label %306
    i32 173, label %306
    i32 169, label %306
    i32 168, label %306
    i32 166, label %306
    i32 165, label %306
    i32 246, label %306
    i32 245, label %306
    i32 162, label %306
    i32 161, label %306
    i32 160, label %306
    i32 159, label %306
    i32 158, label %306
    i32 155, label %306
    i32 151, label %306
    i32 150, label %306
    i32 146, label %306
    i32 145, label %306
    i32 144, label %306
    i32 143, label %306
    i32 142, label %306
    i32 141, label %306
    i32 140, label %306
    i32 139, label %306
    i32 138, label %306
    i32 137, label %306
    i32 136, label %306
    i32 135, label %306
    i32 134, label %306
    i32 133, label %306
  ]

30:                                               ; preds = %26, %26, %26, %26, %26
  %31 = load i32*, i32** %15, align 8
  %32 = load i32, i32* %19, align 4
  %33 = icmp eq i32 %32, 272
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @IMM2_SIZE, align 4
  br label %37

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %31, i64 %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = call i32 @find_fixedlength(i32* %40, i32 %41, i32 %42, %struct.TYPE_6__* %43, %struct.TYPE_5__* %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %6, align 4
  br label %309

50:                                               ; preds = %37
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %60, %50
  %55 = load i32*, i32** %15, align 8
  %56 = call i32 @GET(i32* %55, i32 1)
  %57 = load i32*, i32** %15, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %15, align 8
  br label %60

60:                                               ; preds = %54
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 287
  br i1 %63, label %54, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @LINK_SIZE, align 4
  %66 = add nsw i32 1, %65
  %67 = load i32*, i32** %15, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %15, align 8
  br label %308

70:                                               ; preds = %26, %26, %26, %26, %26
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %12, align 4
  br label %81

75:                                               ; preds = %70
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 -1, i32* %6, align 4
  br label %309

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %73
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 287
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %6, align 4
  br label %309

87:                                               ; preds = %81
  %88 = load i32, i32* @LINK_SIZE, align 4
  %89 = add nsw i32 1, %88
  %90 = load i32*, i32** %15, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %15, align 8
  store i32 0, i32* %14, align 4
  br label %308

93:                                               ; preds = %26
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  store i32 -3, i32* %6, align 4
  br label %309

97:                                               ; preds = %93
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i32*
  %102 = load i32*, i32** %15, align 8
  %103 = call i32 @GET(i32* %102, i32 1)
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32* %105, i32** %17, align 8
  store i32* %105, i32** %18, align 8
  br label %106

106:                                              ; preds = %112, %97
  %107 = load i32*, i32** %17, align 8
  %108 = call i32 @GET(i32* %107, i32 1)
  %109 = load i32*, i32** %17, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %17, align 8
  br label %112

112:                                              ; preds = %106
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 287
  br i1 %115, label %106, label %116

116:                                              ; preds = %112
  %117 = load i32*, i32** %15, align 8
  %118 = load i32*, i32** %18, align 8
  %119 = icmp ugt i32* %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i32*, i32** %15, align 8
  %122 = load i32*, i32** %17, align 8
  %123 = icmp ult i32* %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 -1, i32* %6, align 4
  br label %309

125:                                              ; preds = %120, %116
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %126, %struct.TYPE_5__** %20, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %127, %struct.TYPE_5__** %20, align 8
  br label %128

128:                                              ; preds = %139, %125
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %130 = icmp ne %struct.TYPE_5__* %129, null
  br i1 %130, label %131, label %143

131:                                              ; preds = %128
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32*, i32** %18, align 8
  %136 = icmp eq i32* %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %143

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  store %struct.TYPE_5__* %142, %struct.TYPE_5__** %20, align 8
  br label %128

143:                                              ; preds = %137, %128
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %145 = icmp ne %struct.TYPE_5__* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 -1, i32* %6, align 4
  br label %309

147:                                              ; preds = %143
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store %struct.TYPE_5__* %149, %struct.TYPE_5__** %150, align 8
  %151 = load i32*, i32** %18, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32* %151, i32** %152, align 8
  %153 = load i32*, i32** %18, align 8
  %154 = load i32, i32* @IMM2_SIZE, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %160 = call i32 @find_fixedlength(i32* %156, i32 %157, i32 %158, %struct.TYPE_6__* %159, %struct.TYPE_5__* %13)
  store i32 %160, i32* %16, align 4
  %161 = load i32, i32* %16, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %148
  %164 = load i32, i32* %16, align 4
  store i32 %164, i32* %6, align 4
  br label %309

165:                                              ; preds = %148
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* @LINK_SIZE, align 4
  %170 = add nsw i32 1, %169
  %171 = load i32*, i32** %15, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32* %173, i32** %15, align 8
  br label %308

174:                                              ; preds = %26, %26, %26, %26
  br label %175

175:                                              ; preds = %181, %174
  %176 = load i32*, i32** %15, align 8
  %177 = call i32 @GET(i32* %176, i32 1)
  %178 = load i32*, i32** %15, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %15, align 8
  br label %181

181:                                              ; preds = %175
  %182 = load i32*, i32** %15, align 8
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 287
  br i1 %184, label %175, label %185

185:                                              ; preds = %181
  %186 = load i32, i32* @LINK_SIZE, align 4
  %187 = add nsw i32 1, %186
  %188 = load i32*, i32** %15, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  store i32* %190, i32** %15, align 8
  br label %308

191:                                              ; preds = %26, %26, %26, %26
  %192 = load i32*, i32** %15, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @OP_lengths, align 4
  %196 = call i32* @PRIV(i32 %195)
  %197 = load i32*, i32** %15, align 8
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %194, %201
  %203 = load i32*, i32** %15, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  store i32* %205, i32** %15, align 8
  br label %308

206:                                              ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  %207 = load i32, i32* @OP_lengths, align 4
  %208 = call i32* @PRIV(i32 %207)
  %209 = load i32*, i32** %15, align 8
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %15, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32* %216, i32** %15, align 8
  br label %308

217:                                              ; preds = %26, %26, %26, %26
  %218 = load i32, i32* %14, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %14, align 4
  %220 = load i32*, i32** %15, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  store i32* %221, i32** %15, align 8
  br label %308

222:                                              ; preds = %26, %26, %26, %26
  %223 = load i32*, i32** %15, align 8
  %224 = call i32 @GET2(i32* %223, i32 1)
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %14, align 4
  %227 = load i32, i32* @IMM2_SIZE, align 4
  %228 = add nsw i32 2, %227
  %229 = load i32*, i32** %15, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  store i32* %231, i32** %15, align 8
  br label %308

232:                                              ; preds = %26
  %233 = load i32*, i32** %15, align 8
  %234 = call i32 @GET2(i32* %233, i32 1)
  %235 = load i32, i32* %14, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %14, align 4
  %237 = load i32*, i32** %15, align 8
  %238 = load i32, i32* @IMM2_SIZE, align 4
  %239 = add nsw i32 1, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 172
  br i1 %243, label %252, label %244

244:                                              ; preds = %232
  %245 = load i32*, i32** %15, align 8
  %246 = load i32, i32* @IMM2_SIZE, align 4
  %247 = add nsw i32 1, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %250, 197
  br i1 %251, label %252, label %255

252:                                              ; preds = %244, %232
  %253 = load i32*, i32** %15, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 2
  store i32* %254, i32** %15, align 8
  br label %255

255:                                              ; preds = %252, %244
  %256 = load i32, i32* @IMM2_SIZE, align 4
  %257 = add nsw i32 1, %256
  %258 = add nsw i32 %257, 1
  %259 = load i32*, i32** %15, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  store i32* %261, i32** %15, align 8
  br label %308

262:                                              ; preds = %26, %26
  %263 = load i32*, i32** %15, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 2
  store i32* %264, i32** %15, align 8
  br label %265

265:                                              ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %262
  %266 = load i32, i32* %14, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %14, align 4
  %268 = load i32*, i32** %15, align 8
  %269 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %269, i32** %15, align 8
  br label %308

270:                                              ; preds = %26
  store i32 -2, i32* %6, align 4
  br label %309

271:                                              ; preds = %26, %26
  %272 = load i32, i32* @OP_lengths, align 4
  %273 = call i32* @PRIV(i32 %272)
  %274 = getelementptr inbounds i32, i32* %273, i64 266
  %275 = load i32, i32* %274, align 4
  %276 = load i32*, i32** %15, align 8
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32* %278, i32** %15, align 8
  %279 = load i32*, i32** %15, align 8
  %280 = load i32, i32* %279, align 4
  switch i32 %280, label %302 [
    i32 250, label %281
    i32 258, label %281
    i32 257, label %281
    i32 261, label %281
    i32 252, label %281
    i32 260, label %281
    i32 253, label %281
    i32 256, label %281
    i32 255, label %281
    i32 251, label %282
    i32 259, label %282
    i32 254, label %282
  ]

281:                                              ; preds = %271, %271, %271, %271, %271, %271, %271, %271, %271
  store i32 -1, i32* %6, align 4
  br label %309

282:                                              ; preds = %271, %271, %271
  %283 = load i32*, i32** %15, align 8
  %284 = call i32 @GET2(i32* %283, i32 1)
  %285 = load i32*, i32** %15, align 8
  %286 = load i32, i32* @IMM2_SIZE, align 4
  %287 = add nsw i32 1, %286
  %288 = call i32 @GET2(i32* %285, i32 %287)
  %289 = icmp ne i32 %284, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %282
  store i32 -1, i32* %6, align 4
  br label %309

291:                                              ; preds = %282
  %292 = load i32*, i32** %15, align 8
  %293 = call i32 @GET2(i32* %292, i32 1)
  %294 = load i32, i32* %14, align 4
  %295 = add nsw i32 %294, %293
  store i32 %295, i32* %14, align 4
  %296 = load i32, i32* @IMM2_SIZE, align 4
  %297 = mul nsw i32 2, %296
  %298 = add nsw i32 1, %297
  %299 = load i32*, i32** %15, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32* %301, i32** %15, align 8
  br label %305

302:                                              ; preds = %271
  %303 = load i32, i32* %14, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %14, align 4
  br label %305

305:                                              ; preds = %302, %291
  br label %308

306:                                              ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  store i32 -1, i32* %6, align 4
  br label %309

307:                                              ; preds = %26
  store i32 -4, i32* %6, align 4
  br label %309

308:                                              ; preds = %305, %265, %255, %222, %217, %206, %191, %185, %165, %87, %64
  br label %26

309:                                              ; preds = %307, %306, %290, %281, %270, %163, %146, %124, %96, %85, %79, %48
  %310 = load i32, i32* %6, align 4
  ret i32 %310
}

declare dso_local i32 @GET(i32*, i32) #1

declare dso_local i32* @PRIV(i32) #1

declare dso_local i32 @GET2(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
