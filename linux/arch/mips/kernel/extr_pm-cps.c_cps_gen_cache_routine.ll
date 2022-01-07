; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_pm-cps.c_cps_gen_cache_routine.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_pm-cps.c_cps_gen_cache_routine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uasm_label = type { i32 }
%struct.uasm_reloc = type { i32 }
%struct.cache_desc = type { i32, i32, i32, i32 }

@MIPS_CACHE_NOT_PRESENT = common dso_local global i32 0, align 4
@t0 = common dso_local global i32 0, align 4
@CKSEG0 = common dso_local global i64 0, align 8
@t1 = common dso_local global i32 0, align 4
@cpu_has_mips_r6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.uasm_label**, %struct.uasm_reloc**, %struct.cache_desc*, i32, i32)* @cps_gen_cache_routine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cps_gen_cache_routine(i32** %0, %struct.uasm_label** %1, %struct.uasm_reloc** %2, %struct.cache_desc* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca %struct.uasm_label**, align 8
  %9 = alloca %struct.uasm_reloc**, align 8
  %10 = alloca %struct.cache_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store %struct.uasm_label** %1, %struct.uasm_label*** %8, align 8
  store %struct.uasm_reloc** %2, %struct.uasm_reloc*** %9, align 8
  store %struct.cache_desc* %3, %struct.cache_desc** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.cache_desc*, %struct.cache_desc** %10, align 8
  %17 = getelementptr inbounds %struct.cache_desc, %struct.cache_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cache_desc*, %struct.cache_desc** %10, align 8
  %20 = getelementptr inbounds %struct.cache_desc, %struct.cache_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %18, %21
  store i32 %22, i32* %13, align 4
  store i32 32, i32* %15, align 4
  %23 = load %struct.cache_desc*, %struct.cache_desc** %10, align 8
  %24 = getelementptr inbounds %struct.cache_desc, %struct.cache_desc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MIPS_CACHE_NOT_PRESENT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  br label %110

30:                                               ; preds = %6
  %31 = load i32**, i32*** %7, align 8
  %32 = load i32, i32* @t0, align 4
  %33 = load i64, i64* @CKSEG0, align 8
  %34 = call i32 @UASM_i_LA(i32** %31, i32 %32, i64 %33)
  %35 = load i32, i32* %13, align 4
  %36 = icmp ult i32 %35, 32768
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32**, i32*** %7, align 8
  %39 = load i32, i32* @t1, align 4
  %40 = load i32, i32* @t0, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @uasm_i_addiu(i32** %38, i32 %39, i32 %40, i32 %41)
  br label %51

43:                                               ; preds = %30
  %44 = load i32**, i32*** %7, align 8
  %45 = load i32, i32* @t1, align 4
  %46 = load i64, i64* @CKSEG0, align 8
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i32 @UASM_i_LA(i32** %44, i32 %45, i64 %49)
  br label %51

51:                                               ; preds = %43, %37
  %52 = load %struct.uasm_label**, %struct.uasm_label*** %8, align 8
  %53 = load i32**, i32*** %7, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @uasm_build_label(%struct.uasm_label** %52, i32* %54, i32 %55)
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %86, %51
  %58 = load i32, i32* %14, align 4
  %59 = icmp ult i32 %58, 32
  br i1 %59, label %60, label %89

60:                                               ; preds = %57
  %61 = load i64, i64* @cpu_has_mips_r6, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i32**, i32*** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @t0, align 4
  %67 = call i32 @uasm_i_cache(i32** %64, i32 %65, i32 0, i32 %66)
  %68 = load i32**, i32*** %7, align 8
  %69 = load i32, i32* @t0, align 4
  %70 = load i32, i32* @t0, align 4
  %71 = load %struct.cache_desc*, %struct.cache_desc** %10, align 8
  %72 = getelementptr inbounds %struct.cache_desc, %struct.cache_desc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @uasm_i_addiu(i32** %68, i32 %69, i32 %70, i32 %73)
  br label %85

75:                                               ; preds = %60
  %76 = load i32**, i32*** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.cache_desc*, %struct.cache_desc** %10, align 8
  %80 = getelementptr inbounds %struct.cache_desc, %struct.cache_desc* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = mul i32 %78, %81
  %83 = load i32, i32* @t0, align 4
  %84 = call i32 @uasm_i_cache(i32** %76, i32 %77, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %75, %63
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %14, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %57

89:                                               ; preds = %57
  %90 = load i64, i64* @cpu_has_mips_r6, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %89
  %93 = load i32**, i32*** %7, align 8
  %94 = load i32, i32* @t0, align 4
  %95 = load i32, i32* @t0, align 4
  %96 = load %struct.cache_desc*, %struct.cache_desc** %10, align 8
  %97 = getelementptr inbounds %struct.cache_desc, %struct.cache_desc* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = mul i32 32, %98
  %100 = call i32 @uasm_i_addiu(i32** %93, i32 %94, i32 %95, i32 %99)
  br label %101

101:                                              ; preds = %92, %89
  %102 = load i32**, i32*** %7, align 8
  %103 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %9, align 8
  %104 = load i32, i32* @t0, align 4
  %105 = load i32, i32* @t1, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @uasm_il_bne(i32** %102, %struct.uasm_reloc** %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32**, i32*** %7, align 8
  %109 = call i32 @uasm_i_nop(i32** %108)
  br label %110

110:                                              ; preds = %101, %29
  ret void
}

declare dso_local i32 @UASM_i_LA(i32**, i32, i64) #1

declare dso_local i32 @uasm_i_addiu(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_build_label(%struct.uasm_label**, i32*, i32) #1

declare dso_local i32 @uasm_i_cache(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_il_bne(i32**, %struct.uasm_reloc**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_nop(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
