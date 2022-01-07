; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net.c_Net_ListenSocket.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net.c_Net_ListenSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"listen socket opened at %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @Net_ListenSocket(i32 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @WINS_OpenReliableSocket(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %38

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @WINS_Listen(i32 %12)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @WINS_CloseSocket(i32 %16)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %38

18:                                               ; preds = %11
  %19 = call %struct.TYPE_4__* (...) @Net_AllocSocket()
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %5, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @WINS_CloseSocket(i32 %23)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %38

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = call i32 @WINS_GetSocketAddr(i32 %29, i32* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i32 @WINS_AddrToString(i32* %34)
  %36 = call i32 @WinPrint(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %2, align 8
  br label %38

38:                                               ; preds = %25, %22, %15, %10
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %39
}

declare dso_local i32 @WINS_OpenReliableSocket(i32) #1

declare dso_local i32 @WINS_Listen(i32) #1

declare dso_local i32 @WINS_CloseSocket(i32) #1

declare dso_local %struct.TYPE_4__* @Net_AllocSocket(...) #1

declare dso_local i32 @WINS_GetSocketAddr(i32, i32*) #1

declare dso_local i32 @WinPrint(i8*, i32) #1

declare dso_local i32 @WINS_AddrToString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
