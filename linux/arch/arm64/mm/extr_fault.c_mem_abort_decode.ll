; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_fault.c_mem_abort_decode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_fault.c_mem_abort_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Mem abort info:\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"  ESR = 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"  EC = 0x%02lx: %s, IL = %u bits\0A\00", align 1
@ESR_ELx_IL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"  SET = %lu, FnV = %lu\0A\00", align 1
@ESR_ELx_SET_MASK = common dso_local global i32 0, align 4
@ESR_ELx_SET_SHIFT = common dso_local global i32 0, align 4
@ESR_ELx_FnV = common dso_local global i32 0, align 4
@ESR_ELx_FnV_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"  EA = %lu, S1PTW = %lu\0A\00", align 1
@ESR_ELx_EA = common dso_local global i32 0, align 4
@ESR_ELx_EA_SHIFT = common dso_local global i32 0, align 4
@ESR_ELx_S1PTW = common dso_local global i32 0, align 4
@ESR_ELx_S1PTW_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mem_abort_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_abort_decode(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* %2, align 4
  %5 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @ESR_ELx_EC(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @esr_get_class_string(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @ESR_ELx_IL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 32, i32 16
  %16 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %7, i32 %9, i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @ESR_ELx_SET_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @ESR_ELx_SET_SHIFT, align 4
  %21 = lshr i32 %19, %20
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @ESR_ELx_FnV, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @ESR_ELx_FnV_SHIFT, align 4
  %26 = lshr i32 %24, %25
  %27 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %21, i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @ESR_ELx_EA, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @ESR_ELx_EA_SHIFT, align 4
  %32 = lshr i32 %30, %31
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @ESR_ELx_S1PTW, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @ESR_ELx_S1PTW_SHIFT, align 4
  %37 = lshr i32 %35, %36
  %38 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %32, i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = call i64 @esr_is_data_abort(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @data_abort_decode(i32 %43)
  br label %45

45:                                               ; preds = %42, %1
  ret void
}

declare dso_local i32 @pr_alert(i8*, ...) #1

declare dso_local i32 @ESR_ELx_EC(i32) #1

declare dso_local i32 @esr_get_class_string(i32) #1

declare dso_local i64 @esr_is_data_abort(i32) #1

declare dso_local i32 @data_abort_decode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
