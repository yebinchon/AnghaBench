; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_module.c_apply_relocate_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_module.c_apply_relocate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.module = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Applying relocate section %u to %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"reltype %d 0x%x name:<%s>\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"module %s: relocation overflow\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"module %s: dangerous relocation\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"module %s: Unknown reloc: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_relocate_add(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 %3, %struct.module* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.module*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.module* %4, %struct.module** %11, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %13, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %34)
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %258, %5
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 12
  %47 = icmp ult i64 %38, %46
  br i1 %47, label %48, label %261

48:                                               ; preds = %36
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %61 = load i32, i32* %12, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr i8, i8* %59, i64 %66
  %68 = bitcast i8* %67 to i32*
  store i32* %68, i32** %15, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.TYPE_5__*
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %77 = load i32, i32* %12, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ELF32_R_SYM(i32 %81)
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %83
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %16, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %89 = load i32, i32* %12, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %87, %93
  store i32 %94, i32* %17, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %96 = load i32, i32* %12, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ELF32_R_TYPE(i32 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %103 = load i32, i32* %12, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  %114 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %107, i8* %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %116 = load i32, i32* %12, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ELF32_R_TYPE(i32 %120)
  switch i32 %121, label %243 [
    i32 129, label %122
    i32 134, label %123
    i32 128, label %128
    i32 133, label %160
    i32 132, label %194
    i32 130, label %209
    i32 131, label %223
  ]

122:                                              ; preds = %48
  br label %257

123:                                              ; preds = %48
  %124 = load i32, i32* %17, align 4
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %257

128:                                              ; preds = %48
  %129 = load i32*, i32** %15, align 8
  %130 = ptrtoint i32* %129 to i32
  %131 = add nsw i32 %130, 4
  %132 = load i32, i32* %17, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp sgt i32 %134, 32767
  br i1 %135, label %139, label %136

136:                                              ; preds = %128
  %137 = load i32, i32* %17, align 4
  %138 = icmp slt i32 %137, -32768
  br i1 %138, label %139, label %146

139:                                              ; preds = %136, %128
  %140 = load %struct.module*, %struct.module** %11, align 8
  %141 = getelementptr inbounds %struct.module, %struct.module* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @ENOEXEC, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %6, align 4
  br label %262

146:                                              ; preds = %136
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = ashr i32 %149, 22
  %151 = shl i32 %150, 16
  %152 = load i32, i32* %17, align 4
  %153 = and i32 %152, 65535
  %154 = or i32 %151, %153
  %155 = shl i32 %154, 6
  %156 = load i32, i32* %14, align 4
  %157 = and i32 %156, 63
  %158 = or i32 %155, %157
  %159 = load i32*, i32** %15, align 8
  store i32 %158, i32* %159, align 4
  br label %257

160:                                              ; preds = %48
  %161 = load i32, i32* %17, align 4
  %162 = and i32 %161, 3
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %160
  %165 = load %struct.module*, %struct.module** %11, align 8
  %166 = getelementptr inbounds %struct.module, %struct.module* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @ENOEXEC, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %6, align 4
  br label %262

171:                                              ; preds = %160
  %172 = load i32, i32* %17, align 4
  %173 = ashr i32 %172, 28
  %174 = load i32*, i32** %15, align 8
  %175 = ptrtoint i32* %174 to i32
  %176 = ashr i32 %175, 28
  %177 = icmp ne i32 %173, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load %struct.module*, %struct.module** %11, align 8
  %180 = getelementptr inbounds %struct.module, %struct.module* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* @ENOEXEC, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %6, align 4
  br label %262

185:                                              ; preds = %171
  %186 = load i32*, i32** %15, align 8
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 63
  %189 = load i32, i32* %17, align 4
  %190 = ashr i32 %189, 2
  %191 = shl i32 %190, 6
  %192 = or i32 %188, %191
  %193 = load i32*, i32** %15, align 8
  store i32 %192, i32* %193, align 4
  br label %257

194:                                              ; preds = %48
  %195 = load i32*, i32** %15, align 8
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %14, align 4
  %197 = load i32, i32* %14, align 4
  %198 = ashr i32 %197, 22
  %199 = shl i32 %198, 16
  %200 = load i32, i32* %17, align 4
  %201 = ashr i32 %200, 16
  %202 = and i32 %201, 65535
  %203 = or i32 %199, %202
  %204 = shl i32 %203, 6
  %205 = load i32, i32* %14, align 4
  %206 = and i32 %205, 63
  %207 = or i32 %204, %206
  %208 = load i32*, i32** %15, align 8
  store i32 %207, i32* %208, align 4
  br label %257

209:                                              ; preds = %48
  %210 = load i32*, i32** %15, align 8
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %14, align 4
  %212 = load i32, i32* %14, align 4
  %213 = ashr i32 %212, 22
  %214 = shl i32 %213, 16
  %215 = load i32, i32* %17, align 4
  %216 = and i32 %215, 65535
  %217 = or i32 %214, %216
  %218 = shl i32 %217, 6
  %219 = load i32, i32* %14, align 4
  %220 = and i32 %219, 63
  %221 = or i32 %218, %220
  %222 = load i32*, i32** %15, align 8
  store i32 %221, i32* %222, align 4
  br label %257

223:                                              ; preds = %48
  %224 = load i32*, i32** %15, align 8
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %14, align 4
  %226 = load i32, i32* %17, align 4
  %227 = ashr i32 %226, 16
  %228 = load i32, i32* %17, align 4
  %229 = ashr i32 %228, 15
  %230 = and i32 %229, 1
  %231 = add nsw i32 %227, %230
  %232 = and i32 %231, 65535
  store i32 %232, i32* %18, align 4
  %233 = load i32, i32* %14, align 4
  %234 = ashr i32 %233, 22
  %235 = shl i32 %234, 16
  %236 = load i32, i32* %18, align 4
  %237 = or i32 %235, %236
  %238 = shl i32 %237, 6
  %239 = load i32, i32* %14, align 4
  %240 = and i32 %239, 63
  %241 = or i32 %238, %240
  %242 = load i32*, i32** %15, align 8
  store i32 %241, i32* %242, align 4
  br label %257

243:                                              ; preds = %48
  %244 = load %struct.module*, %struct.module** %11, align 8
  %245 = getelementptr inbounds %struct.module, %struct.module* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %248 = load i32, i32* %12, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @ELF32_R_TYPE(i32 %252)
  %254 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %246, i32 %253)
  %255 = load i32, i32* @ENOEXEC, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %6, align 4
  br label %262

257:                                              ; preds = %223, %209, %194, %185, %146, %123, %122
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %12, align 4
  %260 = add i32 %259, 1
  store i32 %260, i32* %12, align 4
  br label %36

261:                                              ; preds = %36
  store i32 0, i32* %6, align 4
  br label %262

262:                                              ; preds = %261, %243, %178, %164, %139
  %263 = load i32, i32* %6, align 4
  ret i32 %263
}

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @ELF32_R_SYM(i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
