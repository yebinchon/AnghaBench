; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_module_64.c_apply_relocate_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_module_64.c_apply_relocate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64 }
%struct.module = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Applying ADD relocate section %u to %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"RELOC at %p: %li-type as %s (0x%lx) + %li\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: bad TOC16 relocation (0x%lx)\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: bad TOC16_DS relocation (0x%lx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"%s: bad TOC16_LO_DS relocation (0x%lx)\0A\00", align 1
@SHN_UNDEF = common dso_local global i32 0, align 4
@SHN_LIVEPATCH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"%s: REL24 %li out of range!\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%s: REL32 %li out of range!\0A\00", align 1
@PPC_INST_LD = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@R12 = common dso_local global i32 0, align 4
@PPC_INST_ADD = common dso_local global i32 0, align 4
@PPC_INST_ADDIS = common dso_local global i32 0, align 4
@PPC_INST_ADDI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"%s: Unknown ADD relocation: %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_relocate_add(%struct.TYPE_13__* %0, i8* %1, i32 %2, i32 %3, %struct.module* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.module*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.module* %4, %struct.module** %11, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %13, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %31)
  %33 = load %struct.module*, %struct.module** %11, align 8
  %34 = getelementptr inbounds %struct.module, %struct.module* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %5
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.TYPE_12__* @find_dot_toc(%struct.TYPE_13__* %39, i8* %40, i32 %41)
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %14, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = load %struct.module*, %struct.module** %11, align 8
  %48 = call i64 @my_r2(%struct.TYPE_13__* %46, %struct.module* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %45, %38
  %52 = load %struct.module*, %struct.module** %11, align 8
  %53 = getelementptr inbounds %struct.module, %struct.module* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %5
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %516, %55
  %57 = load i32, i32* %12, align 4
  %58 = zext i32 %57 to i64
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = udiv i64 %65, 24
  %67 = icmp ult i64 %58, %66
  br i1 %67, label %68, label %519

68:                                               ; preds = %56
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr i8, i8* %79, i64 %86
  %88 = bitcast i8* %87 to i64*
  store i64* %88, i64** %15, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.TYPE_12__*
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %97 = load i32, i32* %12, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ELF64_R_SYM(i32 %101)
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i64 %103
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %14, align 8
  %105 = load i64*, i64** %15, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ELF64_R_TYPE(i32 %111)
  %113 = sext i32 %112 to i64
  %114 = load i8*, i8** %8, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %114, i64 %118
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %124 = load i32, i32* %12, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64* %105, i64 %113, i8* %119, i64 %122, i64 %128)
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %134 = load i32, i32* %12, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %132, %138
  store i64 %139, i64* %16, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %141 = load i32, i32* %12, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ELF64_R_TYPE(i32 %145)
  switch i32 %146, label %500 [
    i32 142, label %147
    i32 141, label %150
    i32 135, label %153
    i32 134, label %158
    i32 131, label %187
    i32 133, label %204
    i32 130, label %237
    i32 132, label %266
    i32 128, label %286
    i32 136, label %369
    i32 137, label %375
    i32 129, label %394
    i32 140, label %395
    i32 139, label %465
    i32 138, label %484
  ]

147:                                              ; preds = %68
  %148 = load i64, i64* %16, align 8
  %149 = load i64*, i64** %15, align 8
  store i64 %148, i64* %149, align 8
  br label %515

150:                                              ; preds = %68
  %151 = load i64, i64* %16, align 8
  %152 = load i64*, i64** %15, align 8
  store i64 %151, i64* %152, align 8
  br label %515

153:                                              ; preds = %68
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %155 = load %struct.module*, %struct.module** %11, align 8
  %156 = call i64 @my_r2(%struct.TYPE_13__* %154, %struct.module* %155)
  %157 = load i64*, i64** %15, align 8
  store i64 %156, i64* %157, align 8
  br label %515

158:                                              ; preds = %68
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %160 = load %struct.module*, %struct.module** %11, align 8
  %161 = call i64 @my_r2(%struct.TYPE_13__* %159, %struct.module* %160)
  %162 = load i64, i64* %16, align 8
  %163 = sub i64 %162, %161
  store i64 %163, i64* %16, align 8
  %164 = load i64, i64* %16, align 8
  %165 = add i64 %164, 32768
  %166 = icmp ugt i64 %165, 65535
  br i1 %166, label %167, label %175

