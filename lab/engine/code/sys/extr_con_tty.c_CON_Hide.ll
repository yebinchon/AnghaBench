; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_con_tty.c_CON_Hide.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_con_tty.c_CON_Hide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ttycon_on = common dso_local global i64 0, align 8
@ttycon_hide = common dso_local global i64 0, align 8
@TTY_con = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TTY_CONSOLE_PROMPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CON_Hide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CON_Hide() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @ttycon_on, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %38

4:                                                ; preds = %0
  %5 = load i64, i64* @ttycon_hide, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i64, i64* @ttycon_hide, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* @ttycon_hide, align 8
  br label %38

10:                                               ; preds = %4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TTY_con, i32 0, i32 0), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %20, %13
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TTY_con, i32 0, i32 0), align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = call i32 (...) @CON_Back()
  br label %20

20:                                               ; preds = %18
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %14

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i32, i32* @TTY_CONSOLE_PROMPT, align 4
  %26 = call i32 @strlen(i32 %25)
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %32, %24
  %28 = load i32, i32* %1, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = call i32 (...) @CON_Back()
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %1, align 4
  br label %27

35:                                               ; preds = %27
  %36 = load i64, i64* @ttycon_hide, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* @ttycon_hide, align 8
  br label %38

38:                                               ; preds = %7, %35, %0
  ret void
}

declare dso_local i32 @CON_Back(...) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
