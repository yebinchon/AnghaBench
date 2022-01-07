; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_startup.c_rescue_initrd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_startup.c_rescue_initrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_BLK_DEV_INITRD = common dso_local global i32 0, align 4
@INITRD_START = common dso_local global i64 0, align 8
@INITRD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rescue_initrd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rescue_initrd(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @CONFIG_BLK_DEV_INITRD, align 4
  %4 = call i32 @IS_ENABLED(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %27

7:                                                ; preds = %1
  %8 = load i64, i64* @INITRD_START, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @INITRD_SIZE, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %7
  br label %27

14:                                               ; preds = %10
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @INITRD_START, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %27

19:                                               ; preds = %14
  %20 = load i64, i64* %2, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load i64, i64* @INITRD_START, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load i32, i32* @INITRD_SIZE, align 4
  %25 = call i32 @memmove(i8* %21, i8* %23, i32 %24)
  %26 = load i64, i64* %2, align 8
  store i64 %26, i64* @INITRD_START, align 8
  br label %27

27:                                               ; preds = %19, %18, %13, %6
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
