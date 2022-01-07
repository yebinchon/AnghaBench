; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_mov_i.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_mov_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA32_EAX = common dso_local global i32 0, align 4
@IA32_EBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32**)* @emit_ia32_mov_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ia32_mov_i(i32 %0, i64 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %11 = load i32**, i32*** %8, align 8
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %4
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32, i32* @IA32_EAX, align 4
  %20 = load i32, i32* @IA32_EAX, align 4
  %21 = call i32 @add_2reg(i32 192, i32 %19, i32 %20)
  %22 = call i32 @EMIT2(i32 51, i32 %21)
  %23 = load i32, i32* @IA32_EBP, align 4
  %24 = load i32, i32* @IA32_EAX, align 4
  %25 = call i32 @add_2reg(i32 64, i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @STACK_VAR(i32 %26)
  %28 = call i32 @EMIT3(i32 137, i32 %25, i32 %27)
  br label %36

29:                                               ; preds = %15
  %30 = load i32, i32* @IA32_EBP, align 4
  %31 = call i32 @add_1reg(i32 64, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @STACK_VAR(i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @EMIT3_off32(i32 199, i32 %31, i32 %33, i64 %34)
  br label %36

36:                                               ; preds = %29, %18
  br label %51

37:                                               ; preds = %4
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @add_2reg(i32 192, i32 %41, i32 %42)
  %44 = call i32 @EMIT2(i32 51, i32 %43)
  br label %50

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @add_1reg(i32 192, i32 %46)
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @EMIT2_off32(i32 199, i32 %47, i64 %48)
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i32*, i32** %9, align 8
  %53 = load i32**, i32*** %8, align 8
  store i32* %52, i32** %53, align 8
  ret void
}

declare dso_local i32 @EMIT2(i32, i32) #1

declare dso_local i32 @add_2reg(i32, i32, i32) #1

declare dso_local i32 @EMIT3(i32, i32, i32) #1

declare dso_local i32 @STACK_VAR(i32) #1

declare dso_local i32 @EMIT3_off32(i32, i32, i32, i64) #1

declare dso_local i32 @add_1reg(i32, i32) #1

declare dso_local i32 @EMIT2_off32(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
