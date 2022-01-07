; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_uasm.c_uasm_r_mips_pc16.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_uasm.c_uasm_r_mips_pc16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uasm_reloc = type { i32, i32, i32* }

@R_MIPS_PC16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uasm_r_mips_pc16(%struct.uasm_reloc** %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.uasm_reloc**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.uasm_reloc** %0, %struct.uasm_reloc*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %4, align 8
  %9 = load %struct.uasm_reloc*, %struct.uasm_reloc** %8, align 8
  %10 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %9, i32 0, i32 2
  store i32* %7, i32** %10, align 8
  %11 = load i32, i32* @R_MIPS_PC16, align 4
  %12 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %4, align 8
  %13 = load %struct.uasm_reloc*, %struct.uasm_reloc** %12, align 8
  %14 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %4, align 8
  %17 = load %struct.uasm_reloc*, %struct.uasm_reloc** %16, align 8
  %18 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %4, align 8
  %20 = load %struct.uasm_reloc*, %struct.uasm_reloc** %19, align 8
  %21 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %20, i32 1
  store %struct.uasm_reloc* %21, %struct.uasm_reloc** %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
