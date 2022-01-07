; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/math-emu/extr_fs2uiz.c_fs2ui_z.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/math-emu/extr_fs2uiz.c_fs2ui_z.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = common dso_local global i32 0, align 4
@FP_DECL_EX = common dso_local global i32 0, align 4
@A_c = common dso_local global i64 0, align 8
@FP_CLS_INF = common dso_local global i64 0, align 8
@A_s = common dso_local global i64 0, align 8
@FP_EX_INVALID = common dso_local global i32 0, align 4
@__FPU_FPCSR = common dso_local global i32 0, align 4
@FP_CLS_NAN = common dso_local global i64 0, align 8
@FP_CUR_EXCEPTIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fs2ui_z(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @A, align 4
  %7 = call i32 @FP_DECL_S(i32 %6)
  %8 = load i32, i32* @FP_DECL_EX, align 4
  %9 = load i32, i32* @A, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @FP_UNPACK_SP(i32 %9, i8* %10)
  %12 = load i64, i64* @A_c, align 8
  %13 = load i64, i64* @FP_CLS_INF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i64, i64* @A_s, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 -1, i32 0
  %20 = load i8*, i8** %3, align 8
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @FP_EX_INVALID, align 4
  %23 = load i32, i32* @__FPU_FPCSR, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* @__FPU_FPCSR, align 4
  br label %46

25:                                               ; preds = %2
  %26 = load i64, i64* @A_c, align 8
  %27 = load i64, i64* @FP_CLS_NAN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i8*, i8** %3, align 8
  %31 = bitcast i8* %30 to i32*
  store i32 -1, i32* %31, align 4
  %32 = load i32, i32* @FP_EX_INVALID, align 4
  %33 = load i32, i32* @__FPU_FPCSR, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* @__FPU_FPCSR, align 4
  br label %45

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @A, align 4
  %38 = call i32 @FP_TO_INT_S(i32 %36, i32 %37, i32 32, i32 0)
  %39 = load i32, i32* @FP_CUR_EXCEPTIONS, align 4
  %40 = load i32, i32* @__FPU_FPCSR, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* @__FPU_FPCSR, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = bitcast i8* %43 to i32*
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %35, %29
  br label %46

46:                                               ; preds = %45, %15
  ret void
}

declare dso_local i32 @FP_DECL_S(i32) #1

declare dso_local i32 @FP_UNPACK_SP(i32, i8*) #1

declare dso_local i32 @FP_TO_INT_S(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
