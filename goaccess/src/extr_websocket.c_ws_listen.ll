; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_listen.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@fdstate = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @ws_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws_listen(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @FD_ISSET(i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fdstate, i32 0, i32 1))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @handle_accept(i32 %15, i32* %16)
  br label %44

18:                                               ; preds = %10, %3
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @FD_ISSET(i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fdstate, i32 0, i32 1))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @handle_reads(i32 %27, i32* %28)
  br label %43

30:                                               ; preds = %22, %18
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @FD_ISSET(i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fdstate, i32 0, i32 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @handle_writes(i32 %39, i32* %40)
  br label %42

42:                                               ; preds = %38, %34, %30
  br label %43

43:                                               ; preds = %42, %26
  br label %44

44:                                               ; preds = %43, %14
  ret void
}

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @handle_accept(i32, i32*) #1

declare dso_local i32 @handle_reads(i32, i32*) #1

declare dso_local i32 @handle_writes(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
