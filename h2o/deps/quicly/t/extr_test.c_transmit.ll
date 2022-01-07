; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_test.c_transmit.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_test.c_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@fake_address = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@QUICLY_ERROR_PACKET_IGNORED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @transmit(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [32 x i32*], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [32 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 32, i64* %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds [32 x i32*], [32 x i32*]* %5, i64 0, i64 0
  %13 = call i32 @quicly_send(i32* %11, i32** %12, i64* %6)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %2
  %21 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %22 = getelementptr inbounds [32 x i32*], [32 x i32*]* %5, i64 0, i64 0
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @decode_packets(i32* %21, i32** %22, i64 %23)
  store i64 %24, i64* %10, align 8
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %45, %20
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i32 @quicly_receive(i32* %30, i32* null, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fake_address, i32 0, i32 0), i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @QUICLY_ERROR_PACKET_IGNORED, align 4
  %40 = icmp eq i32 %38, %39
  br label %41

41:                                               ; preds = %37, %29
  %42 = phi i1 [ true, %29 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %25

48:                                               ; preds = %25
  %49 = getelementptr inbounds [32 x i32*], [32 x i32*]* %5, i64 0, i64 0
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @free_packets(i32** %49, i64 %50)
  br label %52

52:                                               ; preds = %48, %2
  %53 = load i64, i64* %6, align 8
  ret i64 %53
}

declare dso_local i32 @quicly_send(i32*, i32**, i64*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @decode_packets(i32*, i32**, i64) #1

declare dso_local i32 @quicly_receive(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @free_packets(i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
