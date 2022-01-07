; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_arsh_i64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_arsh_i64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA32_EAX = common dso_local global i32 0, align 4
@dst_lo = common dso_local global i32 0, align 4
@IA32_EDX = common dso_local global i32 0, align 4
@dst_hi = common dso_local global i32 0, align 4
@IA32_EBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32**)* @emit_ia32_arsh_i64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ia32_arsh_i64(i32* %0, i32 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %14 = load i32**, i32*** %8, align 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @IA32_EAX, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @dst_lo, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @IA32_EDX, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @dst_hi, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i32, i32* @IA32_EBP, align 4
  %36 = load i32, i32* @IA32_EAX, align 4
  %37 = call i32 @add_2reg(i32 64, i32 %35, i32 %36)
  %38 = load i32, i32* @dst_lo, align 4
  %39 = call i32 @STACK_VAR(i32 %38)
  %40 = call i32 @EMIT3(i32 139, i32 %37, i32 %39)
  %41 = load i32, i32* @IA32_EBP, align 4
  %42 = load i32, i32* @IA32_EDX, align 4
  %43 = call i32 @add_2reg(i32 64, i32 %41, i32 %42)
  %44 = load i32, i32* @dst_hi, align 4
  %45 = call i32 @STACK_VAR(i32 %44)
  %46 = call i32 @EMIT3(i32 139, i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %34, %30
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 32
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @add_2reg(i32 192, i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @EMIT4(i32 15, i32 172, i32 %53, i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @add_1reg(i32 248, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @EMIT3(i32 193, i32 %57, i32 %58)
  br label %89

60:                                               ; preds = %47
  %61 = load i32, i32* %6, align 4
  %62 = icmp sge i32 %61, 32
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 64
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, 32
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @add_1reg(i32 248, i32 %69)
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @EMIT3(i32 193, i32 %70, i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @add_2reg(i32 192, i32 %73, i32 %74)
  %76 = call i32 @EMIT2(i32 137, i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @add_1reg(i32 248, i32 %77)
  %79 = call i32 @EMIT3(i32 193, i32 %78, i32 31)
  br label %88

80:                                               ; preds = %63, %60
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @add_1reg(i32 248, i32 %81)
  %83 = call i32 @EMIT3(i32 193, i32 %82, i32 31)
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @add_2reg(i32 192, i32 %84, i32 %85)
  %87 = call i32 @EMIT2(i32 137, i32 %86)
  br label %88

88:                                               ; preds = %80, %66
  br label %89

89:                                               ; preds = %88, %50
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load i32, i32* @IA32_EBP, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @add_2reg(i32 64, i32 %93, i32 %94)
  %96 = load i32, i32* @dst_lo, align 4
  %97 = call i32 @STACK_VAR(i32 %96)
  %98 = call i32 @EMIT3(i32 137, i32 %95, i32 %97)
  %99 = load i32, i32* @IA32_EBP, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @add_2reg(i32 64, i32 %99, i32 %100)
  %102 = load i32, i32* @dst_hi, align 4
  %103 = call i32 @STACK_VAR(i32 %102)
  %104 = call i32 @EMIT3(i32 137, i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %92, %89
  %106 = load i32*, i32** %9, align 8
  %107 = load i32**, i32*** %8, align 8
  store i32* %106, i32** %107, align 8
  ret void
}

declare dso_local i32 @EMIT3(i32, i32, i32) #1

declare dso_local i32 @add_2reg(i32, i32, i32) #1

declare dso_local i32 @STACK_VAR(i32) #1

declare dso_local i32 @EMIT4(i32, i32, i32, i32) #1

declare dso_local i32 @add_1reg(i32, i32) #1

declare dso_local i32 @EMIT2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
