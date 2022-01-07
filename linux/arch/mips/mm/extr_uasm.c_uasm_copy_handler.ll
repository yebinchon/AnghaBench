; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_uasm.c_uasm_copy_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_uasm.c_uasm_copy_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uasm_reloc = type { i32 }
%struct.uasm_label = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uasm_copy_handler(%struct.uasm_reloc* %0, %struct.uasm_label* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.uasm_reloc*, align 8
  %7 = alloca %struct.uasm_label*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.uasm_reloc* %0, %struct.uasm_reloc** %6, align 8
  store %struct.uasm_label* %1, %struct.uasm_label** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = ptrtoint i32* %12 to i64
  %15 = ptrtoint i32* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  store i64 %17, i64* %11, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memcpy(i32* %18, i32* %19, i32 %27)
  %29 = load %struct.uasm_reloc*, %struct.uasm_reloc** %6, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @uasm_move_relocs(%struct.uasm_reloc* %29, i32* %30, i32* %31, i64 %32)
  %34 = load %struct.uasm_label*, %struct.uasm_label** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @uasm_move_labels(%struct.uasm_label* %34, i32* %35, i32* %36, i64 %37)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @uasm_move_relocs(%struct.uasm_reloc*, i32*, i32*, i64) #1

declare dso_local i32 @uasm_move_labels(%struct.uasm_label*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
