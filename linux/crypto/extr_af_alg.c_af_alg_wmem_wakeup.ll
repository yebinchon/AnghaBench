; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_wmem_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_wmem_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.socket_wq = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLRDBAND = common dso_local global i32 0, align 4
@SOCK_WAKE_WAITD = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @af_alg_wmem_wakeup(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.socket_wq*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call i32 @af_alg_writable(%struct.sock* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %32

8:                                                ; preds = %1
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.socket_wq* @rcu_dereference(i32 %12)
  store %struct.socket_wq* %13, %struct.socket_wq** %3, align 8
  %14 = load %struct.socket_wq*, %struct.socket_wq** %3, align 8
  %15 = call i64 @skwq_has_sleeper(%struct.socket_wq* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %8
  %18 = load %struct.socket_wq*, %struct.socket_wq** %3, align 8
  %19 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %18, i32 0, i32 0
  %20 = load i32, i32* @EPOLLIN, align 4
  %21 = load i32, i32* @EPOLLRDNORM, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @EPOLLRDBAND, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @wake_up_interruptible_sync_poll(i32* %19, i32 %24)
  br label %26

26:                                               ; preds = %17, %8
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = load i32, i32* @SOCK_WAKE_WAITD, align 4
  %29 = load i32, i32* @POLL_IN, align 4
  %30 = call i32 @sk_wake_async(%struct.sock* %27, i32 %28, i32 %29)
  %31 = call i32 (...) @rcu_read_unlock()
  br label %32

32:                                               ; preds = %26, %7
  ret void
}

declare dso_local i32 @af_alg_writable(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.socket_wq* @rcu_dereference(i32) #1

declare dso_local i64 @skwq_has_sleeper(%struct.socket_wq*) #1

declare dso_local i32 @wake_up_interruptible_sync_poll(i32*, i32) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
