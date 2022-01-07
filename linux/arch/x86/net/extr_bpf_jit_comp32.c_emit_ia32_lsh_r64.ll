; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_lsh_r64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_lsh_r64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA32_EAX = common dso_local global i32 0, align 4
@dst_lo = common dso_local global i32 0, align 4
@IA32_EDX = common dso_local global i32 0, align 4
@dst_hi = common dso_local global i32 0, align 4
@IA32_EBP = common dso_local global i32 0, align 4
@IA32_ECX = common dso_local global i32 0, align 4
@src_lo = common dso_local global i32 0, align 4
@IA32_JB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32**)* @emit_ia32_lsh_r64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ia32_lsh_r64(i32* %0, i32* %1, i32 %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  %15 = load i32**, i32*** %10, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @IA32_EAX, align 4
  br label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @dst_lo, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @IA32_EDX, align 4
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @dst_hi, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32, i32* @IA32_EBP, align 4
  %37 = load i32, i32* @IA32_EAX, align 4
  %38 = call i32 @add_2reg(i32 64, i32 %36, i32 %37)
  %39 = load i32, i32* @dst_lo, align 4
  %40 = call i32 @STACK_VAR(i32 %39)
  %41 = call i32 @EMIT3(i32 139, i32 %38, i32 %40)
  %42 = load i32, i32* @IA32_EBP, align 4
  %43 = load i32, i32* @IA32_EDX, align 4
  %44 = call i32 @add_2reg(i32 64, i32 %42, i32 %43)
  %45 = load i32, i32* @dst_hi, align 4
  %46 = call i32 @STACK_VAR(i32 %45)
  %47 = call i32 @EMIT3(i32 139, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %35, %31
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* @IA32_EBP, align 4
  %53 = load i32, i32* @IA32_ECX, align 4
  %54 = call i32 @add_2reg(i32 64, i32 %52, i32 %53)
  %55 = load i32, i32* @src_lo, align 4
  %56 = call i32 @STACK_VAR(i32 %55)
  %57 = call i32 @EMIT3(i32 139, i32 %54, i32 %56)
  br label %63

58:                                               ; preds = %48
  %59 = load i32, i32* @src_lo, align 4
  %60 = load i32, i32* @IA32_ECX, align 4
  %61 = call i32 @add_2reg(i32 192, i32 %59, i32 %60)
  %62 = call i32 @EMIT2(i32 139, i32 %61)
  br label %63

63:                                               ; preds = %58, %51
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @add_2reg(i32 192, i32 %64, i32 %65)
  %67 = call i32 @EMIT3(i32 15, i32 165, i32 %66)
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @add_1reg(i32 224, i32 %68)
  %70 = call i32 @EMIT2(i32 211, i32 %69)
  %71 = load i32, i32* @IA32_ECX, align 4
  %72 = call i32 @add_1reg(i32 248, i32 %71)
  %73 = call i32 @EMIT3(i32 131, i32 %72, i32 32)
  %74 = load i32, i32* @IA32_JB, align 4
  %75 = call i32 @EMIT2(i32 %74, i32 4)
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @add_2reg(i32 192, i32 %76, i32 %77)
  %79 = call i32 @EMIT2(i32 137, i32 %78)
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @add_2reg(i32 192, i32 %80, i32 %81)
  %83 = call i32 @EMIT2(i32 51, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %63
  %87 = load i32, i32* @IA32_EBP, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @add_2reg(i32 64, i32 %87, i32 %88)
  %90 = load i32, i32* @dst_lo, align 4
  %91 = call i32 @STACK_VAR(i32 %90)
  %92 = call i32 @EMIT3(i32 137, i32 %89, i32 %91)
  %93 = load i32, i32* @IA32_EBP, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @add_2reg(i32 64, i32 %93, i32 %94)
  %96 = load i32, i32* @dst_hi, align 4
  %97 = call i32 @STACK_VAR(i32 %96)
  %98 = call i32 @EMIT3(i32 137, i32 %95, i32 %97)
  br label %99

99:                                               ; preds = %86, %63
  %100 = load i32*, i32** %11, align 8
  %101 = load i32**, i32*** %10, align 8
  store i32* %100, i32** %101, align 8
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
