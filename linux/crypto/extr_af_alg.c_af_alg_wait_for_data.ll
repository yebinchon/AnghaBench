; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_wait_for_data.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_wait_for_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.alg_sock = type { %struct.af_alg_ctx* }
%struct.af_alg_ctx = type { i32, i64 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_WAITDATA = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @af_alg_wait_for_data(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.alg_sock*, align 8
  %7 = alloca %struct.af_alg_ctx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @wait, align 4
  %11 = load i32, i32* @woken_wake_function, align 4
  %12 = call i32 @DEFINE_WAIT_FUNC(i32 %10, i32 %11)
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.alg_sock* @alg_sk(%struct.sock* %13)
  store %struct.alg_sock* %14, %struct.alg_sock** %6, align 8
  %15 = load %struct.alg_sock*, %struct.alg_sock** %6, align 8
  %16 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %15, i32 0, i32 0
  %17 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %16, align 8
  store %struct.af_alg_ctx* %17, %struct.af_alg_ctx** %7, align 8
  %18 = load i32, i32* @ERESTARTSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MSG_DONTWAIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %2
  %28 = load i32, i32* @SOCKWQ_ASYNC_WAITDATA, align 4
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = call i32 @sk_set_bit(i32 %28, %struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call i32 @sk_sleep(%struct.sock* %31)
  %33 = call i32 @add_wait_queue(i32 %32, i32* @wait)
  br label %34

34:                                               ; preds = %58, %27
  %35 = load i32, i32* @current, align 4
  %36 = call i64 @signal_pending(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %59

39:                                               ; preds = %34
  %40 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %40, i64* %8, align 8
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %39
  %53 = phi i1 [ true, %39 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @sk_wait_event(%struct.sock* %41, i64* %8, i32 %54, i32* @wait)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %59

58:                                               ; preds = %52
  br label %34

59:                                               ; preds = %57, %38
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = call i32 @sk_sleep(%struct.sock* %60)
  %62 = call i32 @remove_wait_queue(i32 %61, i32* @wait)
  %63 = load i32, i32* @SOCKWQ_ASYNC_WAITDATA, align 4
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = call i32 @sk_clear_bit(i32 %63, %struct.sock* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %24
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @sk_wait_event(%struct.sock*, i64*, i32, i32*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_clear_bit(i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
