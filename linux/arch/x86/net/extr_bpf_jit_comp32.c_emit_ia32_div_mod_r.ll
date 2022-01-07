; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_div_mod_r.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_div_mod_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA32_EBP = common dso_local global i64 0, align 8
@IA32_ECX = common dso_local global i64 0, align 8
@IA32_EAX = common dso_local global i64 0, align 8
@IA32_EDX = common dso_local global i64 0, align 8
@BPF_MOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i32, i32, i64**)* @emit_ia32_div_mod_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ia32_div_mod_r(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4, i64** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64** %5, i64*** %12, align 8
  %15 = load i64**, i64*** %12, align 8
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load i64, i64* @IA32_EBP, align 8
  %21 = load i64, i64* @IA32_ECX, align 8
  %22 = call i32 @add_2reg(i32 64, i64 %20, i64 %21)
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @STACK_VAR(i64 %23)
  %25 = call i32 @EMIT3(i32 139, i32 %22, i32 %24)
  br label %36

26:                                               ; preds = %6
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @IA32_ECX, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @IA32_ECX, align 8
  %33 = call i32 @add_2reg(i32 192, i64 %31, i64 %32)
  %34 = call i32 @EMIT2(i32 139, i32 %33)
  br label %35

35:                                               ; preds = %30, %26
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i64, i64* @IA32_EBP, align 8
  %41 = load i64, i64* @IA32_EAX, align 8
  %42 = call i32 @add_2reg(i32 64, i64 %40, i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @STACK_VAR(i64 %43)
  %45 = call i32 @EMIT3(i32 139, i32 %42, i32 %44)
  br label %51

46:                                               ; preds = %36
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @IA32_EAX, align 8
  %49 = call i32 @add_2reg(i32 192, i64 %47, i64 %48)
  %50 = call i32 @EMIT2(i32 139, i32 %49)
  br label %51

51:                                               ; preds = %46, %39
  %52 = load i64, i64* @IA32_EDX, align 8
  %53 = load i64, i64* @IA32_EDX, align 8
  %54 = call i32 @add_2reg(i32 192, i64 %52, i64 %53)
  %55 = call i32 @EMIT2(i32 49, i32 %54)
  %56 = load i64, i64* @IA32_ECX, align 8
  %57 = call i32 @add_1reg(i32 240, i64 %56)
  %58 = call i32 @EMIT2(i32 247, i32 %57)
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @BPF_MOD, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %51
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i64, i64* @IA32_EBP, align 8
  %67 = load i64, i64* @IA32_EDX, align 8
  %68 = call i32 @add_2reg(i32 64, i64 %66, i64 %67)
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @STACK_VAR(i64 %69)
  %71 = call i32 @EMIT3(i32 137, i32 %68, i32 %70)
  br label %77

72:                                               ; preds = %62
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @IA32_EDX, align 8
  %75 = call i32 @add_2reg(i32 192, i64 %73, i64 %74)
  %76 = call i32 @EMIT2(i32 137, i32 %75)
  br label %77

77:                                               ; preds = %72, %65
  br label %94

78:                                               ; preds = %51
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i64, i64* @IA32_EBP, align 8
  %83 = load i64, i64* @IA32_EAX, align 8
  %84 = call i32 @add_2reg(i32 64, i64 %82, i64 %83)
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @STACK_VAR(i64 %85)
  %87 = call i32 @EMIT3(i32 137, i32 %84, i32 %86)
  br label %93

88:                                               ; preds = %78
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* @IA32_EAX, align 8
  %91 = call i32 @add_2reg(i32 192, i64 %89, i64 %90)
  %92 = call i32 @EMIT2(i32 137, i32 %91)
  br label %93

93:                                               ; preds = %88, %81
  br label %94

94:                                               ; preds = %93, %77
  %95 = load i64*, i64** %13, align 8
  %96 = load i64**, i64*** %12, align 8
  store i64* %95, i64** %96, align 8
  ret void
}

declare dso_local i32 @EMIT3(i32, i32, i32) #1

declare dso_local i32 @add_2reg(i32, i64, i64) #1

declare dso_local i32 @STACK_VAR(i64) #1

declare dso_local i32 @EMIT2(i32, i32) #1

declare dso_local i32 @add_1reg(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
