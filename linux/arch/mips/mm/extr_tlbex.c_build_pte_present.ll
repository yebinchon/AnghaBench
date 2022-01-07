; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_build_pte_present.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_build_pte_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uasm_reloc = type { i32 }

@cpu_has_rixi = common dso_local global i64 0, align 8
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@_PAGE_PRESENT_SHIFT = common dso_local global i32 0, align 4
@_PAGE_NO_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.uasm_reloc**, i32, i32, i32, i32)* @build_pte_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_pte_present(i32** %0, %struct.uasm_reloc** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca %struct.uasm_reloc**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store %struct.uasm_reloc** %1, %struct.uasm_reloc*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i32, i32* %11, align 4
  br label %21

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i64, i64* @cpu_has_rixi, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %69

26:                                               ; preds = %21
  %27 = call i64 (...) @use_bbit_insns()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32**, i32*** %7, align 8
  %31 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @_PAGE_PRESENT, align 4
  %34 = call i32 @ilog2(i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @uasm_il_bbit0(i32** %30, %struct.uasm_reloc** %31, i32 %32, i32 %34, i32 %35)
  %37 = load i32**, i32*** %7, align 8
  %38 = call i32 @uasm_i_nop(i32** %37)
  br label %68

39:                                               ; preds = %26
  %40 = load i32, i32* @_PAGE_PRESENT_SHIFT, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32**, i32*** %7, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @_PAGE_PRESENT_SHIFT, align 4
  %47 = call i32 @uasm_i_srl(i32** %43, i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %42, %39
  %50 = load i32**, i32*** %7, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @uasm_i_andi(i32** %50, i32 %51, i32 %52, i32 1)
  %54 = load i32**, i32*** %7, align 8
  %55 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %8, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @uasm_il_beqz(i32** %54, %struct.uasm_reloc** %55, i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load i32**, i32*** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @iPTE_LW(i32** %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %49
  br label %68

68:                                               ; preds = %67, %29
  br label %110

69:                                               ; preds = %21
  %70 = load i32, i32* @_PAGE_PRESENT_SHIFT, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32**, i32*** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @_PAGE_PRESENT_SHIFT, align 4
  %77 = call i32 @uasm_i_srl(i32** %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %72, %69
  %80 = load i32**, i32*** %7, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @_PAGE_PRESENT, align 4
  %84 = load i32, i32* @_PAGE_NO_READ, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @_PAGE_PRESENT_SHIFT, align 4
  %87 = ashr i32 %85, %86
  %88 = call i32 @uasm_i_andi(i32** %80, i32 %81, i32 %82, i32 %87)
  %89 = load i32**, i32*** %7, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @_PAGE_PRESENT, align 4
  %93 = load i32, i32* @_PAGE_PRESENT_SHIFT, align 4
  %94 = ashr i32 %92, %93
  %95 = call i32 @uasm_i_xori(i32** %89, i32 %90, i32 %91, i32 %94)
  %96 = load i32**, i32*** %7, align 8
  %97 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %8, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @uasm_il_bnez(i32** %96, %struct.uasm_reloc** %97, i32 %98, i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %79
  %105 = load i32**, i32*** %7, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @iPTE_LW(i32** %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %79
  br label %110

110:                                              ; preds = %109, %68
  ret void
}

declare dso_local i64 @use_bbit_insns(...) #1

declare dso_local i32 @uasm_il_bbit0(i32**, %struct.uasm_reloc**, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @uasm_i_nop(i32**) #1

declare dso_local i32 @uasm_i_srl(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_andi(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_il_beqz(i32**, %struct.uasm_reloc**, i32, i32) #1

declare dso_local i32 @iPTE_LW(i32**, i32, i32) #1

declare dso_local i32 @uasm_i_xori(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_il_bnez(i32**, %struct.uasm_reloc**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
