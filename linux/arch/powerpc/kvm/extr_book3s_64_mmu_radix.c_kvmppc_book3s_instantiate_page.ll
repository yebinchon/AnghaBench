; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_book3s_instantiate_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_book3s_instantiate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__, %struct.kvm* }
%struct.TYPE_4__ = type { i32 }
%struct.kvm = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.kvm_memory_slot = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@RESUME_GUEST = common dso_local global i32 0, align 4
@KVM_MEM_LOG_DIRTY_PAGES = common dso_local global i32 0, align 4
@PUD_SHIFT = common dso_local global i32 0, align 4
@PUD_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PMD_SHIFT = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i64 0, align 8
@_PAGE_EXEC = common dso_local global i32 0, align 4
@_PAGE_ACCESSED = common dso_local global i32 0, align 4
@_PAGE_WRITE = common dso_local global i32 0, align 4
@_PAGE_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_book3s_instantiate_page(%struct.kvm_vcpu* %0, i64 %1, %struct.kvm_memory_slot* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.kvm_memory_slot*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.kvm*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.kvm_memory_slot* %2, %struct.kvm_memory_slot** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 1
  %33 = load %struct.kvm*, %struct.kvm** %32, align 8
  store %struct.kvm* %33, %struct.kvm** %16, align 8
  store %struct.page* null, %struct.page** %17, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @PAGE_SHIFT, align 8
  %36 = lshr i64 %34, %35
  store i64 %36, i64* %20, align 8
  store i32 0, i32* %21, align 4
  store i32* %21, i32** %22, align 8
  %37 = load %struct.kvm*, %struct.kvm** %16, align 8
  %38 = getelementptr inbounds %struct.kvm, %struct.kvm* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %18, align 8
  %40 = call i32 (...) @smp_rmb()
  %41 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %11, align 8
  %42 = load i64, i64* %20, align 8
  %43 = call i64 @gfn_to_hva_memslot(%struct.kvm_memory_slot* %41, i64 %42)
  store i64 %43, i64* %19, align 8
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %7
  %47 = load i64, i64* %19, align 8
  %48 = call i32 @__get_user_pages_fast(i64 %47, i32 1, i32 1, %struct.page** %17)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %21, align 4
  br label %76

51:                                               ; preds = %46, %7
  %52 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %11, align 8
  %53 = load i64, i64* %20, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32*, i32** %22, align 8
  %56 = call i64 @__gfn_to_pfn_memslot(%struct.kvm_memory_slot* %52, i64 %53, i32 0, i32* null, i32 %54, i32* %55)
  store i64 %56, i64* %29, align 8
  %57 = load i64, i64* %29, align 8
  %58 = call i64 @is_error_noslot_pfn(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %272

63:                                               ; preds = %51
  store %struct.page* null, %struct.page** %17, align 8
  %64 = load i64, i64* %29, align 8
  %65 = call i64 @pfn_valid(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i64, i64* %29, align 8
  %69 = call %struct.page* @pfn_to_page(i64 %68)
  store %struct.page* %69, %struct.page** %17, align 8
  %70 = load %struct.page*, %struct.page** %17, align 8
  %71 = call i64 @PageReserved(%struct.page* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store %struct.page* null, %struct.page** %17, align 8
  br label %74

74:                                               ; preds = %73, %67
  br label %75

75:                                               ; preds = %74, %63
  br label %76

76:                                               ; preds = %75, %50
  %77 = call i32 (...) @local_irq_disable()
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %19, align 8
  %83 = call i32* @__find_linux_pte(i32 %81, i64 %82, i32* null, i32* %25)
  store i32* %83, i32** %24, align 8
  %84 = load i32*, i32** %24, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %76
  %87 = call i32 (...) @local_irq_enable()
  %88 = load %struct.page*, %struct.page** %17, align 8
  %89 = icmp ne %struct.page* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.page*, %struct.page** %17, align 8
  %92 = call i32 @put_page(%struct.page* %91)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %94, i32* %8, align 4
  br label %272

95:                                               ; preds = %76
  %96 = load i32*, i32** %24, align 8
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %23, align 4
  %98 = call i32 (...) @local_irq_enable()
  %99 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %11, align 8
  %100 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @KVM_MEM_LOG_DIRTY_PAGES, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %28, align 4
  %107 = load i32, i32* %28, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %95
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* @PUD_SHIFT, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* @PUD_SIZE, align 8
  %116 = load i64, i64* @PAGE_SIZE, align 8
  %117 = sub i64 %115, %116
  %118 = and i64 %114, %117
  %119 = load i64, i64* %19, align 8
  %120 = load i64, i64* @PUD_SIZE, align 8
  %121 = load i64, i64* @PAGE_SIZE, align 8
  %122 = sub i64 %120, %121
  %123 = and i64 %119, %122
  %124 = icmp eq i64 %118, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %113
  store i32 2, i32* %26, align 4
  br label %168

126:                                              ; preds = %113, %109, %95
  %127 = load i32, i32* %28, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %126
  %130 = load i32, i32* %25, align 4
  %131 = load i32, i32* @PMD_SHIFT, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* @PMD_SIZE, align 8
  %136 = load i64, i64* @PAGE_SIZE, align 8
  %137 = sub i64 %135, %136
  %138 = and i64 %134, %137
  %139 = load i64, i64* %19, align 8
  %140 = load i64, i64* @PMD_SIZE, align 8
  %141 = load i64, i64* @PAGE_SIZE, align 8
  %142 = sub i64 %140, %141
  %143 = and i64 %139, %142
  %144 = icmp eq i64 %138, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  store i32 1, i32* %26, align 4
  br label %167

146:                                              ; preds = %133, %129, %126
  store i32 0, i32* %26, align 4
  %147 = load i32, i32* %25, align 4
  %148 = zext i32 %147 to i64
  %149 = load i64, i64* @PAGE_SHIFT, align 8
  %150 = icmp ugt i64 %148, %149
  br i1 %150, label %151, label %166

151:                                              ; preds = %146
  %152 = load i32, i32* %25, align 4
  %153 = zext i32 %152 to i64
  %154 = shl i64 1, %153
  %155 = load i64, i64* @PAGE_SIZE, align 8
  %156 = sub i64 %154, %155
  store i64 %156, i64* %30, align 8
  %157 = load i32, i32* %23, align 4
  %158 = call i32 @pte_val(i32 %157)
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %19, align 8
  %161 = load i64, i64* %30, align 8
  %162 = and i64 %160, %161
  %163 = or i64 %159, %162
  %164 = trunc i64 %163 to i32
  %165 = call i32 @__pte(i32 %164)
  store i32 %165, i32* %23, align 4
  br label %166

166:                                              ; preds = %151, %146
  br label %167

167:                                              ; preds = %166, %145
  br label %168

168:                                              ; preds = %167, %125
  %169 = load i32, i32* %23, align 4
  %170 = call i32 @pte_val(i32 %169)
  %171 = load i32, i32* @_PAGE_EXEC, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @_PAGE_ACCESSED, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @__pte(i32 %174)
  store i32 %175, i32* %23, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %168
  %179 = load i32, i32* %21, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %178, %168
  %182 = load i32, i32* %23, align 4
  %183 = call i32 @pte_val(i32 %182)
  %184 = load i32, i32* @_PAGE_WRITE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load i32, i32* %23, align 4
  %189 = call i32 @pte_val(i32 %188)
  %190 = load i32, i32* @_PAGE_DIRTY, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @__pte(i32 %191)
  store i32 %192, i32* %23, align 4
  br label %193

193:                                              ; preds = %187, %181
  br label %203

194:                                              ; preds = %178
  %195 = load i32, i32* %23, align 4
  %196 = call i32 @pte_val(i32 %195)
  %197 = load i32, i32* @_PAGE_WRITE, align 4
  %198 = load i32, i32* @_PAGE_DIRTY, align 4
  %199 = or i32 %197, %198
  %200 = xor i32 %199, -1
  %201 = and i32 %196, %200
  %202 = call i32 @__pte(i32 %201)
  store i32 %202, i32* %23, align 4
  br label %203

203:                                              ; preds = %194, %193
  %204 = load %struct.kvm*, %struct.kvm** %16, align 8
  %205 = load %struct.kvm*, %struct.kvm** %16, align 8
  %206 = getelementptr inbounds %struct.kvm, %struct.kvm* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %23, align 4
  %210 = load i64, i64* %10, align 8
  %211 = load i32, i32* %26, align 4
  %212 = load i64, i64* %18, align 8
  %213 = load %struct.kvm*, %struct.kvm** %16, align 8
  %214 = getelementptr inbounds %struct.kvm, %struct.kvm* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @kvmppc_create_pte(%struct.kvm* %204, i32 %208, i32 %209, i64 %210, i32 %211, i64 %212, i32 %216, i32* null, i32* null)
  store i32 %217, i32* %27, align 4
  %218 = load i32*, i32** %14, align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %203
  %221 = load i32, i32* %23, align 4
  %222 = load i32*, i32** %14, align 8
  store i32 %221, i32* %222, align 4
  br label %223

223:                                              ; preds = %220, %203
  %224 = load i32*, i32** %15, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i32, i32* %26, align 4
  %228 = load i32*, i32** %15, align 8
  store i32 %227, i32* %228, align 4
  br label %229

229:                                              ; preds = %226, %223
  %230 = load %struct.page*, %struct.page** %17, align 8
  %231 = icmp ne %struct.page* %230, null
  br i1 %231, label %232, label %247

232:                                              ; preds = %229
  %233 = load i32, i32* %27, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %244, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %23, align 4
  %237 = call i32 @pte_val(i32 %236)
  %238 = load i32, i32* @_PAGE_WRITE, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %235
  %242 = load %struct.page*, %struct.page** %17, align 8
  %243 = call i32 @set_page_dirty_lock(%struct.page* %242)
  br label %244

244:                                              ; preds = %241, %235, %232
  %245 = load %struct.page*, %struct.page** %17, align 8
  %246 = call i32 @put_page(%struct.page* %245)
  br label %247

247:                                              ; preds = %244, %229
  %248 = load i32, i32* %27, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %270, label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %26, align 4
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %253, label %259

253:                                              ; preds = %250
  %254 = load %struct.kvm*, %struct.kvm** %16, align 8
  %255 = getelementptr inbounds %struct.kvm, %struct.kvm* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 4
  br label %269

259:                                              ; preds = %250
  %260 = load i32, i32* %26, align 4
  %261 = icmp eq i32 %260, 2
  br i1 %261, label %262, label %268

262:                                              ; preds = %259
  %263 = load %struct.kvm*, %struct.kvm** %16, align 8
  %264 = getelementptr inbounds %struct.kvm, %struct.kvm* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 8
  br label %268

268:                                              ; preds = %262, %259
  br label %269

269:                                              ; preds = %268, %253
  br label %270

270:                                              ; preds = %269, %247
  %271 = load i32, i32* %27, align 4
  store i32 %271, i32* %8, align 4
  br label %272

272:                                              ; preds = %270, %93, %60
  %273 = load i32, i32* %8, align 4
  ret i32 %273
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @gfn_to_hva_memslot(%struct.kvm_memory_slot*, i64) #1

declare dso_local i32 @__get_user_pages_fast(i64, i32, i32, %struct.page**) #1

declare dso_local i64 @__gfn_to_pfn_memslot(%struct.kvm_memory_slot*, i64, i32, i32*, i32, i32*) #1

declare dso_local i64 @is_error_noslot_pfn(i64) #1

declare dso_local i64 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @PageReserved(%struct.page*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32* @__find_linux_pte(i32, i64, i32*, i32*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @__pte(i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @kvmppc_create_pte(%struct.kvm*, i32, i32, i64, i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @set_page_dirty_lock(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
