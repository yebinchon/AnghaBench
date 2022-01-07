; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_brain.c_brain_client_reserve.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_brain.c_brain_client_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@BRAIN_OPERATION_ATTACK_RESERVE = common dso_local global i32 0, align 4
@SEND_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brain_client_reserve(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %52

20:                                               ; preds = %5
  %21 = load i32, i32* @BRAIN_OPERATION_ATTACK_RESERVE, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @SEND_FLAGS, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @brain_send(i32 %22, i32* %13, i32 4, i32 %23, %struct.TYPE_5__* %24, i32* %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %52

29:                                               ; preds = %20
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @brain_send(i32 %30, i32* %9, i32 4, i32 0, %struct.TYPE_5__* %31, i32* %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %52

36:                                               ; preds = %29
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @brain_send(i32 %37, i32* %10, i32 4, i32 0, %struct.TYPE_5__* %38, i32* %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %52

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @brain_recv(i32 %44, i32* %45, i32 4, i32 0, %struct.TYPE_5__* %46, i32* %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %52

51:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %50, %42, %35, %28, %19
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @brain_send(i32, i32*, i32, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @brain_recv(i32, i32*, i32, i32, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
