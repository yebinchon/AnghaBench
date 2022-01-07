; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c___radix__flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c___radix__flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mm_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@mmu_psize_defs = common dso_local global %struct.TYPE_4__* null, align 8
@mmu_virtual_psize = common dso_local global i64 0, align 8
@MMU_NO_CONTEXT = common dso_local global i64 0, align 8
@TLB_FLUSH_ALL = common dso_local global i64 0, align 8
@tlb_single_page_flush_ceiling = common dso_local global i64 0, align 8
@tlb_local_single_page_flush_ceiling = common dso_local global i64 0, align 8
@RIC_FLUSH_TLB = common dso_local global i32 0, align 4
@RIC_FLUSH_ALL = common dso_local global i32 0, align 4
@CONFIG_TRANSPARENT_HUGEPAGE = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i64 0, align 8
@PMD_MASK = common dso_local global i64 0, align 8
@PUD_SIZE = common dso_local global i64 0, align 8
@PUD_MASK = common dso_local global i64 0, align 8
@MMU_PAGE_2M = common dso_local global i64 0, align 8
@MMU_PAGE_1G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i64, i64, i32)* @__radix__flush_tlb_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__radix__flush_tlb_range(%struct.mm_struct* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mmu_psize_defs, align 8
  %22 = load i64, i64* @mmu_virtual_psize, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = shl i64 1, %27
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = sub i64 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = lshr i64 %31, %33
  store i64 %34, i64* %12, align 8
  %35 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @MMU_NO_CONTEXT, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %4
  br label %258

46:                                               ; preds = %4
  %47 = call i32 (...) @preempt_disable()
  %48 = call i32 (...) @smp_mb()
  %49 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %50 = call i32 @mm_is_thread_local(%struct.mm_struct* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %76, label %52

52:                                               ; preds = %46
  %53 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %54 = call i32 @mm_is_singlethreaded(%struct.mm_struct* %53)
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @TLB_FLUSH_ALL, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %63 = call i32 @exit_flush_lazy_tlbs(%struct.mm_struct* %62)
  br label %77

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %52
  store i32 0, i32* %13, align 4
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @TLB_FLUSH_ALL, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @tlb_single_page_flush_ceiling, align 8
  %72 = icmp ugt i64 %70, %71
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ true, %65 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %14, align 4
  br label %88

76:                                               ; preds = %46
  br label %77

77:                                               ; preds = %76, %61
  store i32 1, i32* %13, align 4
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @TLB_FLUSH_ALL, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* @tlb_local_single_page_flush_ceiling, align 8
  %84 = icmp ugt i64 %82, %83
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i1 [ true, %77 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %85, %73
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %88
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i64, i64* %9, align 8
  %96 = load i32, i32* @RIC_FLUSH_TLB, align 4
  %97 = call i32 @_tlbiel_pid(i64 %95, i32 %96)
  br label %120

98:                                               ; preds = %91
  %99 = call i64 (...) @cputlb_use_tlbie()
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %103 = call i64 @mm_needs_flush_escalation(%struct.mm_struct* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i64, i64* %9, align 8
  %107 = load i32, i32* @RIC_FLUSH_ALL, align 4
  %108 = call i32 @_tlbie_pid(i64 %106, i32 %107)
  br label %113

109:                                              ; preds = %101
  %110 = load i64, i64* %9, align 8
  %111 = load i32, i32* @RIC_FLUSH_TLB, align 4
  %112 = call i32 @_tlbie_pid(i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %105
  br label %119

114:                                              ; preds = %98
  %115 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i32, i32* @RIC_FLUSH_TLB, align 4
  %118 = call i32 @_tlbiel_pid_multicast(%struct.mm_struct* %115, i64 %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %113
  br label %120

120:                                              ; preds = %119, %94
  br label %256

121:                                              ; preds = %88
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* @CONFIG_TRANSPARENT_HUGEPAGE, align 4
  %125 = call i64 @IS_ENABLED(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store i32 1, i32* %15, align 4
  br label %128

128:                                              ; preds = %127, %121
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* @PMD_SIZE, align 8
  %134 = add i64 %132, %133
  %135 = sub i64 %134, 1
  %136 = load i64, i64* @PMD_MASK, align 8
  %137 = and i64 %135, %136
  store i64 %137, i64* %17, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* @PMD_MASK, align 8
  %140 = and i64 %138, %139
  store i64 %140, i64* %18, align 8
  %141 = load i64, i64* %17, align 8
  %142 = load i64, i64* %18, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %131
  store i32 0, i32* %15, align 4
  br label %145

145:                                              ; preds = %144, %131
  br label %146

146:                                              ; preds = %145, %128
  %147 = load i32, i32* %16, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %146
  %150 = load i64, i64* %6, align 8
  %151 = load i64, i64* @PUD_SIZE, align 8
  %152 = add i64 %150, %151
  %153 = sub i64 %152, 1
  %154 = load i64, i64* @PUD_MASK, align 8
  %155 = and i64 %153, %154
  store i64 %155, i64* %19, align 8
  %156 = load i64, i64* %7, align 8
  %157 = load i64, i64* @PUD_MASK, align 8
  %158 = and i64 %156, %157
  store i64 %158, i64* %20, align 8
  %159 = load i64, i64* %19, align 8
  %160 = load i64, i64* %20, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %149
  store i32 0, i32* %16, align 4
  br label %163

163:                                              ; preds = %162, %149
  br label %164

164:                                              ; preds = %163, %146
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %194

167:                                              ; preds = %164
  call void asm sideeffect "ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* %7, align 8
  %170 = load i64, i64* %9, align 8
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* @mmu_virtual_psize, align 8
  %173 = call i32 @__tlbiel_va_range(i64 %168, i64 %169, i64 %170, i64 %171, i64 %172)
  %174 = load i32, i32* %15, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %167
  %177 = load i64, i64* %17, align 8
  %178 = load i64, i64* %18, align 8
  %179 = load i64, i64* %9, align 8
  %180 = load i64, i64* @PMD_SIZE, align 8
  %181 = load i64, i64* @MMU_PAGE_2M, align 8
  %182 = call i32 @__tlbiel_va_range(i64 %177, i64 %178, i64 %179, i64 %180, i64 %181)
  br label %183

183:                                              ; preds = %176, %167
  %184 = load i32, i32* %16, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = load i64, i64* %19, align 8
  %188 = load i64, i64* %20, align 8
  %189 = load i64, i64* %9, align 8
  %190 = load i64, i64* @PUD_SIZE, align 8
  %191 = load i64, i64* @MMU_PAGE_1G, align 8
  %192 = call i32 @__tlbiel_va_range(i64 %187, i64 %188, i64 %189, i64 %190, i64 %191)
  br label %193

193:                                              ; preds = %186, %183
  call void asm sideeffect "ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %255

194:                                              ; preds = %164
  %195 = call i64 (...) @cputlb_use_tlbie()
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %224

197:                                              ; preds = %194
  call void asm sideeffect "ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  %198 = load i64, i64* %6, align 8
  %199 = load i64, i64* %7, align 8
  %200 = load i64, i64* %9, align 8
  %201 = load i64, i64* %11, align 8
  %202 = load i64, i64* @mmu_virtual_psize, align 8
  %203 = call i32 @__tlbie_va_range(i64 %198, i64 %199, i64 %200, i64 %201, i64 %202)
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %197
  %207 = load i64, i64* %17, align 8
  %208 = load i64, i64* %18, align 8
  %209 = load i64, i64* %9, align 8
  %210 = load i64, i64* @PMD_SIZE, align 8
  %211 = load i64, i64* @MMU_PAGE_2M, align 8
  %212 = call i32 @__tlbie_va_range(i64 %207, i64 %208, i64 %209, i64 %210, i64 %211)
  br label %213

213:                                              ; preds = %206, %197
  %214 = load i32, i32* %16, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = load i64, i64* %19, align 8
  %218 = load i64, i64* %20, align 8
  %219 = load i64, i64* %9, align 8
  %220 = load i64, i64* @PUD_SIZE, align 8
  %221 = load i64, i64* @MMU_PAGE_1G, align 8
  %222 = call i32 @__tlbie_va_range(i64 %217, i64 %218, i64 %219, i64 %220, i64 %221)
  br label %223

223:                                              ; preds = %216, %213
  call void asm sideeffect "eieio; tlbsync; ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  br label %254

224:                                              ; preds = %194
  %225 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %226 = load i64, i64* %6, align 8
  %227 = load i64, i64* %7, align 8
  %228 = load i64, i64* %9, align 8
  %229 = load i64, i64* %11, align 8
  %230 = load i64, i64* @mmu_virtual_psize, align 8
  %231 = call i32 @_tlbiel_va_range_multicast(%struct.mm_struct* %225, i64 %226, i64 %227, i64 %228, i64 %229, i64 %230, i32 0)
  %232 = load i32, i32* %15, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %224
  %235 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %236 = load i64, i64* %17, align 8
  %237 = load i64, i64* %18, align 8
  %238 = load i64, i64* %9, align 8
  %239 = load i64, i64* @PMD_SIZE, align 8
  %240 = load i64, i64* @MMU_PAGE_2M, align 8
  %241 = call i32 @_tlbiel_va_range_multicast(%struct.mm_struct* %235, i64 %236, i64 %237, i64 %238, i64 %239, i64 %240, i32 0)
  br label %242

242:                                              ; preds = %234, %224
  %243 = load i32, i32* %16, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %242
  %246 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %247 = load i64, i64* %19, align 8
  %248 = load i64, i64* %20, align 8
  %249 = load i64, i64* %9, align 8
  %250 = load i64, i64* @PUD_SIZE, align 8
  %251 = load i64, i64* @MMU_PAGE_1G, align 8
  %252 = call i32 @_tlbiel_va_range_multicast(%struct.mm_struct* %246, i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i32 0)
  br label %253

253:                                              ; preds = %245, %242
  br label %254

254:                                              ; preds = %253, %223
  br label %255

255:                                              ; preds = %254, %193
  br label %256

256:                                              ; preds = %255, %120
  %257 = call i32 (...) @preempt_enable()
  br label %258

258:                                              ; preds = %256, %45
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @mm_is_thread_local(%struct.mm_struct*) #1

declare dso_local i32 @mm_is_singlethreaded(%struct.mm_struct*) #1

declare dso_local i32 @exit_flush_lazy_tlbs(%struct.mm_struct*) #1

declare dso_local i32 @_tlbiel_pid(i64, i32) #1

declare dso_local i64 @cputlb_use_tlbie(...) #1

declare dso_local i64 @mm_needs_flush_escalation(%struct.mm_struct*) #1

declare dso_local i32 @_tlbie_pid(i64, i32) #1

declare dso_local i32 @_tlbiel_pid_multicast(%struct.mm_struct*, i64, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @__tlbiel_va_range(i64, i64, i64, i64, i64) #1

declare dso_local i32 @__tlbie_va_range(i64, i64, i64, i64, i64) #1

declare dso_local i32 @_tlbiel_va_range_multicast(%struct.mm_struct*, i64, i64, i64, i64, i64, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 3241}
!3 = !{i32 3523}
!4 = !{i32 3599}
!5 = !{i32 3879}
