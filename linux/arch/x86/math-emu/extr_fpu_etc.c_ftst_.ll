; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_fpu_etc.c_ftst_.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_fpu_etc.c_ftst_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SW_C3 = common dso_local global i32 0, align 4
@SIGN_POS = common dso_local global i32 0, align 4
@SW_C0 = common dso_local global i32 0, align 4
@SW_C2 = common dso_local global i32 0, align 4
@EX_Invalid = common dso_local global i32 0, align 4
@EX_INTERNAL = common dso_local global i32 0, align 4
@EX_StackUnder = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @ftst_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftst_(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %78 [
    i32 131, label %6
    i32 132, label %9
    i32 133, label %20
    i32 134, label %69
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @SW_C3, align 4
  %8 = call i32 @setcc(i32 %7)
  br label %78

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @getsign(i32* %10)
  %12 = load i32, i32* @SIGN_POS, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @setcc(i32 0)
  br label %19

16:                                               ; preds = %9
  %17 = load i32, i32* @SW_C0, align 4
  %18 = call i32 @setcc(i32 %17)
  br label %19

19:                                               ; preds = %16, %14
  br label %78

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @FPU_Special(i32* %21)
  switch i32 %22, label %58 [
    i32 130, label %23
    i32 128, label %38
    i32 129, label %47
  ]

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @getsign(i32* %24)
  %26 = load i32, i32* @SIGN_POS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @setcc(i32 0)
  br label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @SW_C0, align 4
  %32 = call i32 @setcc(i32 %31)
  br label %33

33:                                               ; preds = %30, %28
  %34 = call i32 (...) @denormal_operand()
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %78

37:                                               ; preds = %33
  br label %68

38:                                               ; preds = %20
  %39 = load i32, i32* @SW_C0, align 4
  %40 = load i32, i32* @SW_C2, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SW_C3, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @setcc(i32 %43)
  %45 = load i32, i32* @EX_Invalid, align 4
  %46 = call i32 @EXCEPTION(i32 %45)
  br label %68

47:                                               ; preds = %20
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @getsign(i32* %48)
  %50 = load i32, i32* @SIGN_POS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @setcc(i32 0)
  br label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @SW_C0, align 4
  %56 = call i32 @setcc(i32 %55)
  br label %57

57:                                               ; preds = %54, %52
  br label %68

58:                                               ; preds = %20
  %59 = load i32, i32* @SW_C0, align 4
  %60 = load i32, i32* @SW_C2, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @SW_C3, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @setcc(i32 %63)
  %65 = load i32, i32* @EX_INTERNAL, align 4
  %66 = or i32 %65, 20
  %67 = call i32 @EXCEPTION(i32 %66)
  br label %68

68:                                               ; preds = %58, %57, %38, %37
  br label %78

69:                                               ; preds = %2
  %70 = load i32, i32* @SW_C0, align 4
  %71 = load i32, i32* @SW_C2, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @SW_C3, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @setcc(i32 %74)
  %76 = load i32, i32* @EX_StackUnder, align 4
  %77 = call i32 @EXCEPTION(i32 %76)
  br label %78

78:                                               ; preds = %36, %2, %69, %68, %19, %6
  ret void
}

declare dso_local i32 @setcc(i32) #1

declare dso_local i32 @getsign(i32*) #1

declare dso_local i32 @FPU_Special(i32*) #1

declare dso_local i32 @denormal_operand(...) #1

declare dso_local i32 @EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
