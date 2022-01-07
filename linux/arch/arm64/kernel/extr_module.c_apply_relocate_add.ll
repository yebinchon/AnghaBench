; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_module.c_apply_relocate_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_module.c_apply_relocate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.module = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i64 }

@RELOC_OP_ABS = common dso_local global i32 0, align 4
@RELOC_OP_PREL = common dso_local global i32 0, align 4
@AARCH64_INSN_IMM_MOVKZ = common dso_local global i32 0, align 4
@AARCH64_INSN_IMM_MOVNZ = common dso_local global i32 0, align 4
@AARCH64_INSN_IMM_19 = common dso_local global i32 0, align 4
@AARCH64_INSN_IMM_ADR = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@AARCH64_INSN_IMM_12 = common dso_local global i32 0, align 4
@AARCH64_INSN_IMM_14 = common dso_local global i32 0, align 4
@AARCH64_INSN_IMM_26 = common dso_local global i32 0, align 4
@CONFIG_ARM64_MODULE_PLTS = common dso_local global i32 0, align 4
@ENOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"module %s: unsupported RELA relocation: %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"module %s: overflow in relocation type %d val %Lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_relocate_add(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32 %3, %struct.module* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.module*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.module* %4, %struct.module** %11, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %18, align 8
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %341, %5
  %28 = load i32, i32* %12, align 4
  %29 = zext i32 %28 to i64
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 16
  %38 = icmp ult i64 %29, %37
  br i1 %38, label %39, label %344

39:                                               ; preds = %27
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %52 = load i32, i32* %12, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* %50, i64 %57
  store i8* %58, i8** %16, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.TYPE_9__*
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %67 = load i32, i32* %12, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ELF64_R_SYM(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %73
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %15, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %79 = load i32, i32* %12, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %77, %83
  store i64 %84, i64* %17, align 8
  store i32 1, i32* %14, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ELF64_R_TYPE(i32 %90)
  switch i32 %91, label %317 [
    i32 128, label %92
    i32 133, label %92
    i32 164, label %93
    i32 165, label %98
    i32 166, label %103
    i32 130, label %108
    i32 131, label %113
    i32 132, label %118
    i32 139, label %123
    i32 140, label %124
    i32 137, label %130
    i32 138, label %131
    i32 135, label %137
    i32 136, label %138
    i32 134, label %144
    i32 143, label %150
    i32 142, label %156
    i32 141, label %162
    i32 149, label %168
    i32 150, label %174
    i32 147, label %180
    i32 148, label %186
    i32 145, label %192
    i32 146, label %198
    i32 144, label %204
    i32 151, label %210
    i32 162, label %216
    i32 160, label %222
    i32 161, label %223
    i32 163, label %239
    i32 152, label %239
    i32 155, label %245
    i32 154, label %251
    i32 153, label %257
    i32 156, label %263
    i32 129, label %269
    i32 158, label %275
    i32 157, label %281
    i32 159, label %281
  ]

92:                                               ; preds = %39, %39
  store i32 0, i32* %13, align 4
  br label %331

93:                                               ; preds = %39
  store i32 0, i32* %14, align 4
  %94 = load i32, i32* @RELOC_OP_ABS, align 4
  %95 = load i8*, i8** %16, align 8
  %96 = load i64, i64* %17, align 8
  %97 = call i32 @reloc_data(i32 %94, i8* %95, i64 %96, i32 64)
  store i32 %97, i32* %13, align 4
  br label %331

98:                                               ; preds = %39
  %99 = load i32, i32* @RELOC_OP_ABS, align 4
  %100 = load i8*, i8** %16, align 8
  %101 = load i64, i64* %17, align 8
  %102 = call i32 @reloc_data(i32 %99, i8* %100, i64 %101, i32 32)
  store i32 %102, i32* %13, align 4
  br label %331

103:                                              ; preds = %39
  %104 = load i32, i32* @RELOC_OP_ABS, align 4
  %105 = load i8*, i8** %16, align 8
  %106 = load i64, i64* %17, align 8
  %107 = call i32 @reloc_data(i32 %104, i8* %105, i64 %106, i32 16)
  store i32 %107, i32* %13, align 4
  br label %331

108:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  %109 = load i32, i32* @RELOC_OP_PREL, align 4
  %110 = load i8*, i8** %16, align 8
  %111 = load i64, i64* %17, align 8
  %112 = call i32 @reloc_data(i32 %109, i8* %110, i64 %111, i32 64)
  store i32 %112, i32* %13, align 4
  br label %331

113:                                              ; preds = %39
  %114 = load i32, i32* @RELOC_OP_PREL, align 4
  %115 = load i8*, i8** %16, align 8
  %116 = load i64, i64* %17, align 8
  %117 = call i32 @reloc_data(i32 %114, i8* %115, i64 %116, i32 32)
  store i32 %117, i32* %13, align 4
  br label %331

118:                                              ; preds = %39
  %119 = load i32, i32* @RELOC_OP_PREL, align 4
  %120 = load i8*, i8** %16, align 8
  %121 = load i64, i64* %17, align 8
  %122 = call i32 @reloc_data(i32 %119, i8* %120, i64 %121, i32 16)
  store i32 %122, i32* %13, align 4
  br label %331

123:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  br label %124

124:                                              ; preds = %39, %123
  %125 = load i32, i32* @RELOC_OP_ABS, align 4
  %126 = load i8*, i8** %16, align 8
  %127 = load i64, i64* %17, align 8
  %128 = load i32, i32* @AARCH64_INSN_IMM_MOVKZ, align 4
  %129 = call i32 @reloc_insn_movw(i32 %125, i8* %126, i64 %127, i32 0, i32 %128)
  store i32 %129, i32* %13, align 4
  br label %331

130:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  br label %131

131:                                              ; preds = %39, %130
  %132 = load i32, i32* @RELOC_OP_ABS, align 4
  %133 = load i8*, i8** %16, align 8
  %134 = load i64, i64* %17, align 8
  %135 = load i32, i32* @AARCH64_INSN_IMM_MOVKZ, align 4
  %136 = call i32 @reloc_insn_movw(i32 %132, i8* %133, i64 %134, i32 16, i32 %135)
  store i32 %136, i32* %13, align 4
  br label %331

137:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %39, %137
  %139 = load i32, i32* @RELOC_OP_ABS, align 4
  %140 = load i8*, i8** %16, align 8
  %141 = load i64, i64* %17, align 8
  %142 = load i32, i32* @AARCH64_INSN_IMM_MOVKZ, align 4
  %143 = call i32 @reloc_insn_movw(i32 %139, i8* %140, i64 %141, i32 32, i32 %142)
  store i32 %143, i32* %13, align 4
  br label %331

144:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  %145 = load i32, i32* @RELOC_OP_ABS, align 4
  %146 = load i8*, i8** %16, align 8
  %147 = load i64, i64* %17, align 8
  %148 = load i32, i32* @AARCH64_INSN_IMM_MOVKZ, align 4
  %149 = call i32 @reloc_insn_movw(i32 %145, i8* %146, i64 %147, i32 48, i32 %148)
  store i32 %149, i32* %13, align 4
  br label %331

150:                                              ; preds = %39
  %151 = load i32, i32* @RELOC_OP_ABS, align 4
  %152 = load i8*, i8** %16, align 8
  %153 = load i64, i64* %17, align 8
  %154 = load i32, i32* @AARCH64_INSN_IMM_MOVNZ, align 4
  %155 = call i32 @reloc_insn_movw(i32 %151, i8* %152, i64 %153, i32 0, i32 %154)
  store i32 %155, i32* %13, align 4
  br label %331

156:                                              ; preds = %39
  %157 = load i32, i32* @RELOC_OP_ABS, align 4
  %158 = load i8*, i8** %16, align 8
  %159 = load i64, i64* %17, align 8
  %160 = load i32, i32* @AARCH64_INSN_IMM_MOVNZ, align 4
  %161 = call i32 @reloc_insn_movw(i32 %157, i8* %158, i64 %159, i32 16, i32 %160)
  store i32 %161, i32* %13, align 4
  br label %331

162:                                              ; preds = %39
  %163 = load i32, i32* @RELOC_OP_ABS, align 4
  %164 = load i8*, i8** %16, align 8
  %165 = load i64, i64* %17, align 8
  %166 = load i32, i32* @AARCH64_INSN_IMM_MOVNZ, align 4
  %167 = call i32 @reloc_insn_movw(i32 %163, i8* %164, i64 %165, i32 32, i32 %166)
  store i32 %167, i32* %13, align 4
  br label %331

168:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  %169 = load i32, i32* @RELOC_OP_PREL, align 4
  %170 = load i8*, i8** %16, align 8
  %171 = load i64, i64* %17, align 8
  %172 = load i32, i32* @AARCH64_INSN_IMM_MOVKZ, align 4
  %173 = call i32 @reloc_insn_movw(i32 %169, i8* %170, i64 %171, i32 0, i32 %172)
  store i32 %173, i32* %13, align 4
  br label %331

174:                                              ; preds = %39
  %175 = load i32, i32* @RELOC_OP_PREL, align 4
  %176 = load i8*, i8** %16, align 8
  %177 = load i64, i64* %17, align 8
  %178 = load i32, i32* @AARCH64_INSN_IMM_MOVNZ, align 4
  %179 = call i32 @reloc_insn_movw(i32 %175, i8* %176, i64 %177, i32 0, i32 %178)
  store i32 %179, i32* %13, align 4
  br label %331

180:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  %181 = load i32, i32* @RELOC_OP_PREL, align 4
  %182 = load i8*, i8** %16, align 8
  %183 = load i64, i64* %17, align 8
  %184 = load i32, i32* @AARCH64_INSN_IMM_MOVKZ, align 4
  %185 = call i32 @reloc_insn_movw(i32 %181, i8* %182, i64 %183, i32 16, i32 %184)
  store i32 %185, i32* %13, align 4
  br label %331

186:                                              ; preds = %39
  %187 = load i32, i32* @RELOC_OP_PREL, align 4
  %188 = load i8*, i8** %16, align 8
  %189 = load i64, i64* %17, align 8
  %190 = load i32, i32* @AARCH64_INSN_IMM_MOVNZ, align 4
  %191 = call i32 @reloc_insn_movw(i32 %187, i8* %188, i64 %189, i32 16, i32 %190)
  store i32 %191, i32* %13, align 4
  br label %331

192:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  %193 = load i32, i32* @RELOC_OP_PREL, align 4
  %194 = load i8*, i8** %16, align 8
  %195 = load i64, i64* %17, align 8
  %196 = load i32, i32* @AARCH64_INSN_IMM_MOVKZ, align 4
  %197 = call i32 @reloc_insn_movw(i32 %193, i8* %194, i64 %195, i32 32, i32 %196)
  store i32 %197, i32* %13, align 4
  br label %331

198:                                              ; preds = %39
  %199 = load i32, i32* @RELOC_OP_PREL, align 4
  %200 = load i8*, i8** %16, align 8
  %201 = load i64, i64* %17, align 8
  %202 = load i32, i32* @AARCH64_INSN_IMM_MOVNZ, align 4
  %203 = call i32 @reloc_insn_movw(i32 %199, i8* %200, i64 %201, i32 32, i32 %202)
  store i32 %203, i32* %13, align 4
  br label %331

204:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  %205 = load i32, i32* @RELOC_OP_PREL, align 4
  %206 = load i8*, i8** %16, align 8
  %207 = load i64, i64* %17, align 8
  %208 = load i32, i32* @AARCH64_INSN_IMM_MOVNZ, align 4
  %209 = call i32 @reloc_insn_movw(i32 %205, i8* %206, i64 %207, i32 48, i32 %208)
  store i32 %209, i32* %13, align 4
  br label %331

210:                                              ; preds = %39
  %211 = load i32, i32* @RELOC_OP_PREL, align 4
  %212 = load i8*, i8** %16, align 8
  %213 = load i64, i64* %17, align 8
  %214 = load i32, i32* @AARCH64_INSN_IMM_19, align 4
  %215 = call i32 @reloc_insn_imm(i32 %211, i8* %212, i64 %213, i32 2, i32 19, i32 %214)
  store i32 %215, i32* %13, align 4
  br label %331

216:                                              ; preds = %39
  %217 = load i32, i32* @RELOC_OP_PREL, align 4
  %218 = load i8*, i8** %16, align 8
  %219 = load i64, i64* %17, align 8
  %220 = load i32, i32* @AARCH64_INSN_IMM_ADR, align 4
  %221 = call i32 @reloc_insn_imm(i32 %217, i8* %218, i64 %219, i32 0, i32 21, i32 %220)
  store i32 %221, i32* %13, align 4
  br label %331

222:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  br label %223

223:                                              ; preds = %39, %222
  %224 = load %struct.module*, %struct.module** %11, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %226 = load i8*, i8** %16, align 8
  %227 = load i64, i64* %17, align 8
  %228 = call i32 @reloc_insn_adrp(%struct.module* %224, %struct.TYPE_10__* %225, i8* %226, i64 %227)
  store i32 %228, i32* %13, align 4
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %223
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* @ERANGE, align 4
  %234 = sub nsw i32 0, %233
  %235 = icmp ne i32 %232, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %231
  %237 = load i32, i32* %13, align 4
  store i32 %237, i32* %6, align 4
  br label %360

238:                                              ; preds = %231, %223
  br label %331

239:                                              ; preds = %39, %39
  store i32 0, i32* %14, align 4
  %240 = load i32, i32* @RELOC_OP_ABS, align 4
  %241 = load i8*, i8** %16, align 8
  %242 = load i64, i64* %17, align 8
  %243 = load i32, i32* @AARCH64_INSN_IMM_12, align 4
  %244 = call i32 @reloc_insn_imm(i32 %240, i8* %241, i64 %242, i32 0, i32 12, i32 %243)
  store i32 %244, i32* %13, align 4
  br label %331

245:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  %246 = load i32, i32* @RELOC_OP_ABS, align 4
  %247 = load i8*, i8** %16, align 8
  %248 = load i64, i64* %17, align 8
  %249 = load i32, i32* @AARCH64_INSN_IMM_12, align 4
  %250 = call i32 @reloc_insn_imm(i32 %246, i8* %247, i64 %248, i32 1, i32 11, i32 %249)
  store i32 %250, i32* %13, align 4
  br label %331

251:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  %252 = load i32, i32* @RELOC_OP_ABS, align 4
  %253 = load i8*, i8** %16, align 8
  %254 = load i64, i64* %17, align 8
  %255 = load i32, i32* @AARCH64_INSN_IMM_12, align 4
  %256 = call i32 @reloc_insn_imm(i32 %252, i8* %253, i64 %254, i32 2, i32 10, i32 %255)
  store i32 %256, i32* %13, align 4
  br label %331

257:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  %258 = load i32, i32* @RELOC_OP_ABS, align 4
  %259 = load i8*, i8** %16, align 8
  %260 = load i64, i64* %17, align 8
  %261 = load i32, i32* @AARCH64_INSN_IMM_12, align 4
  %262 = call i32 @reloc_insn_imm(i32 %258, i8* %259, i64 %260, i32 3, i32 9, i32 %261)
  store i32 %262, i32* %13, align 4
  br label %331

263:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  %264 = load i32, i32* @RELOC_OP_ABS, align 4
  %265 = load i8*, i8** %16, align 8
  %266 = load i64, i64* %17, align 8
  %267 = load i32, i32* @AARCH64_INSN_IMM_12, align 4
  %268 = call i32 @reloc_insn_imm(i32 %264, i8* %265, i64 %266, i32 4, i32 8, i32 %267)
  store i32 %268, i32* %13, align 4
  br label %331

269:                                              ; preds = %39
  %270 = load i32, i32* @RELOC_OP_PREL, align 4
  %271 = load i8*, i8** %16, align 8
  %272 = load i64, i64* %17, align 8
  %273 = load i32, i32* @AARCH64_INSN_IMM_14, align 4
  %274 = call i32 @reloc_insn_imm(i32 %270, i8* %271, i64 %272, i32 2, i32 14, i32 %273)
  store i32 %274, i32* %13, align 4
  br label %331

275:                                              ; preds = %39
  %276 = load i32, i32* @RELOC_OP_PREL, align 4
  %277 = load i8*, i8** %16, align 8
  %278 = load i64, i64* %17, align 8
  %279 = load i32, i32* @AARCH64_INSN_IMM_19, align 4
  %280 = call i32 @reloc_insn_imm(i32 %276, i8* %277, i64 %278, i32 2, i32 19, i32 %279)
  store i32 %280, i32* %13, align 4
  br label %331

281:                                              ; preds = %39, %39
  %282 = load i32, i32* @RELOC_OP_PREL, align 4
  %283 = load i8*, i8** %16, align 8
  %284 = load i64, i64* %17, align 8
  %285 = load i32, i32* @AARCH64_INSN_IMM_26, align 4
  %286 = call i32 @reloc_insn_imm(i32 %282, i8* %283, i64 %284, i32 2, i32 26, i32 %285)
  store i32 %286, i32* %13, align 4
  %287 = load i32, i32* @CONFIG_ARM64_MODULE_PLTS, align 4
  %288 = call i32 @IS_ENABLED(i32 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %316

290:                                              ; preds = %281
  %291 = load i32, i32* %13, align 4
  %292 = load i32, i32* @ERANGE, align 4
  %293 = sub nsw i32 0, %292
  %294 = icmp eq i32 %291, %293
  br i1 %294, label %295, label %316

295:                                              ; preds = %290
  %296 = load %struct.module*, %struct.module** %11, align 8
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %298 = load i8*, i8** %16, align 8
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %300 = load i32, i32* %12, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i64 %301
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %304 = call i64 @module_emit_plt_entry(%struct.module* %296, %struct.TYPE_10__* %297, i8* %298, %struct.TYPE_11__* %302, %struct.TYPE_9__* %303)
  store i64 %304, i64* %17, align 8
  %305 = load i64, i64* %17, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %295
  %308 = load i32, i32* @ENOEXEC, align 4
  %309 = sub nsw i32 0, %308
  store i32 %309, i32* %6, align 4
  br label %360

310:                                              ; preds = %295
  %311 = load i32, i32* @RELOC_OP_PREL, align 4
  %312 = load i8*, i8** %16, align 8
  %313 = load i64, i64* %17, align 8
  %314 = load i32, i32* @AARCH64_INSN_IMM_26, align 4
  %315 = call i32 @reloc_insn_imm(i32 %311, i8* %312, i64 %313, i32 2, i32 26, i32 %314)
  store i32 %315, i32* %13, align 4
  br label %316

316:                                              ; preds = %310, %290, %281
  br label %331

317:                                              ; preds = %39
  %318 = load %struct.module*, %struct.module** %11, align 8
  %319 = getelementptr inbounds %struct.module, %struct.module* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %322 = load i32, i32* %12, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @ELF64_R_TYPE(i32 %326)
  %328 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %320, i32 %327)
  %329 = load i32, i32* @ENOEXEC, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %6, align 4
  br label %360

331:                                              ; preds = %316, %275, %269, %263, %257, %251, %245, %239, %238, %216, %210, %204, %198, %192, %186, %180, %174, %168, %162, %156, %150, %144, %138, %131, %124, %118, %113, %108, %103, %98, %93, %92
  %332 = load i32, i32* %14, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %331
  %335 = load i32, i32* %13, align 4
  %336 = load i32, i32* @ERANGE, align 4
  %337 = sub nsw i32 0, %336
  %338 = icmp eq i32 %335, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %334
  br label %345

340:                                              ; preds = %334, %331
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %12, align 4
  %343 = add i32 %342, 1
  store i32 %343, i32* %12, align 4
  br label %27

344:                                              ; preds = %27
  store i32 0, i32* %6, align 4
  br label %360

345:                                              ; preds = %339
  %346 = load %struct.module*, %struct.module** %11, align 8
  %347 = getelementptr inbounds %struct.module, %struct.module* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %350 = load i32, i32* %12, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @ELF64_R_TYPE(i32 %354)
  %356 = load i64, i64* %17, align 8
  %357 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %348, i32 %355, i64 %356)
  %358 = load i32, i32* @ENOEXEC, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %6, align 4
  br label %360

360:                                              ; preds = %345, %344, %317, %307, %236
  %361 = load i32, i32* %6, align 4
  ret i32 %361
}

declare dso_local i32 @ELF64_R_SYM(i32) #1

declare dso_local i32 @ELF64_R_TYPE(i32) #1

declare dso_local i32 @reloc_data(i32, i8*, i64, i32) #1

declare dso_local i32 @reloc_insn_movw(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @reloc_insn_imm(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @reloc_insn_adrp(%struct.module*, %struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @module_emit_plt_entry(%struct.module*, %struct.TYPE_10__*, i8*, %struct.TYPE_11__*, %struct.TYPE_9__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
