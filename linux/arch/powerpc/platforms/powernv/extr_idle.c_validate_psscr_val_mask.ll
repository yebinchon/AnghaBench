; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_idle.c_validate_psscr_val_mask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_idle.c_validate_psscr_val_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSSCR_HV_DEFAULT_VAL = common dso_local global i32 0, align 4
@PSSCR_HV_DEFAULT_MASK = common dso_local global i32 0, align 4
@ERR_EC_ESL_MISMATCH = common dso_local global i32 0, align 4
@OPAL_PM_LOSE_FULL_CONTEXT = common dso_local global i32 0, align 4
@ERR_DEEP_STATE_ESL_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_psscr_val_mask(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 15
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PSSCR_HV_DEFAULT_VAL, align 4
  %16 = or i32 %14, %15
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @PSSCR_HV_DEFAULT_MASK, align 4
  %19 = load i32*, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %46

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @GET_PSSCR_ESL(i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @GET_PSSCR_EC(i32 %26)
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @ERR_EC_ESL_MISMATCH, align 4
  store i32 %30, i32* %8, align 4
  br label %44

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @OPAL_PM_LOSE_FULL_CONTEXT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @GET_PSSCR_ESL(i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @ERR_DEEP_STATE_ESL_MISMATCH, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %36, %31
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %12
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @GET_PSSCR_ESL(i32) #1

declare dso_local i64 @GET_PSSCR_EC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