167:                                              ; preds = %158
  %168 = load %struct.module*, %struct.module** %11, align 8
  %169 = getelementptr inbounds %struct.module, %struct.module* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i64, i64* %16, align 8
  %172 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %170, i64 %171)
  %173 = load i32, i32* @ENOEXEC, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %6, align 4
  br label %520

175:                                              ; preds = %158
  %176 = load i64*, i64** %15, align 8
  %177 = bitcast i64* %176 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, -65536
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %16, align 8
  %182 = and i64 %181, 65535
  %183 = or i64 %180, %182
  %184 = trunc i64 %183 to i32
  %185 = load i64*, i64** %15, align 8
  %186 = bitcast i64* %185 to i32*
  store i32 %184, i32* %186, align 4
  br label %515

187:                                              ; preds = %68
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %189 = load %struct.module*, %struct.module** %11, align 8
  %190 = call i64 @my_r2(%struct.TYPE_13__* %188, %struct.module* %189)
  %191 = load i64, i64* %16, align 8
  %192 = sub i64 %191, %190
  store i64 %192, i64* %16, align 8
  %193 = load i64*, i64** %15, align 8
  %194 = bitcast i64* %193 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %195, -65536
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %16, align 8
  %199 = and i64 %198, 65535
  %200 = or i64 %197, %199
  %201 = trunc i64 %200 to i32
  %202 = load i64*, i64** %15, align 8
  %203 = bitcast i64* %202 to i32*
  store i32 %201, i32* %203, align 4
  br label %515

204:                                              ; preds = %68
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %206 = load %struct.module*, %struct.module** %11, align 8
  %207 = call i64 @my_r2(%struct.TYPE_13__* %205, %struct.module* %206)
  %208 = load i64, i64* %16, align 8
  %209 = sub i64 %208, %207
  store i64 %209, i64* %16, align 8
  %210 = load i64, i64* %16, align 8
  %211 = and i64 %210, 3
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %204
  %214 = load i64, i64* %16, align 8
  %215 = add i64 %214, 32768
  %216 = icmp ugt i64 %215, 65535
  br i1 %216, label %217, label %225

217:                                              ; preds = %213, %204
  %218 = load %struct.module*, %struct.module** %11, align 8
  %219 = getelementptr inbounds %struct.module, %struct.module* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i64, i64* %16, align 8
  %222 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %220, i64 %221)
  %223 = load i32, i32* @ENOEXEC, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %6, align 4
  br label %520

225:                                              ; preds = %213
  %226 = load i64*, i64** %15, align 8
  %227 = bitcast i64* %226 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %228, -65533
  %230 = sext i32 %229 to i64
  %231 = load i64, i64* %16, align 8
  %232 = and i64 %231, 65532
  %233 = or i64 %230, %232
  %234 = trunc i64 %233 to i32
  %235 = load i64*, i64** %15, align 8
  %236 = bitcast i64* %235 to i32*
  store i32 %234, i32* %236, align 4
  br label %515

237:                                              ; preds = %68
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %239 = load %struct.module*, %struct.module** %11, align 8
  %240 = call i64 @my_r2(%struct.TYPE_13__* %238, %struct.module* %239)
  %241 = load i64, i64* %16, align 8
  %242 = sub i64 %241, %240
  store i64 %242, i64* %16, align 8
  %243 = load i64, i64* %16, align 8
  %244 = and i64 %243, 3
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %237
  %247 = load %struct.module*, %struct.module** %11, align 8
  %248 = getelementptr inbounds %struct.module, %struct.module* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i64, i64* %16, align 8
  %251 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %249, i64 %250)
  %252 = load i32, i32* @ENOEXEC, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %6, align 4
  br label %520

254:                                              ; preds = %237
  %255 = load i64*, i64** %15, align 8
  %256 = bitcast i64* %255 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, -65533
  %259 = sext i32 %258 to i64
  %260 = load i64, i64* %16, align 8
  %261 = and i64 %260, 65532
  %262 = or i64 %259, %261
  %263 = trunc i64 %262 to i32
  %264 = load i64*, i64** %15, align 8
  %265 = bitcast i64* %264 to i32*
  store i32 %263, i32* %265, align 4
  br label %515

