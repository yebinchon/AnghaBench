; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_optprobes.c_patch_imm64_load_insns.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_optprobes.c_patch_imm64_load_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPC_INST_ADDIS = common dso_local global i64 0, align 8
@PPC_INST_ORI = common dso_local global i64 0, align 8
@PPC_INST_RLDICR = common dso_local global i64 0, align 8
@PPC_INST_ORIS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @patch_imm64_load_insns(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @PPC_INST_ADDIS, align 8
  %7 = call i64 @___PPC_RT(i32 3)
  %8 = or i64 %6, %7
  %9 = load i64, i64* %3, align 8
  %10 = lshr i64 %9, 48
  %11 = and i64 %10, 65535
  %12 = or i64 %8, %11
  %13 = call i32 @patch_instruction(i32* %5, i64 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* @PPC_INST_ORI, align 8
  %18 = call i64 @___PPC_RA(i32 3)
  %19 = or i64 %17, %18
  %20 = call i64 @___PPC_RS(i32 3)
  %21 = or i64 %19, %20
  %22 = load i64, i64* %3, align 8
  %23 = lshr i64 %22, 32
  %24 = and i64 %23, 65535
  %25 = or i64 %21, %24
  %26 = call i32 @patch_instruction(i32* %16, i64 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* @PPC_INST_RLDICR, align 8
  %31 = call i64 @___PPC_RA(i32 3)
  %32 = or i64 %30, %31
  %33 = call i64 @___PPC_RS(i32 3)
  %34 = or i64 %32, %33
  %35 = call i64 @__PPC_SH64(i32 32)
  %36 = or i64 %34, %35
  %37 = call i64 @__PPC_ME64(i32 31)
  %38 = or i64 %36, %37
  %39 = call i32 @patch_instruction(i32* %29, i64 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i64, i64* @PPC_INST_ORIS, align 8
  %44 = call i64 @___PPC_RA(i32 3)
  %45 = or i64 %43, %44
  %46 = call i64 @___PPC_RS(i32 3)
  %47 = or i64 %45, %46
  %48 = load i64, i64* %3, align 8
  %49 = lshr i64 %48, 16
  %50 = and i64 %49, 65535
  %51 = or i64 %47, %50
  %52 = call i32 @patch_instruction(i32* %42, i64 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %4, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* @PPC_INST_ORI, align 8
  %57 = call i64 @___PPC_RA(i32 3)
  %58 = or i64 %56, %57
  %59 = call i64 @___PPC_RS(i32 3)
  %60 = or i64 %58, %59
  %61 = load i64, i64* %3, align 8
  %62 = and i64 %61, 65535
  %63 = or i64 %60, %62
  %64 = call i32 @patch_instruction(i32* %55, i64 %63)
  ret void
}

declare dso_local i32 @patch_instruction(i32*, i64) #1

declare dso_local i64 @___PPC_RT(i32) #1

declare dso_local i64 @___PPC_RA(i32) #1

declare dso_local i64 @___PPC_RS(i32) #1

declare dso_local i64 @__PPC_SH64(i32) #1

declare dso_local i64 @__PPC_ME64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
