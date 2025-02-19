; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_uasm.c_uasm_insn_has_bdelay.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_uasm.c_uasm_insn_has_bdelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uasm_reloc = type { i64, i64, i32* }

@UASM_LABEL_INVALID = common dso_local global i64 0, align 8
@R_MIPS_PC16 = common dso_local global i64 0, align 8
@R_MIPS_26 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uasm_insn_has_bdelay(%struct.uasm_reloc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uasm_reloc*, align 8
  %5 = alloca i32*, align 8
  store %struct.uasm_reloc* %0, %struct.uasm_reloc** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %6

6:                                                ; preds = %32, %2
  %7 = load %struct.uasm_reloc*, %struct.uasm_reloc** %4, align 8
  %8 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @UASM_LABEL_INVALID, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %6
  %13 = load %struct.uasm_reloc*, %struct.uasm_reloc** %4, align 8
  %14 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %struct.uasm_reloc*, %struct.uasm_reloc** %4, align 8
  %20 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @R_MIPS_PC16, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.uasm_reloc*, %struct.uasm_reloc** %4, align 8
  %26 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @R_MIPS_26, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %18
  store i32 1, i32* %3, align 4
  br label %36

31:                                               ; preds = %24, %12
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.uasm_reloc*, %struct.uasm_reloc** %4, align 8
  %34 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %33, i32 1
  store %struct.uasm_reloc* %34, %struct.uasm_reloc** %4, align 8
  br label %6

35:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
