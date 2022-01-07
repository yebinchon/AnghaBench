; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/lemote-2f/extr_pm.c_i8042_enable_kbd_port.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/lemote-2f/extr_pm.c_i8042_enable_kbd_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i8042_ctr = common dso_local global i32 0, align 4
@I8042_CMD_CTL_RCTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"i8042.c: Can't read CTR while enabling i8042 kbd port.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@I8042_CTR_KBDDIS = common dso_local global i32 0, align 4
@I8042_CTR_KBDINT = common dso_local global i32 0, align 4
@I8042_CMD_CTL_WCTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"i8042.c: Failed to enable KBD port.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @i8042_enable_kbd_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8042_enable_kbd_port() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @I8042_CMD_CTL_RCTR, align 4
  %3 = call i64 @i8042_command(i32* @i8042_ctr, i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @EIO, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %32

9:                                                ; preds = %0
  %10 = load i32, i32* @I8042_CTR_KBDDIS, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @i8042_ctr, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* @i8042_ctr, align 4
  %14 = load i32, i32* @I8042_CTR_KBDINT, align 4
  %15 = load i32, i32* @i8042_ctr, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* @i8042_ctr, align 4
  %17 = load i32, i32* @I8042_CMD_CTL_WCTR, align 4
  %18 = call i64 @i8042_command(i32* @i8042_ctr, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %9
  %21 = load i32, i32* @I8042_CTR_KBDINT, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* @i8042_ctr, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* @i8042_ctr, align 4
  %25 = load i32, i32* @I8042_CTR_KBDDIS, align 4
  %26 = load i32, i32* @i8042_ctr, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @i8042_ctr, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %1, align 4
  br label %32

31:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %31, %20, %5
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i64 @i8042_command(i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
