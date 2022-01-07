; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_pm-cps.c_cps_gen_set_top_bit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_pm-cps.c_cps_gen_set_top_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uasm_label = type { i32 }
%struct.uasm_reloc = type { i32 }

@t0 = common dso_local global i32 0, align 4
@t1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.uasm_label**, %struct.uasm_reloc**, i32, i32)* @cps_gen_set_top_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cps_gen_set_top_bit(i32** %0, %struct.uasm_label** %1, %struct.uasm_reloc** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca %struct.uasm_label**, align 8
  %8 = alloca %struct.uasm_reloc**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store %struct.uasm_label** %1, %struct.uasm_label*** %7, align 8
  store %struct.uasm_reloc** %2, %struct.uasm_reloc*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32**, i32*** %6, align 8
  %12 = load i32, i32* @t0, align 4
  %13 = call i32 @uasm_rel_hi(i32 -2147483648)
  %14 = call i32 @uasm_i_lui(i32** %11, i32 %12, i32 %13)
  %15 = load %struct.uasm_label**, %struct.uasm_label*** %7, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @uasm_build_label(%struct.uasm_label** %15, i32* %17, i32 %18)
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32, i32* @t1, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @uasm_i_ll(i32** %20, i32 %21, i32 0, i32 %22)
  %24 = load i32**, i32*** %6, align 8
  %25 = load i32, i32* @t1, align 4
  %26 = load i32, i32* @t1, align 4
  %27 = load i32, i32* @t0, align 4
  %28 = call i32 @uasm_i_or(i32** %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32**, i32*** %6, align 8
  %30 = load i32, i32* @t1, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @uasm_i_sc(i32** %29, i32 %30, i32 0, i32 %31)
  %33 = load i32**, i32*** %6, align 8
  %34 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %8, align 8
  %35 = load i32, i32* @t1, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @uasm_il_beqz(i32** %33, %struct.uasm_reloc** %34, i32 %35, i32 %36)
  %38 = load i32**, i32*** %6, align 8
  %39 = call i32 @uasm_i_nop(i32** %38)
  ret void
}

declare dso_local i32 @uasm_i_lui(i32**, i32, i32) #1

declare dso_local i32 @uasm_rel_hi(i32) #1

declare dso_local i32 @uasm_build_label(%struct.uasm_label**, i32*, i32) #1

declare dso_local i32 @uasm_i_ll(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_or(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_sc(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_il_beqz(i32**, %struct.uasm_reloc**, i32, i32) #1

declare dso_local i32 @uasm_i_nop(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