266:                                              ; preds = %68
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %268 = load %struct.module*, %struct.module** %11, align 8
  %269 = call i64 @my_r2(%struct.TYPE_13__* %267, %struct.module* %268)
  %270 = load i64, i64* %16, align 8
  %271 = sub i64 %270, %269
  store i64 %271, i64* %16, align 8
  %272 = load i64, i64* %16, align 8
  %273 = add i64 %272, 32768
  %274 = lshr i64 %273, 16
  store i64 %274, i64* %16, align 8
  %275 = load i64*, i64** %15, align 8
  %276 = bitcast i64* %275 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, -65536
  %279 = sext i32 %278 to i64
  %280 = load i64, i64* %16, align 8
  %281 = and i64 %280, 65535
  %282 = or i64 %279, %281
  %283 = trunc i64 %282 to i32
  %284 = load i64*, i64** %15, align 8
  %285 = bitcast i64* %284 to i32*
  store i32 %283, i32* %285, align 4
  br label %515

286:                                              ; preds = %68
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @SHN_UNDEF, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %298, label %292

292:                                              ; preds = %286
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @SHN_LIVEPATCH, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %332

298:                                              ; preds = %292, %286
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %300 = load i64, i64* %16, align 8
  %301 = load %struct.module*, %struct.module** %11, align 8
  %302 = call i64 @stub_for_addr(%struct.TYPE_13__* %299, i64 %300, %struct.module* %301)
  store i64 %302, i64* %16, align 8
  %303 = load i64, i64* %16, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %298
  %306 = load i32, i32* @ENOENT, align 4
  %307 = sub nsw i32 0, %306
  store i32 %307, i32* %6, align 4
  br label %520

308:                                              ; preds = %298
  %309 = load i8*, i8** %8, align 8
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, i8* %309, i64 %313
  %315 = load i64*, i64** %15, align 8
  %316 = getelementptr inbounds i64, i64* %315, i64 1
  %317 = load %struct.module*, %struct.module** %11, align 8
  %318 = call i32 @restore_r2(i8* %314, i64* %316, %struct.module* %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %308
  %321 = load i32, i32* @ENOEXEC, align 4
  %322 = sub nsw i32 0, %321
  store i32 %322, i32* %6, align 4
  br label %520

323:                                              ; preds = %308
  %324 = load i8*, i8** %8, align 8
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, i8* %324, i64 %328
  %330 = load i64, i64* %16, align 8
  %331 = call i32 @squash_toc_save_inst(i8* %329, i64 %330)
  br label %337

332:                                              ; preds = %292
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %334 = call i64 @local_entry_offset(%struct.TYPE_12__* %333)
  %335 = load i64, i64* %16, align 8
  %336 = add i64 %335, %334
  store i64 %336, i64* %16, align 8
  br label %337

337:                                              ; preds = %332, %323
  %338 = load i64*, i64** %15, align 8
  %339 = ptrtoint i64* %338 to i64
  %340 = load i64, i64* %16, align 8
  %341 = sub i64 %340, %339
  store i64 %341, i64* %16, align 8
  %342 = load i64, i64* %16, align 8
  %343 = add i64 %342, 33554432
  %344 = icmp ugt i64 %343, 67108863
  br i1 %344, label %349, label %345

345:                                              ; preds = %337
  %346 = load i64, i64* %16, align 8
  %347 = and i64 %346, 3
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %357

349:                                              ; preds = %345, %337
  %350 = load %struct.module*, %struct.module** %11, align 8
  %351 = getelementptr inbounds %struct.module, %struct.module* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load i64, i64* %16, align 8
  %354 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %352, i64 %353)
  %355 = load i32, i32* @ENOEXEC, align 4
  %356 = sub nsw i32 0, %355
  store i32 %356, i32* %6, align 4
  br label %520

357:                                              ; preds = %345
  %358 = load i64*, i64** %15, align 8
  %359 = bitcast i64* %358 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = and i32 %360, -67108861
  %362 = sext i32 %361 to i64
  %363 = load i64, i64* %16, align 8
  %364 = and i64 %363, 67108860
  %365 = or i64 %362, %364
  %366 = trunc i64 %365 to i32
  %367 = load i64*, i64** %15, align 8
  %368 = bitcast i64* %367 to i32*
  store i32 %366, i32* %368, align 4
  br label %515

369:                                              ; preds = %68
  %370 = load i64, i64* %16, align 8
  %371 = load i64*, i64** %15, align 8
  %372 = ptrtoint i64* %371 to i64
  %373 = sub i64 %370, %372
  %374 = load i64*, i64** %15, align 8
  store i64 %373, i64* %374, align 8
  br label %515

