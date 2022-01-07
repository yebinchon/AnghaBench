; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_wait_for_wmem.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_wait_for_wmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @af_alg_wait_for_wmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af_alg_wait_for_wmem(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @wait, align 4
  %9 = load i32, i32* @woken_wake_function, align 4
  %10 = call i32 @DEFINE_WAIT_FUNC(i32 %8, i32 %9)
  %11 = load i32, i32* @ERESTARTSYS, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MSG_DONTWAIT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call i32 @sk_set_bit(i32 %21, %struct.sock* %22)
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = call i32 @sk_sleep(%struct.sock* %24)
  %26 = call i32 @add_wait_queue(i32 %25, i32* @wait)
  br label %27

27:                                               ; preds = %40, %20
  %28 = load i32, i32* @current, align 4
  %29 = call i64 @signal_pending(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %41

32:                                               ; preds = %27
  %33 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %33, i64* %7, align 8
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = call i32 @af_alg_writable(%struct.sock* %35)
  %37 = call i64 @sk_wait_event(%struct.sock* %34, i64* %7, i32 %36, i32* @wait)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %41

40:                                               ; preds = %32
  br label %27

41:                                               ; preds = %39, %31
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = call i32 @sk_sleep(%struct.sock* %42)
  %44 = call i32 @remove_wait_queue(i32 %43, i32* @wait)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @sk_wait_event(%struct.sock*, i64*, i32, i32*) #1

declare dso_local i32 @af_alg_writable(%struct.sock*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
