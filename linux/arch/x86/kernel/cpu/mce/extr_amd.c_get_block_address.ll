; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_get_block_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_get_block_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (i32)* }

@mce_num_banks = common dso_local global i32 0, align 4
@NR_BLOCKS = common dso_local global i32 0, align 4
@mce_flags = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@msr_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@MASK_BLKPTR_LO = common dso_local global i32 0, align 4
@MCG_XBLK_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @get_block_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_block_address(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @mce_num_banks, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call i32 @per_cpu(i32 %17, i32 %18)
  %20 = icmp uge i32 %16, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @NR_BLOCKS, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %6
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %7, align 4
  br label %58

27:                                               ; preds = %21
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mce_flags, i32 0, i32 0), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @smca_get_block_address(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %58

35:                                               ; preds = %27
  %36 = load i32, i32* %12, align 4
  switch i32 %36, label %53 [
    i32 0, label %37
    i32 1, label %41
  ]

37:                                               ; preds = %35
  %38 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @msr_ops, i32 0, i32 0), align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 %38(i32 %39)
  store i32 %40, i32* %14, align 4
  br label %56

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @MASK_BLKPTR_LO, align 4
  %44 = and i32 %42, %43
  %45 = ashr i32 %44, 21
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @MCG_XBLK_ADDR, align 4
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %48, %41
  br label %56

53:                                               ; preds = %35
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %53, %52, %37
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %30, %25
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @per_cpu(i32, i32) #1

declare dso_local i32 @smca_get_block_address(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
