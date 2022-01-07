; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_test_kretprobe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_test_kretprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }

@the_kretprobe = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [41 x i8] c"FAIL: register_kretprobe failed with %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@kretprobe_handler_called = common dso_local global i64 0, align 8
@test_func_instance = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"FAIL: kretprobe handler not called\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"FAIL: kretprobe called after unregistering\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64 (i64, i64)*)* @test_kretprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kretprobe(i64 (i64, i64)* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64 (i64, i64)*, align 8
  %4 = alloca i32, align 4
  store i64 (i64, i64)* %0, i64 (i64, i64)** %3, align 8
  %5 = load i64 (i64, i64)*, i64 (i64, i64)** %3, align 8
  %6 = bitcast i64 (i64, i64)* %5 to i32*
  store i32* %6, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @the_kretprobe, i32 0, i32 0, i32 1), align 8
  %7 = call i32 @register_kretprobe(%struct.TYPE_6__* @the_kretprobe)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load i64 (i64, i64)*, i64 (i64, i64)** %3, align 8
  %16 = call i32 @call_test_func(i64 (i64, i64)* %15, i32 1)
  store i32 %16, i32* %4, align 4
  %17 = call i32 @unregister_kretprobe(%struct.TYPE_6__* @the_kretprobe)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @the_kretprobe, i32 0, i32 0, i32 0), align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %47

23:                                               ; preds = %14
  %24 = load i64, i64* @kretprobe_handler_called, align 8
  %25 = load i64, i64* @test_func_instance, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %47

31:                                               ; preds = %23
  %32 = load i64 (i64, i64)*, i64 (i64, i64)** %3, align 8
  %33 = call i32 @call_test_func(i64 (i64, i64)* %32, i32 0)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %47

38:                                               ; preds = %31
  %39 = load i64, i64* @kretprobe_handler_called, align 8
  %40 = load i64, i64* @test_func_instance, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %42, %35, %27, %20, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @register_kretprobe(%struct.TYPE_6__*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @call_test_func(i64 (i64, i64)*, i32) #1

declare dso_local i32 @unregister_kretprobe(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
