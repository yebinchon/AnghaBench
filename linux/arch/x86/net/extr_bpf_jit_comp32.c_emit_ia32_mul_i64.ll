; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_mul_i64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_mul_i64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA32_EAX = common dso_local global i32 0, align 4
@IA32_EBP = common dso_local global i32 0, align 4
@dst_hi = common dso_local global i32 0, align 4
@IA32_ECX = common dso_local global i32 0, align 4
@dst_lo = common dso_local global i32 0, align 4
@IA32_EDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32**)* @emit_ia32_mul_i64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ia32_mul_i64(i32* %0, i32 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %12 = load i32**, i32*** %8, align 8
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, -2147483648
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 -1, i32 0
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @IA32_EAX, align 4
  %20 = call i32 @add_1reg(i32 192, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @EMIT2_off32(i32 199, i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load i32, i32* @IA32_EBP, align 4
  %27 = call i32 @add_1reg(i32 96, i32 %26)
  %28 = load i32, i32* @dst_hi, align 4
  %29 = call i32 @STACK_VAR(i32 %28)
  %30 = call i32 @EMIT3(i32 247, i32 %27, i32 %29)
  br label %35

31:                                               ; preds = %4
  %32 = load i32, i32* @dst_hi, align 4
  %33 = call i32 @add_1reg(i32 224, i32 %32)
  %34 = call i32 @EMIT2(i32 247, i32 %33)
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* @IA32_ECX, align 4
  %37 = load i32, i32* @IA32_EAX, align 4
  %38 = call i32 @add_2reg(i32 192, i32 %36, i32 %37)
  %39 = call i32 @EMIT2(i32 137, i32 %38)
  %40 = load i32, i32* @IA32_EAX, align 4
  %41 = call i32 @add_1reg(i32 192, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @EMIT2_off32(i32 199, i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load i32, i32* @IA32_EBP, align 4
  %48 = call i32 @add_1reg(i32 96, i32 %47)
  %49 = load i32, i32* @dst_lo, align 4
  %50 = call i32 @STACK_VAR(i32 %49)
  %51 = call i32 @EMIT3(i32 247, i32 %48, i32 %50)
  br label %56

52:                                               ; preds = %35
  %53 = load i32, i32* @dst_lo, align 4
  %54 = call i32 @add_1reg(i32 224, i32 %53)
  %55 = call i32 @EMIT2(i32 247, i32 %54)
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i32, i32* @IA32_ECX, align 4
  %58 = load i32, i32* @IA32_EAX, align 4
  %59 = call i32 @add_2reg(i32 192, i32 %57, i32 %58)
  %60 = call i32 @EMIT2(i32 1, i32 %59)
  %61 = load i32, i32* @IA32_EAX, align 4
  %62 = call i32 @add_1reg(i32 192, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @EMIT2_off32(i32 199, i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = load i32, i32* @IA32_EBP, align 4
  %69 = call i32 @add_1reg(i32 96, i32 %68)
  %70 = load i32, i32* @dst_lo, align 4
  %71 = call i32 @STACK_VAR(i32 %70)
  %72 = call i32 @EMIT3(i32 247, i32 %69, i32 %71)
  br label %77

73:                                               ; preds = %56
  %74 = load i32, i32* @dst_lo, align 4
  %75 = call i32 @add_1reg(i32 224, i32 %74)
  %76 = call i32 @EMIT2(i32 247, i32 %75)
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i32, i32* @IA32_ECX, align 4
  %79 = load i32, i32* @IA32_EDX, align 4
  %80 = call i32 @add_2reg(i32 192, i32 %78, i32 %79)
  %81 = call i32 @EMIT2(i32 1, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %77
  %85 = load i32, i32* @IA32_EBP, align 4
  %86 = load i32, i32* @IA32_EAX, align 4
  %87 = call i32 @add_2reg(i32 64, i32 %85, i32 %86)
  %88 = load i32, i32* @dst_lo, align 4
  %89 = call i32 @STACK_VAR(i32 %88)
  %90 = call i32 @EMIT3(i32 137, i32 %87, i32 %89)
  %91 = load i32, i32* @IA32_EBP, align 4
  %92 = load i32, i32* @IA32_ECX, align 4
  %93 = call i32 @add_2reg(i32 64, i32 %91, i32 %92)
  %94 = load i32, i32* @dst_hi, align 4
  %95 = call i32 @STACK_VAR(i32 %94)
  %96 = call i32 @EMIT3(i32 137, i32 %93, i32 %95)
  br label %106

97:                                               ; preds = %77
  %98 = load i32, i32* @dst_lo, align 4
  %99 = load i32, i32* @IA32_EAX, align 4
  %100 = call i32 @add_2reg(i32 192, i32 %98, i32 %99)
  %101 = call i32 @EMIT2(i32 137, i32 %100)
  %102 = load i32, i32* @dst_hi, align 4
  %103 = load i32, i32* @IA32_ECX, align 4
  %104 = call i32 @add_2reg(i32 192, i32 %102, i32 %103)
  %105 = call i32 @EMIT2(i32 137, i32 %104)
  br label %106

106:                                              ; preds = %97, %84
  %107 = load i32*, i32** %9, align 8
  %108 = load i32**, i32*** %8, align 8
  store i32* %107, i32** %108, align 8
  ret void
}

declare dso_local i32 @EMIT2_off32(i32, i32, i32) #1

declare dso_local i32 @add_1reg(i32, i32) #1

declare dso_local i32 @EMIT3(i32, i32, i32) #1

declare dso_local i32 @STACK_VAR(i32) #1

declare dso_local i32 @EMIT2(i32, i32) #1

declare dso_local i32 @add_2reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