375:                                              ; preds = %68
  %376 = load i64*, i64** %15, align 8
  %377 = ptrtoint i64* %376 to i64
  %378 = load i64, i64* %16, align 8
  %379 = sub i64 %378, %377
  store i64 %379, i64* %16, align 8
  %380 = load i64, i64* %16, align 8
  %381 = add i64 %380, 2147483648
  %382 = icmp ugt i64 %381, 4294967295
  br i1 %382, label %383, label %391

383:                                              ; preds = %375
  %384 = load %struct.module*, %struct.module** %11, align 8
  %385 = getelementptr inbounds %struct.module, %struct.module* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = load i64, i64* %16, align 8
  %388 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %386, i64 %387)
  %389 = load i32, i32* @ENOEXEC, align 4
  %390 = sub nsw i32 0, %389
  store i32 %390, i32* %6, align 4
  br label %520

391:                                              ; preds = %375
  %392 = load i64, i64* %16, align 8
  %393 = load i64*, i64** %15, align 8
  store i64 %392, i64* %393, align 8
  br label %515

394:                                              ; preds = %68
  br label %515

395:                                              ; preds = %68
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %397 = load %struct.module*, %struct.module** %11, align 8
  %398 = call i64 @my_r2(%struct.TYPE_13__* %396, %struct.module* %397)
  %399 = load i64*, i64** %15, align 8
  %400 = ptrtoint i64* %399 to i64
  %401 = sub i64 %398, %400
  store i64 %401, i64* %16, align 8
  %402 = load i64, i64* %16, align 8
  %403 = add i64 %402, 2147516416
  %404 = icmp ugt i64 %403, 4294967295
  br i1 %404, label %405, label %406

405:                                              ; preds = %395
  br label %515

406:                                              ; preds = %395
  %407 = load i64*, i64** %15, align 8
  %408 = bitcast i64* %407 to i32*
  %409 = getelementptr inbounds i32, i32* %408, i64 0
  %410 = load i32, i32* %409, align 4
  %411 = and i32 %410, -65533
  %412 = load i32, i32* @PPC_INST_LD, align 4
  %413 = load i32, i32* @R2, align 4
  %414 = call i32 @__PPC_RT(i32 %413)
  %415 = or i32 %412, %414
  %416 = load i32, i32* @R12, align 4
  %417 = call i32 @__PPC_RA(i32 %416)
  %418 = or i32 %415, %417
  %419 = icmp ne i32 %411, %418
  br i1 %419, label %420, label %421

420:                                              ; preds = %406
  br label %515

421:                                              ; preds = %406
  %422 = load i64*, i64** %15, align 8
  %423 = bitcast i64* %422 to i32*
  %424 = getelementptr inbounds i32, i32* %423, i64 1
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @PPC_INST_ADD, align 4
  %427 = load i32, i32* @R2, align 4
  %428 = call i32 @__PPC_RT(i32 %427)
  %429 = or i32 %426, %428
  %430 = load i32, i32* @R2, align 4
  %431 = call i32 @__PPC_RA(i32 %430)
  %432 = or i32 %429, %431
  %433 = load i32, i32* @R12, align 4
  %434 = call i32 @__PPC_RB(i32 %433)
  %435 = or i32 %432, %434
  %436 = icmp ne i32 %425, %435
  br i1 %436, label %437, label %438

437:                                              ; preds = %421
  br label %515

438:                                              ; preds = %421
  %439 = load i32, i32* @PPC_INST_ADDIS, align 4
  %440 = load i32, i32* @R2, align 4
  %441 = call i32 @__PPC_RT(i32 %440)
  %442 = or i32 %439, %441
  %443 = load i32, i32* @R12, align 4
  %444 = call i32 @__PPC_RA(i32 %443)
  %445 = or i32 %442, %444
  %446 = load i64, i64* %16, align 8
  %447 = call i32 @PPC_HA(i64 %446)
  %448 = or i32 %445, %447
  %449 = load i64*, i64** %15, align 8
  %450 = bitcast i64* %449 to i32*
  %451 = getelementptr inbounds i32, i32* %450, i64 0
  store i32 %448, i32* %451, align 4
  %452 = load i32, i32* @PPC_INST_ADDI, align 4
  %453 = load i32, i32* @R2, align 4
  %454 = call i32 @__PPC_RT(i32 %453)
  %455 = or i32 %452, %454
  %456 = load i32, i32* @R2, align 4
  %457 = call i32 @__PPC_RA(i32 %456)
  %458 = or i32 %455, %457
  %459 = load i64, i64* %16, align 8
  %460 = call i32 @PPC_LO(i64 %459)
  %461 = or i32 %458, %460
  %462 = load i64*, i64** %15, align 8
  %463 = bitcast i64* %462 to i32*
  %464 = getelementptr inbounds i32, i32* %463, i64 1
  store i32 %461, i32* %464, align 4
  br label %515

