; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_pm-cps.c_cps_gen_flush_fsb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_pm-cps.c_cps_gen_flush_fsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uasm_label = type { i32 }
%struct.uasm_reloc = type { i32 }
%struct.cpuinfo_mips = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PRID_REV_MASK = common dso_local global i32 0, align 4
@t2 = common dso_local global i32 0, align 4
@t3 = common dso_local global i32 0, align 4
@t0 = common dso_local global i32 0, align 4
@zero = common dso_local global i32 0, align 4
@CKSEG0 = common dso_local global i64 0, align 8
@Hit_Invalidate_D = common dso_local global i32 0, align 4
@Hit_Writeback_Inv_SD = common dso_local global i32 0, align 4
@STYPE_SYNC = common dso_local global i32 0, align 4
@t1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.uasm_label**, %struct.uasm_reloc**, %struct.cpuinfo_mips*, i32)* @cps_gen_flush_fsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cps_gen_flush_fsb(i32** %0, %struct.uasm_label** %1, %struct.uasm_reloc** %2, %struct.cpuinfo_mips* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.uasm_label**, align 8
  %9 = alloca %struct.uasm_reloc**, align 8
  %10 = alloca %struct.cpuinfo_mips*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store %struct.uasm_label** %1, %struct.uasm_label*** %8, align 8
  store %struct.uasm_reloc** %2, %struct.uasm_reloc*** %9, align 8
  store %struct.cpuinfo_mips* %3, %struct.cpuinfo_mips** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 8, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = mul i32 %20, 3
  %22 = udiv i32 %21, 2
  store i32 %22, i32* %14, align 4
  store i32 2, i32* %15, align 4
  %23 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %10, align 8
  %24 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %10, align 8
  %28 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PRID_REV_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %19, align 4
  %32 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %10, align 8
  %33 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__get_cpu_type(i32 %34)
  switch i32 %35, label %43 [
    i32 129, label %36
    i32 128, label %37
  ]

36:                                               ; preds = %5
  store i32 1, i32* %17, align 4
  store i32 51, i32* %18, align 4
  br label %44

37:                                               ; preds = %5
  %38 = load i32, i32* %19, align 4
  %39 = call i32 @PRID_REV_ENCODE_332(i32 1, i32 1, i32 0)
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %168

42:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %168

43:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %168

44:                                               ; preds = %36
  %45 = load i32**, i32*** %7, align 8
  %46 = load i32, i32* @t2, align 4
  %47 = load i32, i32* %17, align 4
  %48 = mul i32 %47, 2
  %49 = add i32 %48, 0
  %50 = call i32 @uasm_i_mfc0(i32** %45, i32 %46, i32 25, i32 %49)
  %51 = load i32**, i32*** %7, align 8
  %52 = load i32, i32* @t3, align 4
  %53 = load i32, i32* %17, align 4
  %54 = mul i32 %53, 2
  %55 = add i32 %54, 1
  %56 = call i32 @uasm_i_mfc0(i32** %51, i32 %52, i32 25, i32 %55)
  %57 = load i32**, i32*** %7, align 8
  %58 = load i32, i32* @t0, align 4
  %59 = load i32, i32* @zero, align 4
  %60 = load i32, i32* %18, align 4
  %61 = shl i32 %60, 5
  %62 = or i32 %61, 15
  %63 = call i32 @uasm_i_addiu(i32** %57, i32 %58, i32 %59, i32 %62)
  %64 = load i32**, i32*** %7, align 8
  %65 = load i32, i32* @t0, align 4
  %66 = load i32, i32* %17, align 4
  %67 = mul i32 %66, 2
  %68 = add i32 %67, 0
  %69 = call i32 @uasm_i_mtc0(i32** %64, i32 %65, i32 25, i32 %68)
  %70 = load i32**, i32*** %7, align 8
  %71 = call i32 @uasm_i_ehb(i32** %70)
  %72 = load i32**, i32*** %7, align 8
  %73 = load i32, i32* @zero, align 4
  %74 = load i32, i32* %17, align 4
  %75 = mul i32 %74, 2
  %76 = add i32 %75, 1
  %77 = call i32 @uasm_i_mtc0(i32** %72, i32 %73, i32 25, i32 %76)
  %78 = load i32**, i32*** %7, align 8
  %79 = call i32 @uasm_i_ehb(i32** %78)
  %80 = load i32**, i32*** %7, align 8
  %81 = load i32, i32* @t0, align 4
  %82 = load i64, i64* @CKSEG0, align 8
  %83 = call i32 @UASM_i_LA(i32** %80, i32 %81, i64 %82)
  %84 = load %struct.uasm_label**, %struct.uasm_label*** %8, align 8
  %85 = load i32**, i32*** %7, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @uasm_build_label(%struct.uasm_label** %84, i32* %86, i32 %87)
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %103, %44
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load i32**, i32*** %7, align 8
  %95 = load i32, i32* @zero, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %16, align 4
  %98 = mul i32 %96, %97
  %99 = load i32, i32* %15, align 4
  %100 = mul i32 %98, %99
  %101 = load i32, i32* @t0, align 4
  %102 = call i32 @uasm_i_lw(i32** %94, i32 %95, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %93
  %104 = load i32, i32* %12, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %89

106:                                              ; preds = %89
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %130, %106
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %107
  %112 = load i32**, i32*** %7, align 8
  %113 = load i32, i32* @Hit_Invalidate_D, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %16, align 4
  %116 = mul i32 %114, %115
  %117 = load i32, i32* %15, align 4
  %118 = mul i32 %116, %117
  %119 = load i32, i32* @t0, align 4
  %120 = call i32 @uasm_i_cache(i32** %112, i32 %113, i32 %118, i32 %119)
  %121 = load i32**, i32*** %7, align 8
  %122 = load i32, i32* @Hit_Writeback_Inv_SD, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %16, align 4
  %125 = mul i32 %123, %124
  %126 = load i32, i32* %15, align 4
  %127 = mul i32 %125, %126
  %128 = load i32, i32* @t0, align 4
  %129 = call i32 @uasm_i_cache(i32** %121, i32 %122, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %111
  %131 = load i32, i32* %12, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %107

133:                                              ; preds = %107
  %134 = load i32**, i32*** %7, align 8
  %135 = load i32, i32* @STYPE_SYNC, align 4
  %136 = call i32 @uasm_i_sync(i32** %134, i32 %135)
  %137 = load i32**, i32*** %7, align 8
  %138 = call i32 @uasm_i_ehb(i32** %137)
  %139 = load i32**, i32*** %7, align 8
  %140 = load i32, i32* @t1, align 4
  %141 = load i32, i32* %17, align 4
  %142 = mul i32 %141, 2
  %143 = add i32 %142, 1
  %144 = call i32 @uasm_i_mfc0(i32** %139, i32 %140, i32 25, i32 %143)
  %145 = load i32**, i32*** %7, align 8
  %146 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %9, align 8
  %147 = load i32, i32* @t1, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @uasm_il_beqz(i32** %145, %struct.uasm_reloc** %146, i32 %147, i32 %148)
  %150 = load i32**, i32*** %7, align 8
  %151 = call i32 @uasm_i_nop(i32** %150)
  %152 = load i32**, i32*** %7, align 8
  %153 = load i32, i32* @t2, align 4
  %154 = load i32, i32* %17, align 4
  %155 = mul i32 %154, 2
  %156 = add i32 %155, 0
  %157 = call i32 @uasm_i_mtc0(i32** %152, i32 %153, i32 25, i32 %156)
  %158 = load i32**, i32*** %7, align 8
  %159 = call i32 @uasm_i_ehb(i32** %158)
  %160 = load i32**, i32*** %7, align 8
  %161 = load i32, i32* @t3, align 4
  %162 = load i32, i32* %17, align 4
  %163 = mul i32 %162, 2
  %164 = add i32 %163, 1
  %165 = call i32 @uasm_i_mtc0(i32** %160, i32 %161, i32 25, i32 %164)
  %166 = load i32**, i32*** %7, align 8
  %167 = call i32 @uasm_i_ehb(i32** %166)
  store i32 0, i32* %6, align 4
  br label %168

168:                                              ; preds = %133, %43, %42, %41
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local i32 @__get_cpu_type(i32) #1

declare dso_local i32 @PRID_REV_ENCODE_332(i32, i32, i32) #1

declare dso_local i32 @uasm_i_mfc0(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_addiu(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_mtc0(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_ehb(i32**) #1

declare dso_local i32 @UASM_i_LA(i32**, i32, i64) #1

declare dso_local i32 @uasm_build_label(%struct.uasm_label**, i32*, i32) #1

declare dso_local i32 @uasm_i_lw(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_cache(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_sync(i32**, i32) #1

declare dso_local i32 @uasm_il_beqz(i32**, %struct.uasm_reloc**, i32, i32) #1

declare dso_local i32 @uasm_i_nop(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
