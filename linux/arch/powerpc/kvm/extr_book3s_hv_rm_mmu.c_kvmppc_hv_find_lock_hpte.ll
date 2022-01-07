; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_hv_find_lock_hpte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_hv_find_lock_hpte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SLB_VSID_B = common dso_local global i64 0, align 8
@HPTE_V_AVPN = common dso_local global i64 0, align 8
@HPTE_V_SECONDARY = common dso_local global i64 0, align 8
@SLB_VSID_L = common dso_local global i64 0, align 8
@HPTE_V_LARGE = common dso_local global i64 0, align 8
@slb_base_page_shift = common dso_local global i32* null, align 8
@SLB_VSID_LP = common dso_local global i64 0, align 8
@SLB_VSID_B_1T = common dso_local global i64 0, align 8
@SLB_VSID_SHIFT_1T = common dso_local global i64 0, align 8
@SLB_VSID_SHIFT = common dso_local global i64 0, align 8
@HPTE_V_HVLOCK = common dso_local global i64 0, align 8
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmppc_hv_find_lock_hpte(%struct.kvm* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %22 = load i64, i64* @SLB_VSID_B, align 8
  %23 = load i64, i64* @HPTE_V_AVPN, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @HPTE_V_SECONDARY, align 8
  %26 = or i64 %24, %25
  store i64 %26, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i32 12, i32* %11, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @SLB_VSID_L, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %4
  %32 = load i64, i64* @HPTE_V_LARGE, align 8
  %33 = load i64, i64* %17, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %17, align 8
  %35 = load i64, i64* @HPTE_V_LARGE, align 8
  %36 = load i64, i64* %18, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %18, align 8
  %38 = load i32*, i32** @slb_base_page_shift, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @SLB_VSID_LP, align 8
  %41 = and i64 %39, %40
  %42 = lshr i64 %41, 4
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %31, %4
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @SLB_VSID_B_1T, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  store i64 1099511627775, i64* %12, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @SLB_VSID_B, align 8
  %53 = xor i64 %52, -1
  %54 = and i64 %51, %53
  %55 = load i64, i64* @SLB_VSID_SHIFT_1T, align 8
  %56 = lshr i64 %54, %55
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %13, align 8
  %58 = shl i64 %57, 25
  %59 = load i64, i64* %13, align 8
  %60 = xor i64 %59, %58
  store i64 %60, i64* %13, align 8
  br label %68

61:                                               ; preds = %45
  store i64 268435455, i64* %12, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @SLB_VSID_B, align 8
  %64 = xor i64 %63, -1
  %65 = and i64 %62, %64
  %66 = load i64, i64* @SLB_VSID_SHIFT, align 8
  %67 = lshr i64 %65, %66
  store i64 %67, i64* %13, align 8
  br label %68

68:                                               ; preds = %61, %50
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %12, align 8
  %72 = and i64 %70, %71
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = lshr i64 %72, %74
  %76 = xor i64 %69, %75
  %77 = load %struct.kvm*, %struct.kvm** %6, align 8
  %78 = getelementptr inbounds %struct.kvm, %struct.kvm* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = call i64 @kvmppc_hpt_mask(%struct.TYPE_4__* %79)
  %81 = and i64 %76, %80
  store i64 %81, i64* %14, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %12, align 8
  %84 = lshr i64 %83, 16
  %85 = xor i64 %84, -1
  %86 = and i64 %82, %85
  store i64 %86, i64* %15, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %12, align 8
  %89 = and i64 %87, %88
  %90 = lshr i64 %89, 16
  %91 = load i64, i64* %15, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %15, align 8
  %93 = load i32, i32* %11, align 4
  %94 = icmp uge i32 %93, 24
  br i1 %94, label %95, label %104

95:                                               ; preds = %68
  %96 = load i32, i32* %11, align 4
  %97 = sub i32 %96, 16
  %98 = zext i32 %97 to i64
  %99 = shl i64 1, %98
  %100 = sub i64 %99, 1
  %101 = xor i64 %100, -1
  %102 = load i64, i64* %15, align 8
  %103 = and i64 %102, %101
  store i64 %103, i64* %15, align 8
  br label %107

104:                                              ; preds = %68
  %105 = load i64, i64* %15, align 8
  %106 = and i64 %105, -128
  store i64 %106, i64* %15, align 8
  br label %107

107:                                              ; preds = %104, %95
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %18, align 8
  %110 = or i64 %109, %108
  store i64 %110, i64* %18, align 8
  br label %111

111:                                              ; preds = %237, %107
  %112 = load %struct.kvm*, %struct.kvm** %6, align 8
  %113 = getelementptr inbounds %struct.kvm, %struct.kvm* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %14, align 8
  %118 = shl i64 %117, 7
  %119 = add i64 %116, %118
  %120 = inttoptr i64 %119 to i32*
  store i32* %120, i32** %16, align 8
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %228, %111
  %122 = load i32, i32* %10, align 4
  %123 = icmp ult i32 %122, 16
  br i1 %123, label %124, label %231

124:                                              ; preds = %121
  %125 = load i32*, i32** %16, align 8
  %126 = load i32, i32* %10, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @be64_to_cpu(i32 %129)
  %131 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %132 = xor i64 %131, -1
  %133 = and i64 %130, %132
  store i64 %133, i64* %19, align 8
  %134 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %135 = call i64 @cpu_has_feature(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %124
  %138 = load i64, i64* %19, align 8
  %139 = load i32*, i32** %16, align 8
  %140 = load i32, i32* %10, align 4
  %141 = add i32 %140, 1
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @be64_to_cpu(i32 %144)
  %146 = call i64 @hpte_new_to_old_v(i64 %138, i64 %145)
  store i64 %146, i64* %19, align 8
  br label %147

147:                                              ; preds = %137, %124
  %148 = load i64, i64* %19, align 8
  %149 = load i64, i64* %9, align 8
  %150 = and i64 %148, %149
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load i64, i64* %19, align 8
  %154 = load i64, i64* %17, align 8
  %155 = and i64 %153, %154
  %156 = load i64, i64* %18, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %152, %147
  br label %228

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %169, %159
  %161 = load i32*, i32** %16, align 8
  %162 = load i32, i32* %10, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %166 = call i32 @try_lock_hpte(i32* %164, i64 %165)
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  br i1 %168, label %169, label %171

169:                                              ; preds = %160
  %170 = call i32 (...) @cpu_relax()
  br label %160

171:                                              ; preds = %160
  %172 = load i32*, i32** %16, align 8
  %173 = load i32, i32* %10, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @be64_to_cpu(i32 %176)
  %178 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %179 = xor i64 %178, -1
  %180 = and i64 %177, %179
  store i64 %180, i64* %21, align 8
  store i64 %180, i64* %19, align 8
  %181 = load i32*, i32** %16, align 8
  %182 = load i32, i32* %10, align 4
  %183 = add i32 %182, 1
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @be64_to_cpu(i32 %186)
  store i64 %187, i64* %20, align 8
  %188 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %189 = call i64 @cpu_has_feature(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %171
  %192 = load i64, i64* %19, align 8
  %193 = load i64, i64* %20, align 8
  %194 = call i64 @hpte_new_to_old_v(i64 %192, i64 %193)
  store i64 %194, i64* %19, align 8
  %195 = load i64, i64* %20, align 8
  %196 = call i64 @hpte_new_to_old_r(i64 %195)
  store i64 %196, i64* %20, align 8
  br label %197

197:                                              ; preds = %191, %171
  %198 = load i64, i64* %19, align 8
  %199 = load i64, i64* %9, align 8
  %200 = and i64 %198, %199
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %221

202:                                              ; preds = %197
  %203 = load i64, i64* %19, align 8
  %204 = load i64, i64* %17, align 8
  %205 = and i64 %203, %204
  %206 = load i64, i64* %18, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %202
  %209 = load i64, i64* %19, align 8
  %210 = load i64, i64* %20, align 8
  %211 = call i32 @kvmppc_hpte_base_page_shift(i64 %209, i64 %210)
  %212 = load i32, i32* %11, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %208
  %215 = load i64, i64* %14, align 8
  %216 = shl i64 %215, 3
  %217 = load i32, i32* %10, align 4
  %218 = lshr i32 %217, 1
  %219 = zext i32 %218 to i64
  %220 = add i64 %216, %219
  store i64 %220, i64* %5, align 8
  br label %248

221:                                              ; preds = %208, %202, %197
  %222 = load i32*, i32** %16, align 8
  %223 = load i32, i32* %10, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i64, i64* %21, align 8
  %227 = call i32 @__unlock_hpte(i32* %225, i64 %226)
  br label %228

228:                                              ; preds = %221, %158
  %229 = load i32, i32* %10, align 4
  %230 = add i32 %229, 2
  store i32 %230, i32* %10, align 4
  br label %121

231:                                              ; preds = %121
  %232 = load i64, i64* %18, align 8
  %233 = load i64, i64* @HPTE_V_SECONDARY, align 8
  %234 = and i64 %232, %233
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  br label %247

237:                                              ; preds = %231
  %238 = load i64, i64* @HPTE_V_SECONDARY, align 8
  %239 = load i64, i64* %18, align 8
  %240 = or i64 %239, %238
  store i64 %240, i64* %18, align 8
  %241 = load i64, i64* %14, align 8
  %242 = load %struct.kvm*, %struct.kvm** %6, align 8
  %243 = getelementptr inbounds %struct.kvm, %struct.kvm* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 0
  %245 = call i64 @kvmppc_hpt_mask(%struct.TYPE_4__* %244)
  %246 = xor i64 %241, %245
  store i64 %246, i64* %14, align 8
  br label %111

247:                                              ; preds = %236
  store i64 -1, i64* %5, align 8
  br label %248

248:                                              ; preds = %247, %214
  %249 = load i64, i64* %5, align 8
  ret i64 %249
}

declare dso_local i64 @kvmppc_hpt_mask(%struct.TYPE_4__*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @hpte_new_to_old_v(i64, i64) #1

declare dso_local i32 @try_lock_hpte(i32*, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @hpte_new_to_old_r(i64) #1

declare dso_local i32 @kvmppc_hpte_base_page_shift(i64, i64) #1

declare dso_local i32 @__unlock_hpte(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
