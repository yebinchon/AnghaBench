; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_generic.c_sa11x0_restart.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_generic.c_sa11x0_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RESET_STATUS_ALL = common dso_local global i32 0, align 4
@REBOOT_SOFT = common dso_local global i32 0, align 4
@RSRR_SWR = common dso_local global i32 0, align 4
@RSRR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sa11x0_restart(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @RESET_STATUS_ALL, align 4
  %6 = call i32 @clear_reset_status(i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @REBOOT_SOFT, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @soft_restart(i32 0)
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @RSRR_SWR, align 4
  store i32 %13, i32* @RSRR, align 4
  br label %14

14:                                               ; preds = %12, %10
  ret void
}

declare dso_local i32 @clear_reset_status(i32) #1

declare dso_local i32 @soft_restart(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
