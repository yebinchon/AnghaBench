; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_keypad_send_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_keypad_send_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@keypad_available = common dso_local global i32 0, align 4
@keypad_buflen = common dso_local global i64 0, align 8
@KEYPAD_BUFFER = common dso_local global i64 0, align 8
@keypad_buffer = common dso_local global i32* null, align 8
@keypad_start = common dso_local global i32 0, align 4
@keypad_read_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @keypad_send_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keypad_send_key(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @atomic_read(i32* @keypad_available)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %23, %7
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %4, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i64, i64* @keypad_buflen, align 8
  %14 = load i64, i64* @KEYPAD_BUFFER, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %12, %8
  %22 = phi i1 [ false, %12 ], [ false, %8 ], [ %20, %16 ]
  br i1 %22, label %23, label %37

23:                                               ; preds = %21
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i32
  %28 = load i32*, i32** @keypad_buffer, align 8
  %29 = load i32, i32* @keypad_start, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @keypad_buflen, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* @keypad_buflen, align 8
  %33 = add i64 %30, %31
  %34 = load i64, i64* @KEYPAD_BUFFER, align 8
  %35 = urem i64 %33, %34
  %36 = getelementptr inbounds i32, i32* %28, i64 %35
  store i32 %27, i32* %36, align 4
  br label %8

37:                                               ; preds = %21
  %38 = call i32 @wake_up_interruptible(i32* @keypad_read_wait)
  br label %39

39:                                               ; preds = %37, %2
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
