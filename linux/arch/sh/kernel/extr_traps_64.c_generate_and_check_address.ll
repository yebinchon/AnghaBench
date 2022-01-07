; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_traps_64.c_generate_and_check_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_traps_64.c_generate_and_check_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }

@TASK_SIZE = common dso_local global i64 0, align 8
@PERF_COUNT_SW_EMULATION_FAULTS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, i32, i32, i64*)* @generate_and_check_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_and_check_address(%struct.pt_regs* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %18 = load i32, i32* %10, align 4
  %19 = shl i32 1, %18
  switch i32 %19, label %28 [
    i32 1, label %20
    i32 2, label %22
    i32 4, label %24
    i32 8, label %26
  ]

20:                                               ; preds = %5
  %21 = call i32 (...) @inc_unaligned_byte_access()
  br label %28

22:                                               ; preds = %5
  %23 = call i32 (...) @inc_unaligned_word_access()
  br label %28

24:                                               ; preds = %5
  %25 = call i32 (...) @inc_unaligned_dword_access()
  br label %28

26:                                               ; preds = %5
  %27 = call i32 (...) @inc_unaligned_multi_access()
  br label %28

28:                                               ; preds = %5, %26, %24, %22, %20
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %29, 20
  %31 = and i32 %30, 63
  store i32 %31, i32* %14, align 4
  %32 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %28
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 10
  %44 = and i32 %43, 1023
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @sign_extend64(i32 %45, i32 9)
  store i32 %46, i32* %15, align 4
  %47 = load i64, i64* %12, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %10, align 4
  %51 = shl i32 %49, %50
  %52 = add nsw i32 %48, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %13, align 8
  br label %68

54:                                               ; preds = %28
  %55 = load i32, i32* %8, align 4
  %56 = ashr i32 %55, 10
  %57 = and i32 %56, 63
  store i32 %57, i32* %17, align 4
  %58 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %59 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %16, align 8
  %67 = add nsw i64 %65, %66
  store i64 %67, i64* %13, align 8
  br label %68

68:                                               ; preds = %54, %41
  %69 = load i64, i64* %13, align 8
  %70 = call i32 @address_is_sign_extended(i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store i32 -1, i32* %6, align 4
  br label %97

73:                                               ; preds = %68
  %74 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %75 = call i64 @user_mode(%struct.pt_regs* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = call i32 (...) @inc_unaligned_user_access()
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* @TASK_SIZE, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 -1, i32* %6, align 4
  br label %97

83:                                               ; preds = %77
  br label %86

84:                                               ; preds = %73
  %85 = call i32 (...) @inc_unaligned_kernel_access()
  br label %86

86:                                               ; preds = %84, %83
  %87 = load i64, i64* %13, align 8
  %88 = load i64*, i64** %11, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i32, i32* @PERF_COUNT_SW_EMULATION_FAULTS, align 4
  %90 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @perf_sw_event(i32 %89, i32 1, %struct.pt_regs* %90, i64 %91)
  %93 = load i32, i32* @current, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %96 = call i32 @unaligned_fixups_notify(i32 %93, i32 %94, %struct.pt_regs* %95)
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %86, %82, %72
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @inc_unaligned_byte_access(...) #1

declare dso_local i32 @inc_unaligned_word_access(...) #1

declare dso_local i32 @inc_unaligned_dword_access(...) #1

declare dso_local i32 @inc_unaligned_multi_access(...) #1

declare dso_local i32 @sign_extend64(i32, i32) #1

declare dso_local i32 @address_is_sign_extended(i64) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @inc_unaligned_user_access(...) #1

declare dso_local i32 @inc_unaligned_kernel_access(...) #1

declare dso_local i32 @perf_sw_event(i32, i32, %struct.pt_regs*, i64) #1

declare dso_local i32 @unaligned_fixups_notify(i32, i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
