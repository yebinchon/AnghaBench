; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_disassemble.c_print_sh_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_disassemble.c_print_sh_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_opcode_info = type { i32*, i32*, i64 }

@sh_table = common dso_local global %struct.sh_opcode_info* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%-8s  \00", align 1
@A_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"r0\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"r%d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"@r%d+\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"@-r%d\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"@r%d\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"@(%d,r%d)\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"r%d_bank\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%08x <%pS>\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"@(r0,r%d)\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"@(%d,gbr)\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"@(r0,gbr)\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"sr\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"gbr\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"vbr\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ssr\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"spc\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"mach\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"macl\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"pr\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"sgr\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"dbr\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"fr%d\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"xd%d\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"dr%d\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"fpscr\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"fpul\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"fr0\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"fv%d\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"xmtrx\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"mova\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"  ! %08x <%pS>\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c".word 0x%x%x%x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @print_sh_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sh_insn(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.sh_opcode_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 12
  %21 = and i32 %20, 15
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds i32, i32* %18, i64 1
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 15
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds i32, i32* %22, i64 1
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 4
  %29 = and i32 %28, 15
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds i32, i32* %26, i64 1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 15
  store i32 %32, i32* %30, align 4
  %33 = load %struct.sh_opcode_info*, %struct.sh_opcode_info** @sh_table, align 8
  store %struct.sh_opcode_info* %33, %struct.sh_opcode_info** %8, align 8
  br label %34

34:                                               ; preds = %420, %2
  %35 = load %struct.sh_opcode_info*, %struct.sh_opcode_info** %8, align 8
  %36 = getelementptr inbounds %struct.sh_opcode_info, %struct.sh_opcode_info* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %423

39:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %194, %39
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %197

43:                                               ; preds = %40
  %44 = load %struct.sh_opcode_info*, %struct.sh_opcode_info** %8, align 8
  %45 = getelementptr inbounds %struct.sh_opcode_info, %struct.sh_opcode_info* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %51, 16
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %194

61:                                               ; preds = %53
  br label %419

62:                                               ; preds = %43
  %63 = load i32, i32* %16, align 4
  switch i32 %63, label %192 [
    i32 157, label %64
    i32 158, label %83
    i32 142, label %104
    i32 141, label %107
    i32 140, label %111
    i32 139, label %115
    i32 136, label %122
    i32 135, label %130
    i32 138, label %138
    i32 137, label %146
    i32 155, label %154
    i32 156, label %161
    i32 132, label %164
    i32 133, label %169
    i32 131, label %174
    i32 134, label %186
  ]

64:                                               ; preds = %62
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %66, 4
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %67, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 128
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, -256
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %74, %64
  %78 = load i32, i32* %10, align 4
  %79 = trunc i32 %78 to i8
  %80 = sext i8 %79 to i32
  %81 = mul nsw i32 %80, 2
  %82 = add nsw i32 %81, 4
  store i32 %82, i32* %10, align 4
  br label %198

83:                                               ; preds = %62
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 8
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, 4
  %90 = or i32 %86, %89
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %90, %92
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, 2048
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %83
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, -4096
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %97, %83
  %101 = load i32, i32* %10, align 4
  %102 = mul nsw i32 %101, 2
  %103 = add nsw i32 %102, 4
  store i32 %103, i32* %10, align 4
  br label %198

104:                                              ; preds = %62
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %10, align 4
  br label %198

107:                                              ; preds = %62
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %198

111:                                              ; preds = %62
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 2
  store i32 %114, i32* %10, align 4
  br label %198

115:                                              ; preds = %62
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %117 = load i32, i32* %116, align 8
  %118 = shl i32 %117, 4
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %118, %120
  store i32 %121, i32* %10, align 4
  br label %198

122:                                              ; preds = %62
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %124 = load i32, i32* %123, align 8
  %125 = shl i32 %124, 4
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %125, %127
  %129 = shl i32 %128, 1
  store i32 %129, i32* %10, align 4
  store i32 -2, i32* %5, align 4
  br label %198

130:                                              ; preds = %62
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %132 = load i32, i32* %131, align 8
  %133 = shl i32 %132, 4
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %133, %135
  %137 = shl i32 %136, 2
  store i32 %137, i32* %10, align 4
  store i32 -4, i32* %5, align 4
  br label %198

138:                                              ; preds = %62
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %140 = load i32, i32* %139, align 8
  %141 = shl i32 %140, 4
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %141, %143
  %145 = shl i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %198

146:                                              ; preds = %62
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %148 = load i32, i32* %147, align 8
  %149 = shl i32 %148, 4
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %149, %151
  %153 = shl i32 %152, 2
  store i32 %153, i32* %10, align 4
  br label %198

154:                                              ; preds = %62
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %156 = load i32, i32* %155, align 8
  %157 = shl i32 %156, 4
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %157, %159
  store i32 %160, i32* %10, align 4
  br label %198

161:                                              ; preds = %62
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %10, align 4
  br label %198

164:                                              ; preds = %62
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %11, align 4
  br label %193

169:                                              ; preds = %62
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %12, align 4
  br label %193

174:                                              ; preds = %62
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 12
  %180 = ashr i32 %179, 2
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 3
  store i32 %185, i32* %12, align 4
  br label %193

186:                                              ; preds = %62
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 7
  store i32 %191, i32* %13, align 4
  br label %193

192:                                              ; preds = %62
  br label %433

193:                                              ; preds = %186, %174, %169, %164
  br label %194

194:                                              ; preds = %193, %60
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %9, align 4
  br label %40

197:                                              ; preds = %40
  br label %198

198:                                              ; preds = %197, %161, %154, %146, %138, %130, %122, %115, %111, %107, %104, %100, %77
  %199 = load %struct.sh_opcode_info*, %struct.sh_opcode_info** %8, align 8
  %200 = getelementptr inbounds %struct.sh_opcode_info, %struct.sh_opcode_info* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %201)
  %203 = load %struct.sh_opcode_info*, %struct.sh_opcode_info** %8, align 8
  %204 = getelementptr inbounds %struct.sh_opcode_info, %struct.sh_opcode_info* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @A_END, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  store i32 %210, i32* %7, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %211

