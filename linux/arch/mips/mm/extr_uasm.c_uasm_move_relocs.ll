; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_uasm.c_uasm_move_relocs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_uasm.c_uasm_move_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uasm_reloc = type { i64, i32* }

@UASM_LABEL_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uasm_move_relocs(%struct.uasm_reloc* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.uasm_reloc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.uasm_reloc* %0, %struct.uasm_reloc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  br label %9

9:                                                ; preds = %34, %4
  %10 = load %struct.uasm_reloc*, %struct.uasm_reloc** %5, align 8
  %11 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UASM_LABEL_INVALID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load %struct.uasm_reloc*, %struct.uasm_reloc** %5, align 8
  %17 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp uge i32* %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.uasm_reloc*, %struct.uasm_reloc** %5, align 8
  %23 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ult i32* %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.uasm_reloc*, %struct.uasm_reloc** %5, align 8
  %30 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 %28
  store i32* %32, i32** %30, align 8
  br label %33

33:                                               ; preds = %27, %21, %15
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.uasm_reloc*, %struct.uasm_reloc** %5, align 8
  %36 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %35, i32 1
  store %struct.uasm_reloc* %36, %struct.uasm_reloc** %5, align 8
  br label %9

37:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
