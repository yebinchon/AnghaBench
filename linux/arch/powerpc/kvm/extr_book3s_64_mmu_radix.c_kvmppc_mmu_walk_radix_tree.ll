; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_mmu_walk_radix_tree.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_mmu_walk_radix_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.kvmppc_pte = type { i32, i64, i64, i32, i32, i32, i32, i32 }

@RTS1_MASK = common dso_local global i32 0, align 4
@RTS1_SHIFT = common dso_local global i32 0, align 4
@RTS2_MASK = common dso_local global i32 0, align 4
@RTS2_SHIFT = common dso_local global i32 0, align 4
@RPDS_MASK = common dso_local global i32 0, align 4
@RPDB_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@p9_supported_radix_bits = common dso_local global i64* null, align 8
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@_PAGE_PTE = common dso_local global i32 0, align 4
@MMU_PAGE_4K = common dso_local global i32 0, align 4
@MMU_PAGE_COUNT = common dso_local global i32 0, align 4
@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@_PAGE_READ = common dso_local global i32 0, align 4
@_PAGE_WRITE = common dso_local global i32 0, align 4
@_PAGE_EXEC = common dso_local global i32 0, align 4
@_PAGE_ACCESSED = common dso_local global i32 0, align 4
@_PAGE_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_mmu_walk_radix_tree(%struct.kvm_vcpu* %0, i64 %1, %struct.kvmppc_pte* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kvmppc_pte*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.kvm*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.kvmppc_pte* %2, %struct.kvmppc_pte** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = load %struct.kvm*, %struct.kvm** %26, align 8
  store %struct.kvm* %27, %struct.kvm** %12, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @RTS1_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @RTS1_SHIFT, align 4
  %32 = sub nsw i32 %31, 3
  %33 = ashr i32 %30, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @RTS2_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @RTS2_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = or i32 %33, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %16, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @RPDS_MASK, align 4
  %43 = and i32 %41, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %17, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @RPDB_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %21, align 4
  %48 = load i64, i64* %16, align 8
  %49 = add i64 %48, 31
  store i64 %49, i64* %18, align 8
  %50 = load i64, i64* %18, align 8
  %51 = icmp ne i64 %50, 52
  br i1 %51, label %52, label %55

52:                                               ; preds = %5
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %260

55:                                               ; preds = %5
  store i32 3, i32* %14, align 4
  br label %56

56:                                               ; preds = %151, %55
  %57 = load i32, i32* %14, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %154

59:                                               ; preds = %56
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i64, i64* %17, align 8
  %64 = load i64*, i64** @p9_supported_radix_bits, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %63, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %260

73:                                               ; preds = %62, %59
  %74 = load i32, i32* %14, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i64, i64* %17, align 8
  %78 = icmp eq i64 %77, 5
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %17, align 8
  %81 = icmp eq i64 %80, 9
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %260

85:                                               ; preds = %79, %76, %73
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* %18, align 8
  %88 = sub i64 %87, %86
  store i64 %88, i64* %18, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %18, align 8
  %91 = lshr i64 %89, %90
  %92 = load i64, i64* %17, align 8
  %93 = shl i64 1, %92
  %94 = sub i64 %93, 1
  %95 = and i64 %91, %94
  store i64 %95, i64* %19, align 8
  %96 = load i32, i32* %21, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %17, align 8
  %99 = add i64 %98, 3
  %100 = shl i64 1, %99
  %101 = sub i64 %100, 1
  %102 = and i64 %97, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %85
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %260

107:                                              ; preds = %85
  %108 = load i32, i32* %21, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %19, align 8
  %111 = mul i64 %110, 4
  %112 = add i64 %109, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %24, align 4
  %114 = load %struct.kvm*, %struct.kvm** %12, align 8
  %115 = load i32, i32* %24, align 4
  %116 = call i32 @kvm_read_guest(%struct.kvm* %114, i32 %115, i32* %23, i32 4)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %107
  %120 = load i32*, i32** %11, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %24, align 4
  %124 = load i32*, i32** %11, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %6, align 4
  br label %260

127:                                              ; preds = %107
  %128 = load i32, i32* %23, align 4
  %129 = call i32 @__be64_to_cpu(i32 %128)
  store i32 %129, i32* %20, align 4
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* @_PAGE_PRESENT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* @ENOENT, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %260

137:                                              ; preds = %127
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* @_PAGE_PTE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %154

143:                                              ; preds = %137
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* @RPDB_MASK, align 4
  %146 = and i32 %144, %145
  store i32 %146, i32* %21, align 4
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* @RPDS_MASK, align 4
  %149 = and i32 %147, %148
  %150 = sext i32 %149 to i64
  store i64 %150, i64* %17, align 8
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %14, align 4
  br label %56

154:                                              ; preds = %142, %56
  %155 = load i32, i32* %14, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %14, align 4
  %159 = icmp eq i32 %158, 3
  br i1 %159, label %160, label %163

160:                                              ; preds = %157, %154
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %6, align 4
  br label %260

163:                                              ; preds = %157
  %164 = load i32, i32* %20, align 4
  %165 = sext i32 %164 to i64
  %166 = and i64 %165, 144115188075851776
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %22, align 4
  %168 = load i32, i32* %22, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* %18, align 8
  %171 = shl i64 1, %170
  %172 = sub i64 %171, 1
  %173 = and i64 %169, %172
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %163
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %6, align 4
  br label %260

178:                                              ; preds = %163
  %179 = load i64, i64* %8, align 8
  %180 = load i64, i64* %18, align 8
  %181 = shl i64 1, %180
  %182 = sub i64 %181, 1
  %183 = and i64 %179, %182
  %184 = load i32, i32* %22, align 4
  %185 = sext i32 %184 to i64
  %186 = or i64 %185, %183
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %22, align 4
  %188 = load i32, i32* @MMU_PAGE_4K, align 4
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %204, %178
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* @MMU_PAGE_COUNT, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %207

193:                                              ; preds = %189
  %194 = load i64, i64* %18, align 8
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %194, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %193
  br label %207

203:                                              ; preds = %193
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %15, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %15, align 4
  br label %189

207:                                              ; preds = %202, %189
  %208 = load i32, i32* %15, align 4
  %209 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %210 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load i64, i64* %18, align 8
  %212 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %213 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %212, i32 0, i32 1
  store i64 %211, i64* %213, align 8
  %214 = load i64, i64* %8, align 8
  %215 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %216 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %215, i32 0, i32 2
  store i64 %214, i64* %216, align 8
  %217 = load i32, i32* %22, align 4
  %218 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %219 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* %20, align 4
  %221 = load i32, i32* @_PAGE_READ, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %228 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %227, i32 0, i32 4
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* %20, align 4
  %230 = load i32, i32* @_PAGE_WRITE, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %237 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 8
  %238 = load i32, i32* %20, align 4
  %239 = load i32, i32* @_PAGE_EXEC, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  %243 = xor i1 %242, true
  %244 = zext i1 %243 to i32
  %245 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %246 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %245, i32 0, i32 6
  store i32 %244, i32* %246, align 4
  %247 = load i32, i32* %20, align 4
  %248 = load i32, i32* @_PAGE_ACCESSED, align 4
  %249 = load i32, i32* @_PAGE_DIRTY, align 4
  %250 = or i32 %248, %249
  %251 = and i32 %247, %250
  %252 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %253 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %252, i32 0, i32 7
  store i32 %251, i32* %253, align 8
  %254 = load i32*, i32** %11, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %207
  %257 = load i32, i32* %20, align 4
  %258 = load i32*, i32** %11, align 8
  store i32 %257, i32* %258, align 4
  br label %259

259:                                              ; preds = %256, %207
  store i32 0, i32* %6, align 4
  br label %260

260:                                              ; preds = %259, %175, %160, %134, %125, %104, %82, %70, %52
  %261 = load i32, i32* %6, align 4
  ret i32 %261
}

declare dso_local i32 @kvm_read_guest(%struct.kvm*, i32, i32*, i32) #1

declare dso_local i32 @__be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