211:                                              ; preds = %385, %198
  %212 = load i32, i32* %9, align 4
  %213 = icmp slt i32 %212, 6
  br i1 %213, label %214, label %224

214:                                              ; preds = %211
  %215 = load %struct.sh_opcode_info*, %struct.sh_opcode_info** %8, align 8
  %216 = getelementptr inbounds %struct.sh_opcode_info, %struct.sh_opcode_info* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @A_END, align 4
  %223 = icmp ne i32 %221, %222
  br label %224

224:                                              ; preds = %214, %211
  %225 = phi i1 [ false, %211 ], [ %223, %214 ]
  br i1 %225, label %226, label %388

226:                                              ; preds = %224
  %227 = load i32, i32* %9, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %226
  %230 = load %struct.sh_opcode_info*, %struct.sh_opcode_info** %8, align 8
  %231 = getelementptr inbounds %struct.sh_opcode_info, %struct.sh_opcode_info* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @A_END, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %229
  %238 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237, %229, %226
  %240 = load %struct.sh_opcode_info*, %struct.sh_opcode_info** %8, align 8
  %241 = getelementptr inbounds %struct.sh_opcode_info, %struct.sh_opcode_info* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  switch i32 %246, label %383 [
    i32 178, label %247
    i32 168, label %252
    i32 164, label %254
    i32 176, label %257
    i32 184, label %260
    i32 174, label %263
    i32 180, label %266
    i32 165, label %270
    i32 177, label %273
    i32 185, label %276
    i32 175, label %279
    i32 181, label %282
    i32 166, label %286
    i32 182, label %289
    i32 172, label %301
    i32 173, label %304
    i32 183, label %307
    i32 167, label %310
    i32 188, label %312
    i32 187, label %312
    i32 161, label %317
    i32 179, label %319
    i32 159, label %321
    i32 160, label %323
    i32 162, label %325
    i32 171, label %327
    i32 170, label %329
    i32 169, label %331
    i32 163, label %333
    i32 186, label %335
    i32 150, label %337
    i32 143, label %337
    i32 144, label %340
    i32 153, label %343
    i32 151, label %352
    i32 154, label %355
    i32 152, label %364
    i32 149, label %367
    i32 148, label %367
    i32 147, label %369
    i32 146, label %369
    i32 145, label %371
    i32 129, label %373
    i32 130, label %377
    i32 128, label %381
  ]

