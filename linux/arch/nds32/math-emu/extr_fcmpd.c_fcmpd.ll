; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/math-emu/extr_fcmpd.c_fcmpd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/math-emu/extr_fcmpd.c_fcmpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@FP_DECL_EX = common dso_local global i32 0, align 4
@SF_CUN = common dso_local global i32 0, align 4
@SF_CGT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcmpd(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @A, align 4
  %11 = call i32 @FP_DECL_D(i32 %10)
  %12 = load i32, i32* @B, align 4
  %13 = call i32 @FP_DECL_D(i32 %12)
  %14 = load i32, i32* @FP_DECL_EX, align 4
  %15 = load i32, i32* @A, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @FP_UNPACK_DP(i32 %15, i8* %16)
  %18 = load i32, i32* @B, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @FP_UNPACK_DP(i32 %18, i8* %19)
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @A, align 4
  %23 = load i32, i32* @B, align 4
  %24 = load i32, i32* @SF_CUN, align 4
  %25 = call i32 @FP_CMP_D(i64 %21, i32 %22, i32 %23, i32 %24)
  %26 = load i64, i64* %9, align 8
  %27 = add nsw i64 %26, 2
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @SF_CGT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i8*, i8** %5, align 8
  %33 = bitcast i8* %32 to i64*
  store i64 0, i64* %33, align 8
  br label %45

34:                                               ; preds = %4
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = and i64 %35, %37
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = sext i32 %41 to i64
  %43 = load i8*, i8** %5, align 8
  %44 = bitcast i8* %43 to i64*
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %34, %31
  ret i32 0
}

declare dso_local i32 @FP_DECL_D(i32) #1

declare dso_local i32 @FP_UNPACK_DP(i32, i8*) #1

declare dso_local i32 @FP_CMP_D(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
