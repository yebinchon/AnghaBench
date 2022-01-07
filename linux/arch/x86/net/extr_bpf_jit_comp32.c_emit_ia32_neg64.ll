; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_neg64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_neg64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA32_EAX = common dso_local global i32 0, align 4
@dst_lo = common dso_local global i32 0, align 4
@IA32_EDX = common dso_local global i32 0, align 4
@dst_hi = common dso_local global i32 0, align 4
@IA32_EBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @emit_ia32_neg64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ia32_neg64(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = load i32**, i32*** %6, align 8
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @IA32_EAX, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @dst_lo, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @IA32_EDX, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @dst_hi, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* @IA32_EBP, align 4
  %33 = load i32, i32* @IA32_EAX, align 4
  %34 = call i32 @add_2reg(i32 64, i32 %32, i32 %33)
  %35 = load i32, i32* @dst_lo, align 4
  %36 = call i32 @STACK_VAR(i32 %35)
  %37 = call i32 @EMIT3(i32 139, i32 %34, i32 %36)
  %38 = load i32, i32* @IA32_EBP, align 4
  %39 = load i32, i32* @IA32_EDX, align 4
  %40 = call i32 @add_2reg(i32 64, i32 %38, i32 %39)
  %41 = load i32, i32* @dst_hi, align 4
  %42 = call i32 @STACK_VAR(i32 %41)
  %43 = call i32 @EMIT3(i32 139, i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %31, %27
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @add_1reg(i32 216, i32 %45)
  %47 = call i32 @EMIT2(i32 247, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @add_1reg(i32 208, i32 %48)
  %50 = call i32 @EMIT3(i32 131, i32 %49, i32 0)
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @add_1reg(i32 216, i32 %51)
  %53 = call i32 @EMIT2(i32 247, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %44
  %57 = load i32, i32* @IA32_EBP, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @add_2reg(i32 64, i32 %57, i32 %58)
  %60 = load i32, i32* @dst_lo, align 4
  %61 = call i32 @STACK_VAR(i32 %60)
  %62 = call i32 @EMIT3(i32 137, i32 %59, i32 %61)
  %63 = load i32, i32* @IA32_EBP, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @add_2reg(i32 64, i32 %63, i32 %64)
  %66 = load i32, i32* @dst_hi, align 4
  %67 = call i32 @STACK_VAR(i32 %66)
  %68 = call i32 @EMIT3(i32 137, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %56, %44
  %70 = load i32*, i32** %7, align 8
  %71 = load i32**, i32*** %6, align 8
  store i32* %70, i32** %71, align 8
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
