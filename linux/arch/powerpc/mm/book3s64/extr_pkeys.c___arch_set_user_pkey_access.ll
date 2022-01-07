; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_pkeys.c___arch_set_user_pkey_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_pkeys.c___arch_set_user_pkey_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PKEY_DISABLE_EXECUTE = common dso_local global i64 0, align 8
@pkey_execute_disable_supported = common dso_local global i32 0, align 4
@IAMR_EX_BIT = common dso_local global i32 0, align 4
@PKEY_DISABLE_ACCESS = common dso_local global i64 0, align 8
@AMR_RD_BIT = common dso_local global i32 0, align 4
@AMR_WR_BIT = common dso_local global i32 0, align 4
@PKEY_DISABLE_WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__arch_set_user_pkey_access(%struct.task_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @is_pkey_enabled(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %59

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @PKEY_DISABLE_EXECUTE, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load i32, i32* @pkey_execute_disable_supported, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %59

27:                                               ; preds = %21
  %28 = load i32, i32* @IAMR_EX_BIT, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %27, %16
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @init_iamr(i32 %32, i32 %33)
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @PKEY_DISABLE_ACCESS, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i32, i32* @AMR_RD_BIT, align 4
  %41 = load i32, i32* @AMR_WR_BIT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %55

45:                                               ; preds = %31
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @PKEY_DISABLE_WRITE, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @AMR_WR_BIT, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @init_amr(i32 %56, i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %24, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @is_pkey_enabled(i32) #1

declare dso_local i32 @init_iamr(i32, i32) #1

declare dso_local i32 @init_amr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
