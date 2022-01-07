; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/math-emu/extr_fdivs.c_fdivs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/math-emu/extr_fdivs.c_fdivs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4
@FP_DECL_EX = common dso_local global i32 0, align 4
@B_c = common dso_local global i64 0, align 8
@FP_CLS_ZERO = common dso_local global i64 0, align 8
@A_c = common dso_local global i64 0, align 8
@FP_EX_DIVZERO = common dso_local global i32 0, align 4
@FP_CUR_EXCEPTIONS = common dso_local global i32 0, align 4
@__FPU_FPCSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdivs(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @A, align 4
  %8 = call i32 @FP_DECL_S(i32 %7)
  %9 = load i32, i32* @B, align 4
  %10 = call i32 @FP_DECL_S(i32 %9)
  %11 = load i32, i32* @R, align 4
  %12 = call i32 @FP_DECL_S(i32 %11)
  %13 = load i32, i32* @FP_DECL_EX, align 4
  %14 = load i32, i32* @A, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @FP_UNPACK_SP(i32 %14, i8* %15)
  %17 = load i32, i32* @B, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @FP_UNPACK_SP(i32 %17, i8* %18)
  %20 = load i64, i64* @B_c, align 8
  %21 = load i64, i64* @FP_CLS_ZERO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load i64, i64* @A_c, align 8
  %25 = load i64, i64* @FP_CLS_ZERO, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @FP_EX_DIVZERO, align 4
  %29 = call i32 @FP_SET_EXCEPTION(i32 %28)
  br label %30

30:                                               ; preds = %27, %23, %3
  %31 = load i32, i32* @R, align 4
  %32 = load i32, i32* @A, align 4
  %33 = load i32, i32* @B, align 4
  %34 = call i32 @FP_DIV_S(i32 %31, i32 %32, i32 %33)
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @R, align 4
  %37 = call i32 @FP_PACK_SP(i8* %35, i32 %36)
  %38 = load i32, i32* @FP_CUR_EXCEPTIONS, align 4
  %39 = load i32, i32* @__FPU_FPCSR, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* @__FPU_FPCSR, align 4
  ret void
}

declare dso_local i32 @FP_DECL_S(i32) #1

declare dso_local i32 @FP_UNPACK_SP(i32, i8*) #1

declare dso_local i32 @FP_SET_EXCEPTION(i32) #1

declare dso_local i32 @FP_DIV_S(i32, i32, i32) #1

declare dso_local i32 @FP_PACK_SP(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
