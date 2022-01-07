; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_mov_r.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_mov_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA32_EAX = common dso_local global i32 0, align 4
@IA32_EBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32**)* @emit_ia32_mov_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ia32_mov_r(i32 %0, i32 %1, i32 %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  %14 = load i32**, i32*** %10, align 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @IA32_EAX, align 4
  br label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, i32* @IA32_EBP, align 4
  %28 = load i32, i32* @IA32_EAX, align 4
  %29 = call i32 @add_2reg(i32 64, i32 %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @STACK_VAR(i32 %30)
  %32 = call i32 @EMIT3(i32 139, i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %26, %22
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* @IA32_EBP, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @add_2reg(i32 64, i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @STACK_VAR(i32 %40)
  %42 = call i32 @EMIT3(i32 137, i32 %39, i32 %41)
  br label %48

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @add_2reg(i32 192, i32 %44, i32 %45)
  %47 = call i32 @EMIT2(i32 137, i32 %46)
  br label %48

48:                                               ; preds = %43, %36
  %49 = load i32*, i32** %11, align 8
  %50 = load i32**, i32*** %10, align 8
  store i32* %49, i32** %50, align 8
  ret void
}

declare dso_local i32 @EMIT3(i32, i32, i32) #1

declare dso_local i32 @add_2reg(i32, i32, i32) #1

declare dso_local i32 @STACK_VAR(i32) #1

declare dso_local i32 @EMIT2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
