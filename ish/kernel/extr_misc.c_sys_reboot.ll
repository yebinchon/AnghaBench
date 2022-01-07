; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_misc.c_sys_reboot.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_misc.c_sys_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"reboot(%#x, %d, %d)\00", align 1
@_EPERM = common dso_local global i32 0, align 4
@REBOOT_MAGIC1 = common dso_local global i64 0, align 8
@REBOOT_MAGIC2 = common dso_local global i32 0, align 4
@REBOOT_MAGIC2A = common dso_local global i32 0, align 4
@REBOOT_MAGIC2B = common dso_local global i32 0, align 4
@REBOOT_MAGIC2C = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_reboot(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @STRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9, i32 %10)
  %12 = call i32 (...) @superuser()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @_EPERM, align 4
  store i32 %15, i32* %4, align 4
  br label %44

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i64, i64* @REBOOT_MAGIC1, align 8
  %19 = trunc i64 %18 to i32
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %37, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @REBOOT_MAGIC2, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @REBOOT_MAGIC2A, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @REBOOT_MAGIC2B, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @REBOOT_MAGIC2C, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %16
  %38 = load i32, i32* @_EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %44

39:                                               ; preds = %33, %29, %25, %21
  %40 = load i32, i32* %7, align 4
  switch i32 %40, label %42 [
    i32 128, label %41
    i32 129, label %41
  ]

41:                                               ; preds = %39, %39
  store i32 0, i32* %4, align 4
  br label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @_EPERM, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %41, %37, %14
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @STRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @superuser(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
