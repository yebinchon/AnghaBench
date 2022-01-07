; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_dwarf.c_dwarf_cfa_execute_insns.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_dwarf.c_dwarf_cfa_execute_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf_cie = type { i32, i32 }
%struct.dwarf_fde = type { i32 }
%struct.dwarf_frame = type { i64, i32, i32, i8*, i32, i32 }
%struct.dwarf_reg = type { i32, i32 }

@DWARF_REG_OFFSET = common dso_local global i32 0, align 4
@DWARF_UNDEFINED = common dso_local global i32 0, align 4
@DWARF_FRAME_CFA_REG_OFFSET = common dso_local global i32 0, align 4
@DWARF_FRAME_CFA_REG_EXP = common dso_local global i32 0, align 4
@DWARF_VAL_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unhandled DWARF instruction 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.dwarf_cie*, %struct.dwarf_fde*, %struct.dwarf_frame*, i64)* @dwarf_cfa_execute_insns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwarf_cfa_execute_insns(i8* %0, i8* %1, %struct.dwarf_cie* %2, %struct.dwarf_fde* %3, %struct.dwarf_frame* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dwarf_cie*, align 8
  %10 = alloca %struct.dwarf_fde*, align 8
  %11 = alloca %struct.dwarf_frame*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.dwarf_reg*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.dwarf_cie* %2, %struct.dwarf_cie** %9, align 8
  store %struct.dwarf_fde* %3, %struct.dwarf_fde** %10, align 8
  store %struct.dwarf_frame* %4, %struct.dwarf_frame** %11, align 8
  store i64 %5, i64* %12, align 8
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %14, align 8
  br label %22

22:                                               ; preds = %333, %86, %80, %55, %41, %6
  %23 = load i8*, i8** %14, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %28 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ule i64 %29, %30
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i1 [ false, %22 ], [ %31, %26 ]
  br i1 %33, label %34, label %334

34:                                               ; preds = %32
  %35 = load i8*, i8** %14, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %14, align 8
  %37 = ptrtoint i8* %35 to i32
  %38 = call zeroext i8 @__raw_readb(i32 %37)
  store i8 %38, i8* %13, align 1
  %39 = load i8, i8* %13, align 1
  %40 = call i32 @DW_CFA_opcode(i8 zeroext %39)
  switch i32 %40, label %83 [
    i32 143, label %41
    i32 134, label %55
    i32 131, label %80
  ]

41:                                               ; preds = %34
  %42 = load i8, i8* %13, align 1
  %43 = call i32 @DW_CFA_operand(i8 zeroext %42)
  store i32 %43, i32* %16, align 4
  %44 = load %struct.dwarf_cie*, %struct.dwarf_cie** %9, align 8
  %45 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %16, align 4
  %48 = mul i32 %47, %46
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = zext i32 %49 to i64
  %51 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %52 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %50
  store i64 %54, i64* %52, align 8
  br label %22

55:                                               ; preds = %34
  %56 = load i8, i8* %13, align 1
  %57 = call i32 @DW_CFA_operand(i8 zeroext %56)
  store i32 %57, i32* %17, align 4
  %58 = load i8*, i8** %14, align 8
  %59 = call i32 @dwarf_read_uleb128(i8* %58, i32* %19)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i8*, i8** %14, align 8
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %14, align 8
  %64 = load %struct.dwarf_cie*, %struct.dwarf_cie** %9, align 8
  %65 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %19, align 4
  %68 = mul i32 %67, %66
  store i32 %68, i32* %19, align 4
  %69 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %70 = load i32, i32* %17, align 4
  %71 = call %struct.dwarf_reg* @dwarf_frame_alloc_reg(%struct.dwarf_frame* %69, i32 %70)
  store %struct.dwarf_reg* %71, %struct.dwarf_reg** %20, align 8
  %72 = load i32, i32* %19, align 4
  %73 = load %struct.dwarf_reg*, %struct.dwarf_reg** %20, align 8
  %74 = getelementptr inbounds %struct.dwarf_reg, %struct.dwarf_reg* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @DWARF_REG_OFFSET, align 4
  %76 = load %struct.dwarf_reg*, %struct.dwarf_reg** %20, align 8
  %77 = getelementptr inbounds %struct.dwarf_reg, %struct.dwarf_reg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %22

80:                                               ; preds = %34
  %81 = load i8, i8* %13, align 1
  %82 = call i32 @DW_CFA_operand(i8 zeroext %81)
  store i32 %82, i32* %17, align 4
  br label %22

83:                                               ; preds = %34
  %84 = load i8, i8* %13, align 1
  %85 = zext i8 %84 to i32
  switch i32 %85, label %329 [
    i32 135, label %86
    i32 142, label %87
    i32 141, label %102
    i32 140, label %118
    i32 133, label %134
    i32 130, label %152
    i32 129, label %159
    i32 139, label %174
    i32 136, label %196
    i32 137, label %210
    i32 138, label %220
    i32 132, label %242
    i32 128, label %271
    i32 145, label %296
    i32 144, label %303
  ]

86:                                               ; preds = %83
  br label %22

87:                                               ; preds = %83
  %88 = load i8*, i8** %14, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %14, align 8
  %90 = load i8, i8* %88, align 1
  %91 = zext i8 %90 to i32
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.dwarf_cie*, %struct.dwarf_cie** %9, align 8
  %94 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul i32 %92, %95
  %97 = zext i32 %96 to i64
  %98 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %99 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, %97
  store i64 %101, i64* %99, align 8
  br label %333

102:                                              ; preds = %83
  %103 = load i8*, i8** %14, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = call i32 @get_unaligned(i32* %104)
  store i32 %105, i32* %16, align 4
  %106 = load i8*, i8** %14, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 2
  store i8* %107, i8** %14, align 8
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.dwarf_cie*, %struct.dwarf_cie** %9, align 8
  %110 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = mul i32 %108, %111
  %113 = zext i32 %112 to i64
  %114 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %115 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, %113
  store i64 %117, i64* %115, align 8
  br label %333

118:                                              ; preds = %83
  %119 = load i8*, i8** %14, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = call i32 @get_unaligned(i32* %120)
  store i32 %121, i32* %16, align 4
  %122 = load i8*, i8** %14, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 4
  store i8* %123, i8** %14, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load %struct.dwarf_cie*, %struct.dwarf_cie** %9, align 8
  %126 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = mul i32 %124, %127
  %129 = zext i32 %128 to i64
  %130 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %131 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, %129
  store i64 %133, i64* %131, align 8
  br label %333

134:                                              ; preds = %83
  %135 = load i8*, i8** %14, align 8
  %136 = call i32 @dwarf_read_uleb128(i8* %135, i32* %17)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i8*, i8** %14, align 8
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %14, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = call i32 @dwarf_read_uleb128(i8* %141, i32* %19)
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i8*, i8** %14, align 8
  %145 = zext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %14, align 8
  %147 = load %struct.dwarf_cie*, %struct.dwarf_cie** %9, align 8
  %148 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %19, align 4
  %151 = mul i32 %150, %149
  store i32 %151, i32* %19, align 4
  br label %333

152:                                              ; preds = %83
  %153 = load i8*, i8** %14, align 8
  %154 = call i32 @dwarf_read_uleb128(i8* %153, i32* %17)
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i8*, i8** %14, align 8
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %14, align 8
  br label %333

159:                                              ; preds = %83
  %160 = load i8*, i8** %14, align 8
  %161 = call i32 @dwarf_read_uleb128(i8* %160, i32* %17)
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i8*, i8** %14, align 8
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %14, align 8
  %166 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %167 = load i32, i32* %17, align 4
  %168 = call %struct.dwarf_reg* @dwarf_frame_alloc_reg(%struct.dwarf_frame* %166, i32 %167)
  store %struct.dwarf_reg* %168, %struct.dwarf_reg** %20, align 8
  %169 = load i32, i32* @DWARF_UNDEFINED, align 4
  %170 = load %struct.dwarf_reg*, %struct.dwarf_reg** %20, align 8
  %171 = getelementptr inbounds %struct.dwarf_reg, %struct.dwarf_reg* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %333

174:                                              ; preds = %83
  %175 = load i8*, i8** %14, align 8
  %176 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %177 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %176, i32 0, i32 1
  %178 = call i32 @dwarf_read_uleb128(i8* %175, i32* %177)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = load i8*, i8** %14, align 8
  %181 = zext i32 %179 to i64
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  store i8* %182, i8** %14, align 8
  %183 = load i8*, i8** %14, align 8
  %184 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %185 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %184, i32 0, i32 2
  %186 = call i32 @dwarf_read_uleb128(i8* %183, i32* %185)
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %15, align 4
  %188 = load i8*, i8** %14, align 8
  %189 = zext i32 %187 to i64
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  store i8* %190, i8** %14, align 8
  %191 = load i32, i32* @DWARF_FRAME_CFA_REG_OFFSET, align 4
  %192 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %193 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %333

196:                                              ; preds = %83
  %197 = load i8*, i8** %14, align 8
  %198 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %199 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %198, i32 0, i32 1
  %200 = call i32 @dwarf_read_uleb128(i8* %197, i32* %199)
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %15, align 4
  %202 = load i8*, i8** %14, align 8
  %203 = zext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %14, align 8
  %205 = load i32, i32* @DWARF_FRAME_CFA_REG_OFFSET, align 4
  %206 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %207 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  br label %333

210:                                              ; preds = %83
  %211 = load i8*, i8** %14, align 8
  %212 = call i32 @dwarf_read_uleb128(i8* %211, i32* %19)
  store i32 %212, i32* %15, align 4
  %213 = load i32, i32* %15, align 4
  %214 = load i8*, i8** %14, align 8
  %215 = zext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8* %216, i8** %14, align 8
  %217 = load i32, i32* %19, align 4
  %218 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %219 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  br label %333

220:                                              ; preds = %83
  %221 = load i8*, i8** %14, align 8
  %222 = call i32 @dwarf_read_uleb128(i8* %221, i32* %18)
  store i32 %222, i32* %15, align 4
  %223 = load i32, i32* %15, align 4
  %224 = load i8*, i8** %14, align 8
  %225 = zext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8* %226, i8** %14, align 8
  %227 = load i8*, i8** %14, align 8
  %228 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %229 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %228, i32 0, i32 3
  store i8* %227, i8** %229, align 8
  %230 = load i32, i32* %18, align 4
  %231 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %232 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 8
  %233 = load i32, i32* %18, align 4
  %234 = load i8*, i8** %14, align 8
  %235 = zext i32 %233 to i64
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  store i8* %236, i8** %14, align 8
  %237 = load i32, i32* @DWARF_FRAME_CFA_REG_EXP, align 4
  %238 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %239 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  br label %333

242:                                              ; preds = %83
  %243 = load i8*, i8** %14, align 8
  %244 = call i32 @dwarf_read_uleb128(i8* %243, i32* %17)
  store i32 %244, i32* %15, align 4
  %245 = load i32, i32* %15, align 4
  %246 = load i8*, i8** %14, align 8
  %247 = zext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  store i8* %248, i8** %14, align 8
  %249 = load i8*, i8** %14, align 8
  %250 = call i32 @dwarf_read_leb128(i8* %249, i32* %19)
  store i32 %250, i32* %15, align 4
  %251 = load i32, i32* %15, align 4
  %252 = load i8*, i8** %14, align 8
  %253 = zext i32 %251 to i64
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  store i8* %254, i8** %14, align 8
  %255 = load %struct.dwarf_cie*, %struct.dwarf_cie** %9, align 8
  %256 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %19, align 4
  %259 = mul i32 %258, %257
  store i32 %259, i32* %19, align 4
  %260 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %261 = load i32, i32* %17, align 4
  %262 = call %struct.dwarf_reg* @dwarf_frame_alloc_reg(%struct.dwarf_frame* %260, i32 %261)
  store %struct.dwarf_reg* %262, %struct.dwarf_reg** %20, align 8
  %263 = load i32, i32* @DWARF_REG_OFFSET, align 4
  %264 = load %struct.dwarf_reg*, %struct.dwarf_reg** %20, align 8
  %265 = getelementptr inbounds %struct.dwarf_reg, %struct.dwarf_reg* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 4
  %268 = load i32, i32* %19, align 4
  %269 = load %struct.dwarf_reg*, %struct.dwarf_reg** %20, align 8
  %270 = getelementptr inbounds %struct.dwarf_reg, %struct.dwarf_reg* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 4
  br label %333

271:                                              ; preds = %83
  %272 = load i8*, i8** %14, align 8
  %273 = call i32 @dwarf_read_uleb128(i8* %272, i32* %17)
  store i32 %273, i32* %15, align 4
  %274 = load i32, i32* %15, align 4
  %275 = load i8*, i8** %14, align 8
  %276 = zext i32 %274 to i64
  %277 = getelementptr inbounds i8, i8* %275, i64 %276
  store i8* %277, i8** %14, align 8
  %278 = load i8*, i8** %14, align 8
  %279 = call i32 @dwarf_read_leb128(i8* %278, i32* %19)
  store i32 %279, i32* %15, align 4
  %280 = load %struct.dwarf_cie*, %struct.dwarf_cie** %9, align 8
  %281 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %19, align 4
  %284 = mul i32 %283, %282
  store i32 %284, i32* %19, align 4
  %285 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %286 = load i32, i32* %17, align 4
  %287 = call %struct.dwarf_reg* @dwarf_frame_alloc_reg(%struct.dwarf_frame* %285, i32 %286)
  store %struct.dwarf_reg* %287, %struct.dwarf_reg** %20, align 8
  %288 = load i32, i32* @DWARF_VAL_OFFSET, align 4
  %289 = load %struct.dwarf_reg*, %struct.dwarf_reg** %20, align 8
  %290 = getelementptr inbounds %struct.dwarf_reg, %struct.dwarf_reg* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  %293 = load i32, i32* %19, align 4
  %294 = load %struct.dwarf_reg*, %struct.dwarf_reg** %20, align 8
  %295 = getelementptr inbounds %struct.dwarf_reg, %struct.dwarf_reg* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 4
  br label %333

296:                                              ; preds = %83
  %297 = load i8*, i8** %14, align 8
  %298 = call i32 @dwarf_read_uleb128(i8* %297, i32* %19)
  store i32 %298, i32* %15, align 4
  %299 = load i32, i32* %15, align 4
  %300 = load i8*, i8** %14, align 8
  %301 = zext i32 %299 to i64
  %302 = getelementptr inbounds i8, i8* %300, i64 %301
  store i8* %302, i8** %14, align 8
  br label %333

303:                                              ; preds = %83
  %304 = load i8*, i8** %14, align 8
  %305 = call i32 @dwarf_read_uleb128(i8* %304, i32* %17)
  store i32 %305, i32* %15, align 4
  %306 = load i32, i32* %15, align 4
  %307 = load i8*, i8** %14, align 8
  %308 = zext i32 %306 to i64
  %309 = getelementptr inbounds i8, i8* %307, i64 %308
  store i8* %309, i8** %14, align 8
  %310 = load i8*, i8** %14, align 8
  %311 = call i32 @dwarf_read_uleb128(i8* %310, i32* %19)
  store i32 %311, i32* %15, align 4
  %312 = load %struct.dwarf_cie*, %struct.dwarf_cie** %9, align 8
  %313 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* %19, align 4
  %316 = mul i32 %315, %314
  store i32 %316, i32* %19, align 4
  %317 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %318 = load i32, i32* %17, align 4
  %319 = call %struct.dwarf_reg* @dwarf_frame_alloc_reg(%struct.dwarf_frame* %317, i32 %318)
  store %struct.dwarf_reg* %319, %struct.dwarf_reg** %20, align 8
  %320 = load i32, i32* @DWARF_REG_OFFSET, align 4
  %321 = load %struct.dwarf_reg*, %struct.dwarf_reg** %20, align 8
  %322 = getelementptr inbounds %struct.dwarf_reg, %struct.dwarf_reg* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 4
  %325 = load i32, i32* %19, align 4
  %326 = sub i32 0, %325
  %327 = load %struct.dwarf_reg*, %struct.dwarf_reg** %20, align 8
  %328 = getelementptr inbounds %struct.dwarf_reg, %struct.dwarf_reg* %327, i32 0, i32 0
  store i32 %326, i32* %328, align 4
  br label %333

329:                                              ; preds = %83
  %330 = load i8, i8* %13, align 1
  %331 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8 zeroext %330)
  %332 = call i32 (...) @UNWINDER_BUG()
  br label %333

333:                                              ; preds = %329, %303, %296, %271, %242, %220, %210, %196, %174, %159, %152, %134, %118, %102, %87
  br label %22

334:                                              ; preds = %32
  ret i32 0
}

declare dso_local zeroext i8 @__raw_readb(i32) #1

declare dso_local i32 @DW_CFA_opcode(i8 zeroext) #1

declare dso_local i32 @DW_CFA_operand(i8 zeroext) #1

declare dso_local i32 @dwarf_read_uleb128(i8*, i32*) #1

declare dso_local %struct.dwarf_reg* @dwarf_frame_alloc_reg(%struct.dwarf_frame*, i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @dwarf_read_leb128(i8*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i8 zeroext) #1

declare dso_local i32 @UNWINDER_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
