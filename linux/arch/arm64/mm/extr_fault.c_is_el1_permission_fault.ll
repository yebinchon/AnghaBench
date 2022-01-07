; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_fault.c_is_el1_permission_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_fault.c_is_el1_permission_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@ESR_ELx_FSC_TYPE = common dso_local global i32 0, align 4
@ESR_ELx_EC_DABT_CUR = common dso_local global i32 0, align 4
@ESR_ELx_EC_IABT_CUR = common dso_local global i32 0, align 4
@ESR_ELx_FSC_PERM = common dso_local global i32 0, align 4
@ESR_ELx_FSC_FAULT = common dso_local global i32 0, align 4
@PSR_PAN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.pt_regs*)* @is_el1_permission_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_el1_permission_fault(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @ESR_ELx_EC(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ESR_ELx_FSC_TYPE, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ESR_ELx_EC_DABT_CUR, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ESR_ELx_EC_IABT_CUR, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %50

23:                                               ; preds = %18, %3
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @ESR_ELx_FSC_PERM, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %50

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @is_ttbr0_addr(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = call i64 (...) @system_uses_ttbr0_pan()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ESR_ELx_FSC_FAULT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PSR_PAN_BIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %39, %35
  %47 = phi i1 [ false, %35 ], [ %45, %39 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %32, %28
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %46, %27, %22
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @ESR_ELx_EC(i32) #1

declare dso_local i64 @is_ttbr0_addr(i64) #1

declare dso_local i64 @system_uses_ttbr0_pan(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
