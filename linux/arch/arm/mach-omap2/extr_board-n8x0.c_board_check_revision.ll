; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_board-n8x0.c_board_check_revision.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_board-n8x0.c_board_check_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"nokia,n800\00", align 1
@NOKIA_N800 = common dso_local global i32 0, align 4
@board_caps = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"nokia,n810\00", align 1
@NOKIA_N810 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"nokia,n810-wimax\00", align 1
@NOKIA_N810_WIMAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Unknown board\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @board_check_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @board_check_revision() #0 {
  %1 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i32, i32* @NOKIA_N800, align 4
  store i32 %4, i32* @board_caps, align 4
  br label %17

5:                                                ; preds = %0
  %6 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = load i32, i32* @NOKIA_N810, align 4
  store i32 %9, i32* @board_caps, align 4
  br label %16

10:                                               ; preds = %5
  %11 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @NOKIA_N810_WIMAX, align 4
  store i32 %14, i32* @board_caps, align 4
  br label %15

15:                                               ; preds = %13, %10
  br label %16

16:                                               ; preds = %15, %8
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i32, i32* @board_caps, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  ret void
}

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
