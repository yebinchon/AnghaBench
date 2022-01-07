; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_traps_32.c_handle_unaligned_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_traps_32.c_handle_unaligned_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i8** }
%struct.mem_access = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@PERF_COUNT_SW_ALIGNMENT_FAULTS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_unaligned_access(i32 %0, %struct.pt_regs* %1, %struct.mem_access* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca %struct.mem_access*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %8, align 8
  store %struct.mem_access* %2, %struct.mem_access** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @instruction_size(i32 %15)
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %258

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 15
  store i32 %24, i32* %14, align 4
  %25 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 3
  %27 = load i8**, i8*** %26, align 8
  %28 = load i32, i32* %14, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %12, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @current, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %38 = call i32 @unaligned_fixups_notify(i32 %35, i32 %36, %struct.pt_regs* %37)
  %39 = load i32, i32* @PERF_COUNT_SW_ALIGNMENT_FAULTS, align 4
  %40 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @perf_sw_event(i32 %39, i32 1, %struct.pt_regs* %40, i64 %41)
  br label %43

43:                                               ; preds = %34, %21
  %44 = load i32, i32* @EFAULT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 61440
  switch i32 %47, label %240 [
    i32 0, label %48
    i32 4096, label %117
    i32 8192, label %118
    i32 16384, label %119
    i32 20480, label %162
    i32 24576, label %163
    i32 32768, label %164
    i32 36864, label %202
    i32 40960, label %203
    i32 45056, label %218
    i32 53248, label %239
  ]

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 11
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.mem_access*, %struct.mem_access** %9, align 8
  %55 = call i32 @handle_delayslot(%struct.pt_regs* %52, i32 %53, %struct.mem_access* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %58, %51
  br label %116

65:                                               ; preds = %48
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 255
  %68 = icmp eq i32 %67, 35
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.mem_access*, %struct.mem_access** %9, align 8
  %73 = call i32 @handle_delayslot(%struct.pt_regs* %70, i32 %71, %struct.mem_access* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr i8, i8* %77, i64 4
  %79 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr i8, i8* %78, i64 %82
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* %80, align 8
  br label %85

85:                                               ; preds = %76, %69
  br label %115

86:                                               ; preds = %65
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, 255
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.mem_access*, %struct.mem_access** %9, align 8
  %94 = call i32 @handle_delayslot(%struct.pt_regs* %91, i32 %92, %struct.mem_access* %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %90
  %98 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %99 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 4
  %102 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %103 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i8*, i8** %12, align 8
  %105 = getelementptr i8, i8* %104, i64 4
  %106 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %107 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr i8, i8* %105, i64 %109
  %111 = ptrtoint i8* %110 to i32
  store i32 %111, i32* %107, align 8
  br label %112

112:                                              ; preds = %97, %90
  br label %114

113:                                              ; preds = %86
  br label %242

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %114, %85
  br label %116

116:                                              ; preds = %115, %64
  br label %240

117:                                              ; preds = %43
  br label %242

118:                                              ; preds = %43
  br label %242

119:                                              ; preds = %43
  %120 = load i32, i32* %7, align 4
  %121 = and i32 %120, 255
  %122 = icmp eq i32 %121, 43
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.mem_access*, %struct.mem_access** %9, align 8
  %127 = call i32 @handle_delayslot(%struct.pt_regs* %124, i32 %125, %struct.mem_access* %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load i8*, i8** %12, align 8
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %134 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %130, %123
  br label %161

136:                                              ; preds = %119
  %137 = load i32, i32* %7, align 4
  %138 = and i32 %137, 255
  %139 = icmp eq i32 %138, 11
  br i1 %139, label %140, label %159

140:                                              ; preds = %136
  %141 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.mem_access*, %struct.mem_access** %9, align 8
  %144 = call i32 @handle_delayslot(%struct.pt_regs* %141, i32 %142, %struct.mem_access* %143)
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %140
  %148 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %149 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 4
  %152 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %153 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i8*, i8** %12, align 8
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %157 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %147, %140
  br label %160

159:                                              ; preds = %136
  br label %242

160:                                              ; preds = %158
  br label %161

161:                                              ; preds = %160, %135
  br label %240

162:                                              ; preds = %43
  br label %242

163:                                              ; preds = %43
  br label %242

164:                                              ; preds = %43
  %165 = load i32, i32* %7, align 4
  %166 = and i32 %165, 3840
  switch i32 %166, label %201 [
    i32 256, label %167
    i32 1280, label %168
    i32 2816, label %169
    i32 3840, label %170
    i32 2304, label %185
    i32 3328, label %186
  ]

167:                                              ; preds = %164
  br label %242

168:                                              ; preds = %164
  br label %242

169:                                              ; preds = %164
  store i32 0, i32* %13, align 4
  br label %201

170:                                              ; preds = %164
  %171 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.mem_access*, %struct.mem_access** %9, align 8
  %174 = call i32 @handle_delayslot(%struct.pt_regs* %171, i32 %172, %struct.mem_access* %173)
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %170
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @SH_PC_8BIT_OFFSET(i32 %178)
  %180 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %181 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, %179
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %177, %170
  br label %201

185:                                              ; preds = %164
  store i32 0, i32* %13, align 4
  br label %201

186:                                              ; preds = %164
  %187 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load %struct.mem_access*, %struct.mem_access** %9, align 8
  %190 = call i32 @handle_delayslot(%struct.pt_regs* %187, i32 %188, %struct.mem_access* %189)
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %186
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @SH_PC_8BIT_OFFSET(i32 %194)
  %196 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %197 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %193, %186
  br label %201

201:                                              ; preds = %164, %200, %185, %184, %169
  br label %240

202:                                              ; preds = %43
  br label %242

203:                                              ; preds = %43
  %204 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %205 = load i32, i32* %7, align 4
  %206 = load %struct.mem_access*, %struct.mem_access** %9, align 8
  %207 = call i32 @handle_delayslot(%struct.pt_regs* %204, i32 %205, %struct.mem_access* %206)
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %13, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %203
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @SH_PC_12BIT_OFFSET(i32 %211)
  %213 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %214 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %210, %203
  br label %240

218:                                              ; preds = %43
  %219 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %220 = load i32, i32* %7, align 4
  %221 = load %struct.mem_access*, %struct.mem_access** %9, align 8
  %222 = call i32 @handle_delayslot(%struct.pt_regs* %219, i32 %220, %struct.mem_access* %221)
  store i32 %222, i32* %13, align 4
  %223 = load i32, i32* %13, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %218
  %226 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %227 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, 4
  %230 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %231 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @SH_PC_12BIT_OFFSET(i32 %232)
  %234 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %235 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %225, %218
  br label %240

239:                                              ; preds = %43
  br label %242

240:                                              ; preds = %43, %238, %217, %201, %161, %116
  %241 = load i32, i32* %13, align 4
  store i32 %241, i32* %6, align 4
  br label %258

242:                                              ; preds = %239, %202, %168, %167, %163, %162, %159, %118, %117, %113
  %243 = load i32, i32* %7, align 4
  %244 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %245 = load %struct.mem_access*, %struct.mem_access** %9, align 8
  %246 = call i32 @handle_unaligned_ins(i32 %243, %struct.pt_regs* %244, %struct.mem_access* %245)
  store i32 %246, i32* %13, align 4
  %247 = load i32, i32* %13, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %242
  %250 = load i32, i32* %7, align 4
  %251 = call i32 @instruction_size(i32 %250)
  %252 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %253 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %249, %242
  %257 = load i32, i32* %13, align 4
  store i32 %257, i32* %6, align 4
  br label %258

258:                                              ; preds = %256, %240, %18
  %259 = load i32, i32* %6, align 4
  ret i32 %259
}

declare dso_local i32 @instruction_size(i32) #1

declare dso_local i32 @unaligned_fixups_notify(i32, i32, %struct.pt_regs*) #1

declare dso_local i32 @perf_sw_event(i32, i32, %struct.pt_regs*, i64) #1

declare dso_local i32 @handle_delayslot(%struct.pt_regs*, i32, %struct.mem_access*) #1

declare dso_local i32 @SH_PC_8BIT_OFFSET(i32) #1

declare dso_local i32 @SH_PC_12BIT_OFFSET(i32) #1

declare dso_local i32 @handle_unaligned_ins(i32, %struct.pt_regs*, %struct.mem_access*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
