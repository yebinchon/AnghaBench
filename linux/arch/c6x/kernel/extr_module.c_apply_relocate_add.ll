; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/kernel/extr_module.c_apply_relocate_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/kernel/extr_module.c_apply_relocate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.module = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Applying relocate section %u to %u with offset 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"RELA ABS32: [%p] = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"RELA ABS16: [%p] = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"RELA ABS8: [%p] = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"RELA ABS_L16[%p] v[0x%x] opcode[0x%x]\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"RELA ABS_H16[%p] v[0x%x] opcode[0x%x]\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"module %s: Unknown RELA relocation: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_relocate_add(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 %3, %struct.module* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.module*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
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
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %12, align 8
  store i8* null, i8** %18, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i8*, i8** %18, align 8
  %35 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %33, i8* %34)
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %198, %5
  %37 = load i32, i32* %16, align 4
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
  br i1 %47, label %48, label %201

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
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = load i32, i32* %16, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr i8, i8* %59, i64 %66
  %68 = load i8*, i8** %18, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %14, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.TYPE_5__*
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %81 = load i32, i32* %16, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ELF32_R_SYM(i32 %85)
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %87
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %13, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %93 = load i32, i32* %16, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %91, %97
  store i32 %98, i32* %17, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %100 = load i32, i32* %16, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ELF32_R_TYPE(i32 %104)
  switch i32 %105, label %183 [
    i32 134, label %106
    i32 135, label %112
    i32 133, label %118
    i32 131, label %124
    i32 132, label %140
    i32 128, label %156
    i32 129, label %165
    i32 130, label %174
  ]

106:                                              ; preds = %48
  %107 = load i32*, i32** %14, align 8
  %108 = load i32, i32* %17, align 4
  %109 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %107, i32 %108)
  %110 = load i32, i32* %17, align 4
  %111 = load i32*, i32** %14, align 8
  store i32 %110, i32* %111, align 4
  br label %197

112:                                              ; preds = %48
  %113 = load i32*, i32** %14, align 8
  %114 = load i32, i32* %17, align 4
  %115 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %113, i32 %114)
  %116 = load i32, i32* %17, align 4
  %117 = load i32*, i32** %14, align 8
  store i32 %116, i32* %117, align 4
  br label %197

118:                                              ; preds = %48
  %119 = load i32*, i32** %14, align 8
  %120 = load i32, i32* %17, align 4
  %121 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %119, i32 %120)
  %122 = load i32, i32* %17, align 4
  %123 = load i32*, i32** %14, align 8
  store i32 %122, i32* %123, align 4
  br label %197

124:                                              ; preds = %48
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = and i32 %127, -8388481
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %17, align 4
  %130 = and i32 %129, 65535
  %131 = shl i32 %130, 7
  %132 = load i32, i32* %15, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %15, align 4
  %134 = load i32*, i32** %14, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %15, align 4
  %137 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32* %134, i32 %135, i32 %136)
  %138 = load i32, i32* %15, align 4
  %139 = load i32*, i32** %14, align 8
  store i32 %138, i32* %139, align 4
  br label %197

140:                                              ; preds = %48
  %141 = load i32*, i32** %14, align 8
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = and i32 %143, -8388481
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %17, align 4
  %146 = ashr i32 %145, 9
  %147 = and i32 %146, 8388480
  %148 = load i32, i32* %15, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %15, align 4
  %150 = load i32*, i32** %14, align 8
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %15, align 4
  %153 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32* %150, i32 %151, i32 %152)
  %154 = load i32, i32* %15, align 4
  %155 = load i32*, i32** %14, align 8
  store i32 %154, i32* %155, align 4
  br label %197

156:                                              ; preds = %48
  %157 = load i32*, i32** %14, align 8
  %158 = load i32, i32* %17, align 4
  %159 = call i32 @fixup_pcr(i32* %157, i32 %158, i32 21, i32 7)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* @ENOEXEC, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %6, align 4
  br label %202

164:                                              ; preds = %156
  br label %197

165:                                              ; preds = %48
  %166 = load i32*, i32** %14, align 8
  %167 = load i32, i32* %17, align 4
  %168 = call i32 @fixup_pcr(i32* %166, i32 %167, i32 12, i32 16)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, i32* @ENOEXEC, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %6, align 4
  br label %202

173:                                              ; preds = %165
  br label %197

174:                                              ; preds = %48
  %175 = load i32*, i32** %14, align 8
  %176 = load i32, i32* %17, align 4
  %177 = call i32 @fixup_pcr(i32* %175, i32 %176, i32 10, i32 13)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* @ENOEXEC, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %6, align 4
  br label %202

182:                                              ; preds = %174
  br label %197

183:                                              ; preds = %48
  %184 = load %struct.module*, %struct.module** %11, align 8
  %185 = getelementptr inbounds %struct.module, %struct.module* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %188 = load i32, i32* %16, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @ELF32_R_TYPE(i32 %192)
  %194 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %186, i32 %193)
  %195 = load i32, i32* @ENOEXEC, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %6, align 4
  br label %202

197:                                              ; preds = %182, %173, %164, %140, %124, %118, %112, %106
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %16, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %16, align 4
  br label %36

201:                                              ; preds = %36
  store i32 0, i32* %6, align 4
  br label %202

202:                                              ; preds = %201, %183, %179, %170, %161
  %203 = load i32, i32* %6, align 4
  ret i32 %203
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @ELF32_R_SYM(i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @fixup_pcr(i32*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
