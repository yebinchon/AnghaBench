; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_mpc8xx.c_mpc885_get_clock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_mpc8xx.c_mpc885_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"mpc885_get_clock: Couldn't get IMMR base.\0D\0A\00", align 1
@MPC8XX_PLPRCR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Warning: PLPRCR[MFI] value of %d out-of-bounds\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpc885_get_clock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = call i32* (...) @fsl_get_immr()
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %58

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* @MPC8XX_PLPRCR, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = call i32 @in_be32(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 15
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 5, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %16
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 1
  %32 = and i32 %31, 15
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 22
  %35 = and i32 %34, 31
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 27
  %38 = and i32 %37, 31
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %29
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = sdiv i32 %47, %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %44, %29
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  %57 = sdiv i32 %54, %56
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32* @fsl_get_immr(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @in_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
