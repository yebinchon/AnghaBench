; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_con_tty.c_CON_Shutdown.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_con_tty.c_CON_Shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ttycon_on = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@TTY_tc = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CON_Shutdown() #0 {
  %1 = load i64, i64* @ttycon_on, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = call i32 (...) @CON_Hide()
  %5 = load i32, i32* @STDIN_FILENO, align 4
  %6 = load i32, i32* @TCSADRAIN, align 4
  %7 = call i32 @tcsetattr(i32 %5, i32 %6, i32* @TTY_tc)
  br label %8

8:                                                ; preds = %3, %0
  %9 = load i32, i32* @STDIN_FILENO, align 4
  %10 = load i32, i32* @F_SETFL, align 4
  %11 = load i32, i32* @STDIN_FILENO, align 4
  %12 = load i32, i32* @F_GETFL, align 4
  %13 = call i32 @fcntl(i32 %11, i32 %12, i32 0)
  %14 = load i32, i32* @O_NONBLOCK, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @fcntl(i32 %9, i32 %10, i32 %16)
  ret void
}

declare dso_local i32 @CON_Hide(...) #1

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
