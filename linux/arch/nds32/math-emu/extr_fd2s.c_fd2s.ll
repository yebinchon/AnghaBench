; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/math-emu/extr_fd2s.c_fd2s.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/math-emu/extr_fd2s.c_fd2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4
@FP_DECL_EX = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@D = common dso_local global i32 0, align 4
@FP_CUR_EXCEPTIONS = common dso_local global i32 0, align 4
@__FPU_FPCSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fd2s(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @A, align 4
  %6 = call i32 @FP_DECL_D(i32 %5)
  %7 = load i32, i32* @R, align 4
  %8 = call i32 @FP_DECL_S(i32 %7)
  %9 = load i32, i32* @FP_DECL_EX, align 4
  %10 = load i32, i32* @A, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @FP_UNPACK_DP(i32 %10, i8* %11)
  %13 = load i32, i32* @S, align 4
  %14 = load i32, i32* @D, align 4
  %15 = load i32, i32* @R, align 4
  %16 = load i32, i32* @A, align 4
  %17 = call i32 @FP_CONV(i32 %13, i32 %14, i32 1, i32 2, i32 %15, i32 %16)
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @R, align 4
  %20 = call i32 @FP_PACK_SP(i8* %18, i32 %19)
  %21 = load i32, i32* @FP_CUR_EXCEPTIONS, align 4
  %22 = load i32, i32* @__FPU_FPCSR, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* @__FPU_FPCSR, align 4
  ret void
}

declare dso_local i32 @FP_DECL_D(i32) #1

declare dso_local i32 @FP_DECL_S(i32) #1

declare dso_local i32 @FP_UNPACK_DP(i32, i8*) #1

declare dso_local i32 @FP_CONV(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FP_PACK_SP(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
