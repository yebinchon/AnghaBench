; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_build_r4000_tlbchange_handler_head.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_build_r4000_tlbchange_handler_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uasm_label = type { i32 }
%struct.uasm_reloc = type { i32 }
%struct.work_registers = type { i32, i32, i32 }

@C0_BADVADDR = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PTE_ORDER = common dso_local global i64 0, align 8
@PTE_T_LOG2 = common dso_local global i32 0, align 4
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@C0_INDEX = common dso_local global i32 0, align 4
@label_leave = common dso_local global i32 0, align 4
@label_tlb_huge_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (i32**, %struct.uasm_label**, %struct.uasm_reloc**)* @build_r4000_tlbchange_handler_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @build_r4000_tlbchange_handler_head(i32** %0, %struct.uasm_label** %1, %struct.uasm_reloc** %2) #0 {
  %4 = alloca %struct.work_registers, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.uasm_label**, align 8
  %7 = alloca %struct.uasm_reloc**, align 8
  %8 = alloca { i64, i32 }, align 8
  %9 = alloca { i64, i32 }, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.uasm_label** %1, %struct.uasm_label*** %6, align 8
  store %struct.uasm_reloc** %2, %struct.uasm_reloc*** %7, align 8
  %10 = load i32**, i32*** %5, align 8
  %11 = call { i64, i32 } @build_get_work_registers(i32** %10)
  store { i64, i32 } %11, { i64, i32 }* %8, align 8
  %12 = bitcast { i64, i32 }* %8 to i8*
  %13 = bitcast %struct.work_registers* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 8 %12, i64 12, i1 false)
  %14 = load i32**, i32*** %5, align 8
  %15 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @build_get_pgde32(i32** %14, i32 %16, i32 %18)
  %20 = load i32**, i32*** %5, align 8
  %21 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @C0_BADVADDR, align 4
  %24 = call i32 @UASM_i_MFC0(i32** %20, i32 %22, i32 %23)
  %25 = load i32**, i32*** %5, align 8
  %26 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @UASM_i_LW(i32** %25, i32 %27, i32 0, i32 %29)
  %31 = load i32**, i32*** %5, align 8
  %32 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @PAGE_SHIFT, align 8
  %37 = load i64, i64* @PTE_ORDER, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* @PTE_T_LOG2, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %38, %40
  %42 = call i32 @UASM_i_SRL(i32** %31, i32 %33, i32 %35, i64 %41)
  %43 = load i32**, i32*** %5, align 8
  %44 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PTRS_PER_PTE, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* @PTE_T_LOG2, align 4
  %51 = shl i32 %49, %50
  %52 = call i32 @uasm_i_andi(i32** %43, i32 %45, i32 %47, i32 %51)
  %53 = load i32**, i32*** %5, align 8
  %54 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @UASM_i_ADDU(i32** %53, i32 %55, i32 %57, i32 %59)
  %61 = load i32**, i32*** %5, align 8
  %62 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @iPTE_LW(i32** %61, i32 %63, i32 %65)
  %67 = call i32 (...) @m4kc_tlbp_war()
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %91, label %69

69:                                               ; preds = %3
  %70 = load i32**, i32*** %5, align 8
  %71 = call i32 @build_tlb_probe_entry(i32** %70)
  %72 = call i64 (...) @cpu_has_tlbex_tlbp_race()
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %69
  %75 = load i32**, i32*** %5, align 8
  %76 = call i32 @uasm_i_ehb(i32** %75)
  %77 = load i32**, i32*** %5, align 8
  %78 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @C0_INDEX, align 4
  %81 = call i32 @uasm_i_mfc0(i32** %77, i32 %79, i32 %80)
  %82 = load i32**, i32*** %5, align 8
  %83 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %7, align 8
  %84 = getelementptr inbounds %struct.work_registers, %struct.work_registers* %4, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @label_leave, align 4
  %87 = call i32 @uasm_il_bltz(i32** %82, %struct.uasm_reloc** %83, i32 %85, i32 %86)
  %88 = load i32**, i32*** %5, align 8
  %89 = call i32 @uasm_i_nop(i32** %88)
  br label %90

90:                                               ; preds = %74, %69
  br label %91

91:                                               ; preds = %90, %3
  %92 = bitcast { i64, i32 }* %9 to i8*
  %93 = bitcast %struct.work_registers* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 4 %93, i64 12, i1 false)
  %94 = load { i64, i32 }, { i64, i32 }* %9, align 8
  ret { i64, i32 } %94
}

declare dso_local { i64, i32 } @build_get_work_registers(i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @build_get_pgde32(i32**, i32, i32) #1

declare dso_local i32 @UASM_i_MFC0(i32**, i32, i32) #1

declare dso_local i32 @UASM_i_LW(i32**, i32, i32, i32) #1

declare dso_local i32 @UASM_i_SRL(i32**, i32, i32, i64) #1

declare dso_local i32 @uasm_i_andi(i32**, i32, i32, i32) #1

declare dso_local i32 @UASM_i_ADDU(i32**, i32, i32, i32) #1

declare dso_local i32 @iPTE_LW(i32**, i32, i32) #1

declare dso_local i32 @m4kc_tlbp_war(...) #1

declare dso_local i32 @build_tlb_probe_entry(i32**) #1

declare dso_local i64 @cpu_has_tlbex_tlbp_race(...) #1

declare dso_local i32 @uasm_i_ehb(i32**) #1

declare dso_local i32 @uasm_i_mfc0(i32**, i32, i32) #1

declare dso_local i32 @uasm_il_bltz(i32**, %struct.uasm_reloc**, i32, i32) #1

declare dso_local i32 @uasm_i_nop(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