247:                                              ; preds = %239
  %248 = load i32, i32* %10, align 4
  %249 = trunc i32 %248 to i8
  %250 = sext i8 %249 to i32
  %251 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %250)
  br label %384

252:                                              ; preds = %239
  %253 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %384

254:                                              ; preds = %239
  %255 = load i32, i32* %11, align 4
  %256 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %255)
  br label %384

257:                                              ; preds = %239
  %258 = load i32, i32* %11, align 4
  %259 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %258)
  br label %384

260:                                              ; preds = %239
  %261 = load i32, i32* %11, align 4
  %262 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %261)
  br label %384

263:                                              ; preds = %239
  %264 = load i32, i32* %11, align 4
  %265 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %264)
  br label %384

266:                                              ; preds = %239
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* %11, align 4
  %269 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %267, i32 %268)
  br label %384

270:                                              ; preds = %239
  %271 = load i32, i32* %12, align 4
  %272 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %271)
  br label %384

273:                                              ; preds = %239
  %274 = load i32, i32* %12, align 4
  %275 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %274)
  br label %384

276:                                              ; preds = %239
  %277 = load i32, i32* %12, align 4
  %278 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %277)
  br label %384

279:                                              ; preds = %239
  %280 = load i32, i32* %12, align 4
  %281 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %280)
  br label %384

282:                                              ; preds = %239
  %283 = load i32, i32* %10, align 4
  %284 = load i32, i32* %12, align 4
  %285 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %283, i32 %284)
  br label %384

286:                                              ; preds = %239
  %287 = load i32, i32* %13, align 4
  %288 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %287)
  br label %384

289:                                              ; preds = %239
  store i32 1, i32* %14, align 4
  %290 = load i32, i32* %10, align 4
  %291 = add nsw i32 %290, 4
  %292 = load i32, i32* %3, align 4
  %293 = load i32, i32* %5, align 4
  %294 = and i32 %292, %293
  %295 = add nsw i32 %291, %294
  store i32 %295, i32* %15, align 4
  %296 = load i32, i32* %15, align 4
  %297 = load i32, i32* %15, align 4
  %298 = sext i32 %297 to i64
  %299 = inttoptr i64 %298 to i8*
  %300 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %296, i8* %299)
  br label %384

301:                                              ; preds = %239
  %302 = load i32, i32* %11, align 4
  %303 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %302)
  br label %384

304:                                              ; preds = %239
  %305 = load i32, i32* %12, align 4
  %306 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %305)
  br label %384

307:                                              ; preds = %239
  %308 = load i32, i32* %10, align 4
  %309 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %308)
  br label %384

310:                                              ; preds = %239
  %311 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %384

312:                                              ; preds = %239, %239
  %313 = load i32, i32* %10, align 4
  %314 = load i32, i32* %3, align 4
  %315 = add nsw i32 %313, %314
  %316 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %315)
  br label %384

317:                                              ; preds = %239
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %384

319:                                              ; preds = %239
  %320 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %384

321:                                              ; preds = %239
  %322 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %384

323:                                              ; preds = %239
  %324 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  br label %384

325:                                              ; preds = %239
  %326 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  br label %384

327:                                              ; preds = %239
  %328 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  br label %384

329:                                              ; preds = %239
  %330 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  br label %384

331:                                              ; preds = %239
  %332 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  br label %384

333:                                              ; preds = %239
  %334 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  br label %384

335:                                              ; preds = %239
  %336 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  br label %384

337:                                              ; preds = %239, %239
  %338 = load i32, i32* %11, align 4
  %339 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %338)
  br label %384

340:                                              ; preds = %239
  %341 = load i32, i32* %12, align 4
  %342 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %341)
  br label %384

343:                                              ; preds = %239
  %344 = load i32, i32* %11, align 4
  %345 = and i32 %344, 1
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %343
  %348 = load i32, i32* %11, align 4
  %349 = and i32 %348, -2
  %350 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %349)
  br label %384

