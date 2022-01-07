; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_test_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_test_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@the_kprobe = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [38 x i8] c"FAIL: register_kprobe failed with %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pre_handler_called = common dso_local global i64 0, align 8
@test_func_instance = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"FAIL: kprobe pre_handler not called\0A\00", align 1
@post_handler_called = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"FAIL: kprobe post_handler not called\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"FAIL: probe called after unregistering\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64 (i64, i64)*)* @test_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kprobe(i64 (i64, i64)* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64 (i64, i64)*, align 8
  %4 = alloca i32, align 4
  store i64 (i64, i64)* %0, i64 (i64, i64)** %3, align 8
  %5 = load i64 (i64, i64)*, i64 (i64, i64)** %3, align 8
  %6 = bitcast i64 (i64, i64)* %5 to i32*
  store i32* %6, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @the_kprobe, i32 0, i32 1), align 8
  %7 = call i32 @register_kprobe(%struct.TYPE_4__* @the_kprobe)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %59

14:                                               ; preds = %1
  %15 = load i64 (i64, i64)*, i64 (i64, i64)** %3, align 8
  %16 = call i32 @call_test_func(i64 (i64, i64)* %15, i32 1)
  store i32 %16, i32* %4, align 4
  %17 = call i32 @unregister_kprobe(%struct.TYPE_4__* @the_kprobe)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @the_kprobe, i32 0, i32 0), align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %59

23:                                               ; preds = %14
  %24 = load i64, i64* @pre_handler_called, align 8
  %25 = load i64, i64* @test_func_instance, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %59

31:                                               ; preds = %23
  %32 = load i64, i64* @post_handler_called, align 8
  %33 = load i64, i64* @test_func_instance, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %59

39:                                               ; preds = %31
  %40 = load i64 (i64, i64)*, i64 (i64, i64)** %3, align 8
  %41 = call i32 @call_test_func(i64 (i64, i64)* %40, i32 0)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %59

46:                                               ; preds = %39
  %47 = load i64, i64* @pre_handler_called, align 8
  %48 = load i64, i64* @test_func_instance, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* @post_handler_called, align 8
  %52 = load i64, i64* @test_func_instance, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50, %46
  %55 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %54, %43, %35, %27, %20, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @register_kprobe(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @call_test_func(i64 (i64, i64)*, i32) #1

declare dso_local i32 @unregister_kprobe(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
