; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_tm_builtin.c_kvmhv_p9_tm_emulation_early.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_tm_builtin.c_kvmhv_p9_tm_emulation_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@MSR_TM = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@PCR_ARCH_206 = common dso_local global i32 0, align 4
@HFSCR_EBB = common dso_local global i32 0, align 4
@SPRN_FSCR = common dso_local global i32 0, align 4
@FSCR_EBB = common dso_local global i32 0, align 4
@SPRN_BESCR = common dso_local global i32 0, align 4
@BESCR_GE = common dso_local global i32 0, align 4
@MSR_TS_MASK = common dso_local global i32 0, align 4
@MSR_TS_T = common dso_local global i32 0, align 4
@SPRN_EBBRR = common dso_local global i32 0, align 4
@MSR_LE = common dso_local global i32 0, align 4
@HFSCR_TM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmhv_p9_tm_emulation_early(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, -67106817
  switch i32 %14, label %246 [
    i32 129, label %15
    i32 130, label %56
    i32 131, label %147
    i32 128, label %184
  ]

15:                                               ; preds = %1
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @MSR_TM_TRANSACTIONAL(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MSR_TM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %15
  store i32 0, i32* %2, align 4
  br label %247

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @sanitize_msr(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 4
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  store i32 %43, i32* %46, align 8
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  store i32 1, i32* %2, align 4
  br label %247

56:                                               ; preds = %1
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @MSR_PR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %56
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PCR_ARCH_206, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %247

77:                                               ; preds = %66, %56
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @HFSCR_EBB, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %77
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @MSR_PR, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load i32, i32* @SPRN_FSCR, align 4
  %92 = call i32 @mfspr(i32 %91)
  %93 = load i32, i32* @FSCR_EBB, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90, %77
  store i32 0, i32* %2, align 4
  br label %247

97:                                               ; preds = %90, %85
  %98 = load i32, i32* @SPRN_BESCR, align 4
  %99 = call i32 @mfspr(i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = ashr i32 %100, 30
  %102 = and i32 %101, 3
  %103 = icmp ne i32 %102, 2
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %247

105:                                              ; preds = %97
  %106 = load i32, i32* @BESCR_GE, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %4, align 4
  %111 = and i32 %110, 2048
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i32, i32* @BESCR_GE, align 4
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %113, %105
  %118 = load i32, i32* @SPRN_BESCR, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @mtspr(i32 %118, i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @MSR_TS_MASK, align 4
  %123 = xor i32 %122, -1
  %124 = and i32 %121, %123
  %125 = load i32, i32* @MSR_TS_T, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %129 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  store i32 %127, i32* %131, align 4
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %133 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 4
  %138 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %139 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 5
  store i32 %137, i32* %140, align 8
  %141 = load i32, i32* @SPRN_EBBRR, align 4
  %142 = call i32 @mfspr(i32 %141)
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %144 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  store i32 %142, i32* %146, align 8
  store i32 1, i32* %2, align 4
  br label %247

147:                                              ; preds = %1
  %148 = load i32, i32* %4, align 4
  %149 = ashr i32 %148, 21
  %150 = and i32 %149, 31
  store i32 %150, i32* %8, align 4
  %151 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %151, i32 %152)
  store i32 %153, i32* %5, align 4
  %154 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %155 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @MSR_TM_TRANSACTIONAL(i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %147
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @MSR_TM, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %162, %147
  store i32 0, i32* %2, align 4
  br label %247

168:                                              ; preds = %162
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @MSR_LE, align 4
  %171 = xor i32 %170, -1
  %172 = and i32 %169, %171
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @MSR_LE, align 4
  %175 = and i32 %173, %174
  %176 = or i32 %172, %175
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @sanitize_msr(i32 %177)
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %181 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  store i32 %179, i32* %183, align 4
  store i32 1, i32* %2, align 4
  br label %247

184:                                              ; preds = %1
  %185 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %186 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @MSR_PR, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %184
  %195 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %196 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 4
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @PCR_ARCH_206, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %194
  store i32 0, i32* %2, align 4
  br label %247

205:                                              ; preds = %194, %184
  %206 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %207 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @HFSCR_TM, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %205
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @MSR_TM, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %213, %205
  store i32 0, i32* %2, align 4
  br label %247

219:                                              ; preds = %213
  %220 = load i32, i32* %4, align 4
  %221 = and i32 %220, 2097152
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %219
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* @MSR_TS_MASK, align 4
  %226 = xor i32 %225, -1
  %227 = and i32 %224, %226
  %228 = load i32, i32* @MSR_TS_T, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %231 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  store i32 %229, i32* %233, align 4
  br label %234

234:                                              ; preds = %223, %219
  %235 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %236 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, 268435455
  %241 = or i32 %240, 536870912
  %242 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %243 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 1
  store i32 %241, i32* %245, align 4
  store i32 1, i32* %2, align 4
  br label %247

246:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %247

247:                                              ; preds = %246, %234, %218, %204, %168, %167, %117, %104, %96, %76, %30, %29
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local i32 @MSR_TM_TRANSACTIONAL(i32) #1

declare dso_local i32 @sanitize_msr(i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @kvmppc_get_gpr(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