465:                                              ; preds = %68
  %466 = load i64*, i64** %15, align 8
  %467 = ptrtoint i64* %466 to i64
  %468 = load i64, i64* %16, align 8
  %469 = sub i64 %468, %467
  store i64 %469, i64* %16, align 8
  %470 = load i64, i64* %16, align 8
  %471 = add i64 %470, 32768
  %472 = lshr i64 %471, 16
  store i64 %472, i64* %16, align 8
  %473 = load i64*, i64** %15, align 8
  %474 = bitcast i64* %473 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = and i32 %475, -65536
  %477 = sext i32 %476 to i64
  %478 = load i64, i64* %16, align 8
  %479 = and i64 %478, 65535
  %480 = or i64 %477, %479
  %481 = trunc i64 %480 to i32
  %482 = load i64*, i64** %15, align 8
  %483 = bitcast i64* %482 to i32*
  store i32 %481, i32* %483, align 4
  br label %515

484:                                              ; preds = %68
  %485 = load i64*, i64** %15, align 8
  %486 = ptrtoint i64* %485 to i64
  %487 = load i64, i64* %16, align 8
  %488 = sub i64 %487, %486
  store i64 %488, i64* %16, align 8
  %489 = load i64*, i64** %15, align 8
  %490 = bitcast i64* %489 to i32*
  %491 = load i32, i32* %490, align 4
  %492 = and i32 %491, -65536
  %493 = sext i32 %492 to i64
  %494 = load i64, i64* %16, align 8
  %495 = and i64 %494, 65535
  %496 = or i64 %493, %495
  %497 = trunc i64 %496 to i32
  %498 = load i64*, i64** %15, align 8
  %499 = bitcast i64* %498 to i32*
  store i32 %497, i32* %499, align 4
  br label %515

500:                                              ; preds = %68
  %501 = load %struct.module*, %struct.module** %11, align 8
  %502 = getelementptr inbounds %struct.module, %struct.module* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %505 = load i32, i32* %12, align 4
  %506 = zext i32 %505 to i64
  %507 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %504, i64 %506
  %508 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %507, i32 0, i32 2
  %509 = load i32, i32* %508, align 8
  %510 = call i32 @ELF64_R_TYPE(i32 %509)
  %511 = sext i32 %510 to i64
  %512 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %503, i64 %511)
  %513 = load i32, i32* @ENOEXEC, align 4
  %514 = sub nsw i32 0, %513
  store i32 %514, i32* %6, align 4
  br label %520

515:                                              ; preds = %484, %465, %438, %437, %420, %405, %394, %391, %369, %357, %266, %254, %225, %187, %175, %153, %150, %147
  br label %516

516:                                              ; preds = %515
  %517 = load i32, i32* %12, align 4
  %518 = add i32 %517, 1
  store i32 %518, i32* %12, align 4
  br label %56

519:                                              ; preds = %56
  store i32 0, i32* %6, align 4
  br label %520

520:                                              ; preds = %519, %500, %383, %349, %320, %305, %246, %217, %167
  %521 = load i32, i32* %6, align 4
  ret i32 %521
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.TYPE_12__* @find_dot_toc(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i64 @my_r2(%struct.TYPE_13__*, %struct.module*) #1

declare dso_local i32 @ELF64_R_SYM(i32) #1

declare dso_local i32 @ELF64_R_TYPE(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i64 @stub_for_addr(%struct.TYPE_13__*, i64, %struct.module*) #1

declare dso_local i32 @restore_r2(i8*, i64*, %struct.module*) #1

declare dso_local i32 @squash_toc_save_inst(i8*, i64) #1

declare dso_local i64 @local_entry_offset(%struct.TYPE_12__*) #1

declare dso_local i32 @__PPC_RT(i32) #1

declare dso_local i32 @__PPC_RA(i32) #1

declare dso_local i32 @__PPC_RB(i32) #1

declare dso_local i32 @PPC_HA(i64) #1

declare dso_local i32 @PPC_LO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
