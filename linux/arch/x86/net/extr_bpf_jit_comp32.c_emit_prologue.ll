; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_prologue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bpf2ia32 = common dso_local global i32** null, align 8
@BPF_REG_1 = common dso_local global i64 0, align 8
@BPF_REG_FP = common dso_local global i64 0, align 8
@TCALL_CNT = common dso_local global i64 0, align 8
@STACK_SIZE = common dso_local global i32 0, align 4
@IA32_EBP = common dso_local global i32 0, align 4
@SCRATCH_SIZE = common dso_local global i64 0, align 8
@IA32_EBX = common dso_local global i32 0, align 4
@IA32_EAX = common dso_local global i32 0, align 4
@PROLOGUE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32)* @emit_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_prologue(i32** %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32**, i32*** %3, align 8
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32**, i32*** @bpf2ia32, align 8
  %14 = load i64, i64* @BPF_REG_1, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32**, i32*** @bpf2ia32, align 8
  %18 = load i64, i64* @BPF_REG_FP, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32**, i32*** @bpf2ia32, align 8
  %24 = load i64, i64* @BPF_REG_FP, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32**, i32*** @bpf2ia32, align 8
  %30 = load i64, i64* @TCALL_CNT, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %10, align 8
  %33 = call i32 @EMIT1(i32 85)
  %34 = call i32 @EMIT2(i32 137, i32 229)
  %35 = call i32 @EMIT1(i32 87)
  %36 = call i32 @EMIT1(i32 86)
  %37 = call i32 @EMIT1(i32 83)
  %38 = load i32, i32* @STACK_SIZE, align 4
  %39 = call i32 @EMIT2_off32(i32 129, i32 236, i32 %38)
  %40 = load i32, i32* @IA32_EBP, align 4
  %41 = call i32 @add_1reg(i32 232, i32 %40)
  %42 = load i64, i64* @SCRATCH_SIZE, align 8
  %43 = add nsw i64 %42, 12
  %44 = call i32 @EMIT3(i32 131, i32 %41, i64 %43)
  %45 = load i32, i32* @IA32_EBX, align 4
  %46 = load i32, i32* @IA32_EBX, align 4
  %47 = call i32 @add_2reg(i32 192, i32 %45, i32 %46)
  %48 = call i32 @EMIT2(i32 49, i32 %47)
  %49 = load i32, i32* @IA32_EBP, align 4
  %50 = load i32, i32* @IA32_EBP, align 4
  %51 = call i32 @add_2reg(i32 64, i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @STACK_VAR(i32 %52)
  %54 = call i32 @EMIT3(i32 137, i32 %51, i64 %53)
  %55 = load i32, i32* @IA32_EBP, align 4
  %56 = load i32, i32* @IA32_EBX, align 4
  %57 = call i32 @add_2reg(i32 64, i32 %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @STACK_VAR(i32 %58)
  %60 = call i32 @EMIT3(i32 137, i32 %57, i64 %59)
  %61 = load i32, i32* @IA32_EBP, align 4
  %62 = load i32, i32* @IA32_EAX, align 4
  %63 = call i32 @add_2reg(i32 64, i32 %61, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @STACK_VAR(i32 %66)
  %68 = call i32 @EMIT3(i32 137, i32 %63, i64 %67)
  %69 = load i32, i32* @IA32_EBP, align 4
  %70 = load i32, i32* @IA32_EBX, align 4
  %71 = call i32 @add_2reg(i32 64, i32 %69, i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @STACK_VAR(i32 %74)
  %76 = call i32 @EMIT3(i32 137, i32 %71, i64 %75)
  %77 = load i32, i32* @IA32_EBP, align 4
  %78 = load i32, i32* @IA32_EBX, align 4
  %79 = call i32 @add_2reg(i32 64, i32 %77, i32 %78)
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @STACK_VAR(i32 %82)
  %84 = call i32 @EMIT3(i32 137, i32 %79, i64 %83)
  %85 = load i32, i32* @IA32_EBP, align 4
  %86 = load i32, i32* @IA32_EBX, align 4
  %87 = call i32 @add_2reg(i32 64, i32 %85, i32 %86)
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @STACK_VAR(i32 %90)
  %92 = call i32 @EMIT3(i32 137, i32 %87, i64 %91)
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @PROLOGUE_SIZE, align 4
  %95 = icmp ne i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @BUILD_BUG_ON(i32 %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load i32**, i32*** %3, align 8
  store i32* %98, i32** %99, align 8
  ret void
}

declare dso_local i32 @EMIT1(i32) #1

declare dso_local i32 @EMIT2(i32, i32) #1

declare dso_local i32 @EMIT2_off32(i32, i32, i32) #1

declare dso_local i32 @EMIT3(i32, i32, i64) #1

declare dso_local i32 @add_1reg(i32, i32) #1

declare dso_local i32 @add_2reg(i32, i32, i32) #1

declare dso_local i64 @STACK_VAR(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
