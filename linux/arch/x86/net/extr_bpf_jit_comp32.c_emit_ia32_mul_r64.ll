; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_mul_r64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_mul_r64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA32_EBP = common dso_local global i32 0, align 4
@IA32_EAX = common dso_local global i32 0, align 4
@dst_hi = common dso_local global i32 0, align 4
@src_lo = common dso_local global i32 0, align 4
@IA32_ECX = common dso_local global i32 0, align 4
@dst_lo = common dso_local global i32 0, align 4
@src_hi = common dso_local global i32 0, align 4
@IA32_EDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32**)* @emit_ia32_mul_r64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ia32_mul_r64(i32* %0, i32* %1, i32 %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  %13 = load i32**, i32*** %10, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load i32, i32* @IA32_EBP, align 4
  %19 = load i32, i32* @IA32_EAX, align 4
  %20 = call i32 @add_2reg(i32 64, i32 %18, i32 %19)
  %21 = load i32, i32* @dst_hi, align 4
  %22 = call i32 @STACK_VAR(i32 %21)
  %23 = call i32 @EMIT3(i32 139, i32 %20, i32 %22)
  br label %29

24:                                               ; preds = %5
  %25 = load i32, i32* @dst_hi, align 4
  %26 = load i32, i32* @IA32_EAX, align 4
  %27 = call i32 @add_2reg(i32 192, i32 %25, i32 %26)
  %28 = call i32 @EMIT2(i32 139, i32 %27)
  br label %29

29:                                               ; preds = %24, %17
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @IA32_EBP, align 4
  %34 = call i32 @add_1reg(i32 96, i32 %33)
  %35 = load i32, i32* @src_lo, align 4
  %36 = call i32 @STACK_VAR(i32 %35)
  %37 = call i32 @EMIT3(i32 247, i32 %34, i32 %36)
  br label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @src_lo, align 4
  %40 = call i32 @add_1reg(i32 224, i32 %39)
  %41 = call i32 @EMIT2(i32 247, i32 %40)
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i32, i32* @IA32_ECX, align 4
  %44 = load i32, i32* @IA32_EAX, align 4
  %45 = call i32 @add_2reg(i32 192, i32 %43, i32 %44)
  %46 = call i32 @EMIT2(i32 137, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i32, i32* @IA32_EBP, align 4
  %51 = load i32, i32* @IA32_EAX, align 4
  %52 = call i32 @add_2reg(i32 64, i32 %50, i32 %51)
  %53 = load i32, i32* @dst_lo, align 4
  %54 = call i32 @STACK_VAR(i32 %53)
  %55 = call i32 @EMIT3(i32 139, i32 %52, i32 %54)
  br label %61

56:                                               ; preds = %42
  %57 = load i32, i32* @dst_lo, align 4
  %58 = load i32, i32* @IA32_EAX, align 4
  %59 = call i32 @add_2reg(i32 192, i32 %57, i32 %58)
  %60 = call i32 @EMIT2(i32 139, i32 %59)
  br label %61

61:                                               ; preds = %56, %49
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* @IA32_EBP, align 4
  %66 = call i32 @add_1reg(i32 96, i32 %65)
  %67 = load i32, i32* @src_hi, align 4
  %68 = call i32 @STACK_VAR(i32 %67)
  %69 = call i32 @EMIT3(i32 247, i32 %66, i32 %68)
  br label %74

70:                                               ; preds = %61
  %71 = load i32, i32* @src_hi, align 4
  %72 = call i32 @add_1reg(i32 224, i32 %71)
  %73 = call i32 @EMIT2(i32 247, i32 %72)
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i32, i32* @IA32_ECX, align 4
  %76 = load i32, i32* @IA32_EAX, align 4
  %77 = call i32 @add_2reg(i32 192, i32 %75, i32 %76)
  %78 = call i32 @EMIT2(i32 1, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i32, i32* @IA32_EBP, align 4
  %83 = load i32, i32* @IA32_EAX, align 4
  %84 = call i32 @add_2reg(i32 64, i32 %82, i32 %83)
  %85 = load i32, i32* @dst_lo, align 4
  %86 = call i32 @STACK_VAR(i32 %85)
  %87 = call i32 @EMIT3(i32 139, i32 %84, i32 %86)
  br label %93

88:                                               ; preds = %74
  %89 = load i32, i32* @dst_lo, align 4
  %90 = load i32, i32* @IA32_EAX, align 4
  %91 = call i32 @add_2reg(i32 192, i32 %89, i32 %90)
  %92 = call i32 @EMIT2(i32 139, i32 %91)
  br label %93

93:                                               ; preds = %88, %81
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* @IA32_EBP, align 4
  %98 = call i32 @add_1reg(i32 96, i32 %97)
  %99 = load i32, i32* @src_lo, align 4
  %100 = call i32 @STACK_VAR(i32 %99)
  %101 = call i32 @EMIT3(i32 247, i32 %98, i32 %100)
  br label %106

102:                                              ; preds = %93
  %103 = load i32, i32* @src_lo, align 4
  %104 = call i32 @add_1reg(i32 224, i32 %103)
  %105 = call i32 @EMIT2(i32 247, i32 %104)
  br label %106

106:                                              ; preds = %102, %96
  %107 = load i32, i32* @IA32_ECX, align 4
  %108 = load i32, i32* @IA32_EDX, align 4
  %109 = call i32 @add_2reg(i32 192, i32 %107, i32 %108)
  %110 = call i32 @EMIT2(i32 1, i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %106
  %114 = load i32, i32* @IA32_EBP, align 4
  %115 = load i32, i32* @IA32_EAX, align 4
  %116 = call i32 @add_2reg(i32 64, i32 %114, i32 %115)
  %117 = load i32, i32* @dst_lo, align 4
  %118 = call i32 @STACK_VAR(i32 %117)
  %119 = call i32 @EMIT3(i32 137, i32 %116, i32 %118)
  %120 = load i32, i32* @IA32_EBP, align 4
  %121 = load i32, i32* @IA32_ECX, align 4
  %122 = call i32 @add_2reg(i32 64, i32 %120, i32 %121)
  %123 = load i32, i32* @dst_hi, align 4
  %124 = call i32 @STACK_VAR(i32 %123)
  %125 = call i32 @EMIT3(i32 137, i32 %122, i32 %124)
  br label %135

126:                                              ; preds = %106
  %127 = load i32, i32* @dst_lo, align 4
  %128 = load i32, i32* @IA32_EAX, align 4
  %129 = call i32 @add_2reg(i32 192, i32 %127, i32 %128)
  %130 = call i32 @EMIT2(i32 137, i32 %129)
  %131 = load i32, i32* @dst_hi, align 4
  %132 = load i32, i32* @IA32_ECX, align 4
  %133 = call i32 @add_2reg(i32 192, i32 %131, i32 %132)
  %134 = call i32 @EMIT2(i32 137, i32 %133)
  br label %135

135:                                              ; preds = %126, %113
  %136 = load i32*, i32** %11, align 8
  %137 = load i32**, i32*** %10, align 8
  store i32* %136, i32** %137, align 8
  ret void
}

declare dso_local i32 @EMIT3(i32, i32, i32) #1

declare dso_local i32 @add_2reg(i32, i32, i32) #1

declare dso_local i32 @STACK_VAR(i32) #1

declare dso_local i32 @EMIT2(i32, i32) #1

declare dso_local i32 @add_1reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
