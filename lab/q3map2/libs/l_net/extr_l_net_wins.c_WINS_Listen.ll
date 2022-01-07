; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_Listen.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_Listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIONBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WINS_Listen: %s\0A\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WINS_Listen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @FIONBIO, align 4
  %7 = call i32 @ioctlsocket(i32 %5, i32 %6, i32* %4)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = call i32 (...) @WSAGetLastError()
  %11 = call i32 @WINS_ErrorMessage(i32 %10)
  %12 = call i32 @WinPrint(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 -1, i32* %2, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SOMAXCONN, align 4
  %16 = call i64 @listen(i32 %14, i32 %15)
  %17 = load i64, i64* @SOCKET_ERROR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = call i32 (...) @WSAGetLastError()
  %21 = call i32 @WINS_ErrorMessage(i32 %20)
  %22 = call i32 @WinPrint(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 -1, i32* %2, align 4
  br label %24

23:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %19, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ioctlsocket(i32, i32, i32*) #1

declare dso_local i32 @WinPrint(i8*, i32) #1

declare dso_local i32 @WINS_ErrorMessage(i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
