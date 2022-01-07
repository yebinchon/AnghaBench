; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_local_r4k_flush_cache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_local_r4k_flush_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.flush_cache_page_args = type { i64, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, %struct.mm_struct* }
%struct.page = type { i32 }

@VM_EXEC = common dso_local global i32 0, align 4
@R4K_HIT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@_PAGE_VALID = common dso_local global i32 0, align 4
@cpu_has_dc_aliases = common dso_local global i64 0, align 8
@cpu_has_ic_fills_f_dc = common dso_local global i32 0, align 4
@cpu_icache_snoops_remote_store = common dso_local global i32 0, align 4
@cpu_has_vtag_icache = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @local_r4k_flush_cache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @local_r4k_flush_cache_page(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.flush_cache_page_args*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to %struct.flush_cache_page_args*
  store %struct.flush_cache_page_args* %16, %struct.flush_cache_page_args** %3, align 8
  %17 = load %struct.flush_cache_page_args*, %struct.flush_cache_page_args** %3, align 8
  %18 = getelementptr inbounds %struct.flush_cache_page_args, %struct.flush_cache_page_args* %17, i32 0, i32 2
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  store %struct.vm_area_struct* %19, %struct.vm_area_struct** %4, align 8
  %20 = load %struct.flush_cache_page_args*, %struct.flush_cache_page_args** %3, align 8
  %21 = getelementptr inbounds %struct.flush_cache_page_args, %struct.flush_cache_page_args* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.flush_cache_page_args*, %struct.flush_cache_page_args** %3, align 8
  %24 = getelementptr inbounds %struct.flush_cache_page_args, %struct.flush_cache_page_args* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.page* @pfn_to_page(i32 %25)
  store %struct.page* %26, %struct.page** %6, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VM_EXEC, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 1
  %34 = load %struct.mm_struct*, %struct.mm_struct** %33, align 8
  store %struct.mm_struct* %34, %struct.mm_struct** %8, align 8
  store i32 0, i32* %9, align 4
  %35 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %36 = load i32, i32* @R4K_HIT, align 4
  %37 = call i32 @has_valid_asid(%struct.mm_struct* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  br label %173

40:                                               ; preds = %1
  %41 = load i64, i64* @PAGE_MASK, align 8
  %42 = load i64, i64* %5, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %5, align 8
  %44 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32* @pgd_offset(%struct.mm_struct* %44, i64 %45)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32* @pud_offset(i32* %47, i64 %48)
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32* @pmd_offset(i32* %50, i64 %51)
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32* @pte_offset(i32* %53, i64 %54)
  store i32* %55, i32** %13, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pte_present(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %40
  br label %173

61:                                               ; preds = %40
  %62 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.mm_struct*, %struct.mm_struct** %64, align 8
  %66 = icmp eq %struct.mm_struct* %62, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pte_val(i32 %69)
  %71 = load i32, i32* @_PAGE_VALID, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i8* null, i8** %14, align 8
  br label %102

75:                                               ; preds = %67, %61
  %76 = load i64, i64* @cpu_has_dc_aliases, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load %struct.page*, %struct.page** %6, align 8
  %80 = call i64 @page_mapcount(%struct.page* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.page*, %struct.page** %6, align 8
  %84 = call i32 @Page_dcache_dirty(%struct.page* %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %82, %78, %75
  %88 = phi i1 [ false, %78 ], [ false, %75 ], [ %86, %82 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.page*, %struct.page** %6, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i8* @kmap_coherent(%struct.page* %93, i64 %94)
  store i8* %95, i8** %14, align 8
  br label %99

96:                                               ; preds = %87
  %97 = load %struct.page*, %struct.page** %6, align 8
  %98 = call i8* @kmap_atomic(%struct.page* %97)
  store i8* %98, i8** %14, align 8
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i8*, i8** %14, align 8
  %101 = ptrtoint i8* %100 to i64
  store i64 %101, i64* %5, align 8
  br label %102

102:                                              ; preds = %99, %74
  %103 = load i64, i64* @cpu_has_dc_aliases, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %105
  %109 = load i32, i32* @cpu_has_ic_fills_f_dc, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %131, label %111

111:                                              ; preds = %108, %102
  %112 = load i8*, i8** %14, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i64, i64* %5, align 8
  %116 = call i32 @r4k_blast_dcache_page(i64 %115)
  br label %120

117:                                              ; preds = %111
  %118 = load i64, i64* %5, align 8
  %119 = call i32 @r4k_blast_dcache_user_page(i64 %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = phi i32 [ %116, %114 ], [ %119, %117 ]
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i32, i32* @cpu_icache_snoops_remote_store, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @r4k_blast_scache_page(i64 %128)
  br label %130

130:                                              ; preds = %127, %124, %120
  br label %131

131:                                              ; preds = %130, %108, %105
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %161

134:                                              ; preds = %131
  %135 = load i8*, i8** %14, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %149

137:                                              ; preds = %134
  %138 = load i64, i64* @cpu_has_vtag_icache, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %137
  %141 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load %struct.mm_struct*, %struct.mm_struct** %143, align 8
  %145 = icmp eq %struct.mm_struct* %141, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %148 = call i32 @drop_mmu_context(%struct.mm_struct* %147)
  br label %160

149:                                              ; preds = %140, %137, %134
  %150 = load i8*, i8** %14, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i64, i64* %5, align 8
  %154 = call i32 @r4k_blast_icache_page(i64 %153)
  br label %158

155:                                              ; preds = %149
  %156 = load i64, i64* %5, align 8
  %157 = call i32 @r4k_blast_icache_user_page(i64 %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = phi i32 [ %154, %152 ], [ %157, %155 ]
  br label %160

160:                                              ; preds = %158, %146
  br label %161

161:                                              ; preds = %160, %131
  %162 = load i8*, i8** %14, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = call i32 (...) @kunmap_coherent()
  br label %172

169:                                              ; preds = %164
  %170 = load i8*, i8** %14, align 8
  %171 = call i32 @kunmap_atomic(i8* %170)
  br label %172

172:                                              ; preds = %169, %167
  br label %173

173:                                              ; preds = %39, %60, %172, %161
  ret void
}

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @has_valid_asid(%struct.mm_struct*, i32) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32* @pte_offset(i32*, i64) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i32 @Page_dcache_dirty(%struct.page*) #1

declare dso_local i8* @kmap_coherent(%struct.page*, i64) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @r4k_blast_dcache_page(i64) #1

declare dso_local i32 @r4k_blast_dcache_user_page(i64) #1

declare dso_local i32 @r4k_blast_scache_page(i64) #1

declare dso_local i32 @drop_mmu_context(%struct.mm_struct*) #1

declare dso_local i32 @r4k_blast_icache_page(i64) #1

declare dso_local i32 @r4k_blast_icache_user_page(i64) #1

declare dso_local i32 @kunmap_coherent(...) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
