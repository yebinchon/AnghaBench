; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_epilogue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bpf2ia32 = common dso_local global i32** null, align 8
@BPF_REG_0 = common dso_local global i64 0, align 8
@IA32_EBP = common dso_local global i32 0, align 4
@IA32_EAX = common dso_local global i32 0, align 4
@IA32_EDX = common dso_local global i32 0, align 4
@SCRATCH_SIZE = common dso_local global i32 0, align 4
@IA32_EBX = common dso_local global i32 0, align 4
@IA32_ESI = common dso_local global i32 0, align 4
@IA32_EDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32)* @emit_epilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_epilogue(i32** %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32**, i32*** %3, align 8
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = load i32**, i32*** @bpf2ia32, align 8
  %11 = load i64, i64* @BPF_REG_0, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @IA32_EBP, align 4
  %15 = load i32, i32* @IA32_EAX, align 4
  %16 = call i32 @add_2reg(i32 64, i32 %14, i32 %15)
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @STACK_VAR(i32 %19)
  %21 = call i32 @EMIT3(i32 139, i32 %16, i32 %20)
  %22 = load i32, i32* @IA32_EBP, align 4
  %23 = load i32, i32* @IA32_EDX, align 4
  %24 = call i32 @add_2reg(i32 64, i32 %22, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @STACK_VAR(i32 %27)
  %29 = call i32 @EMIT3(i32 139, i32 %24, i32 %28)
  %30 = load i32, i32* @IA32_EBP, align 4
  %31 = call i32 @add_1reg(i32 192, i32 %30)
  %32 = load i32, i32* @SCRATCH_SIZE, align 4
  %33 = add nsw i32 %32, 12
  %34 = call i32 @EMIT3(i32 131, i32 %31, i32 %33)
  %35 = load i32, i32* @IA32_EBP, align 4
  %36 = load i32, i32* @IA32_EBX, align 4
  %37 = call i32 @add_2reg(i32 64, i32 %35, i32 %36)
  %38 = call i32 @EMIT3(i32 139, i32 %37, i32 -12)
  %39 = load i32, i32* @IA32_EBP, align 4
  %40 = load i32, i32* @IA32_ESI, align 4
  %41 = call i32 @add_2reg(i32 64, i32 %39, i32 %40)
  %42 = call i32 @EMIT3(i32 139, i32 %41, i32 -8)
  %43 = load i32, i32* @IA32_EBP, align 4
  %44 = load i32, i32* @IA32_EDI, align 4
  %45 = call i32 @add_2reg(i32 64, i32 %43, i32 %44)
  %46 = call i32 @EMIT3(i32 139, i32 %45, i32 -4)
  %47 = call i32 @EMIT1(i32 201)
  %48 = call i32 @EMIT1(i32 195)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32**, i32*** %3, align 8
  store i32* %49, i32** %50, align 8
  ret void
}

declare dso_local i32 @EMIT3(i32, i32, i32) #1

declare dso_local i32 @add_2reg(i32, i32, i32) #1

declare dso_local i32 @STACK_VAR(i32) #1

declare dso_local i32 @add_1reg(i32, i32) #1

declare dso_local i32 @EMIT1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