351:                                              ; preds = %343
  br label %352

352:                                              ; preds = %239, %351
  %353 = load i32, i32* %11, align 4
  %354 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 %353)
  br label %384

355:                                              ; preds = %239
  %356 = load i32, i32* %12, align 4
  %357 = and i32 %356, 1
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %355
  %360 = load i32, i32* %12, align 4
  %361 = and i32 %360, -2
  %362 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %361)
  br label %384

363:                                              ; preds = %355
  br label %364

364:                                              ; preds = %239, %363
  %365 = load i32, i32* %12, align 4
  %366 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 %365)
  br label %384

367:                                              ; preds = %239, %239
  %368 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  br label %384

369:                                              ; preds = %239, %239
  %370 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  br label %384

371:                                              ; preds = %239
  %372 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  br label %384

373:                                              ; preds = %239
  %374 = load i32, i32* %11, align 4
  %375 = mul nsw i32 %374, 4
  %376 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %375)
  br label %384

377:                                              ; preds = %239
  %378 = load i32, i32* %12, align 4
  %379 = mul nsw i32 %378, 4
  %380 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %379)
  br label %384

381:                                              ; preds = %239
  %382 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0))
  br label %384

383:                                              ; preds = %239
  br label %433

384:                                              ; preds = %381, %377, %373, %371, %369, %367, %364, %359, %352, %347, %340, %337, %335, %333, %331, %329, %327, %325, %323, %321, %319, %317, %312, %310, %307, %304, %301, %289, %286, %282, %279, %276, %273, %270, %266, %263, %260, %257, %254, %252, %247
  br label %385

385:                                              ; preds = %384
  %386 = load i32, i32* %9, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %9, align 4
  br label %211

388:                                              ; preds = %224
  %389 = load i32, i32* %14, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %418

391:                                              ; preds = %388
  %392 = load %struct.sh_opcode_info*, %struct.sh_opcode_info** %8, align 8
  %393 = getelementptr inbounds %struct.sh_opcode_info, %struct.sh_opcode_info* %392, i32 0, i32 2
  %394 = load i64, i64* %393, align 8
  %395 = call i64 @strcmp(i64 %394, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %418

397:                                              ; preds = %391
  %398 = load i32, i32* %5, align 4
  %399 = icmp eq i32 %398, -2
  br i1 %399, label %400, label %406

400:                                              ; preds = %397
  %401 = load i32, i32* %17, align 4
  %402 = load i32, i32* %15, align 4
  %403 = sext i32 %402 to i64
  %404 = inttoptr i64 %403 to i32*
  %405 = call i32 @__get_user(i32 %401, i32* %404)
  br label %412

406:                                              ; preds = %397
  %407 = load i32, i32* %17, align 4
  %408 = load i32, i32* %15, align 4
  %409 = sext i32 %408 to i64
  %410 = inttoptr i64 %409 to i32*
  %411 = call i32 @__get_user(i32 %407, i32* %410)
  br label %412

412:                                              ; preds = %406, %400
  %413 = load i32, i32* %17, align 4
  %414 = load i32, i32* %17, align 4
  %415 = sext i32 %414 to i64
  %416 = inttoptr i64 %415 to i8*
  %417 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i32 %413, i8* %416)
  br label %418

418:                                              ; preds = %412, %391, %388
  br label %433

419:                                              ; preds = %61
  br label %420

420:                                              ; preds = %419
  %421 = load %struct.sh_opcode_info*, %struct.sh_opcode_info** %8, align 8
  %422 = getelementptr inbounds %struct.sh_opcode_info, %struct.sh_opcode_info* %421, i32 1
  store %struct.sh_opcode_info* %422, %struct.sh_opcode_info** %8, align 8
  br label %34

423:                                              ; preds = %34
  %424 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %425 = load i32, i32* %424, align 16
  %426 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %427 = load i32, i32* %426, align 4
  %428 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %429 = load i32, i32* %428, align 8
  %430 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %431 = load i32, i32* %430, align 4
  %432 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i32 %425, i32 %427, i32 %429, i32 %431)
  br label %433

433:                                              ; preds = %423, %418, %383, %192
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @__get_user(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
