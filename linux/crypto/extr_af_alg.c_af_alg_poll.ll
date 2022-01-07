; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_poll.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.alg_sock = type { %struct.af_alg_ctx* }
%struct.af_alg_ctx = type { i64, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLWRBAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @af_alg_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.alg_sock*, align 8
  %9 = alloca %struct.af_alg_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %7, align 8
  %15 = call %struct.alg_sock* @alg_sk(%struct.sock* %14)
  store %struct.alg_sock* %15, %struct.alg_sock** %8, align 8
  %16 = load %struct.alg_sock*, %struct.alg_sock** %8, align 8
  %17 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %16, i32 0, i32 0
  %18 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %17, align 8
  store %struct.af_alg_ctx* %18, %struct.af_alg_ctx** %9, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @sock_poll_wait(%struct.file* %19, %struct.socket* %20, i32* %21)
  store i32 0, i32* %10, align 4
  %23 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %9, align 8
  %24 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %9, align 8
  %29 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27, %3
  %33 = load i32, i32* @EPOLLIN, align 4
  %34 = load i32, i32* @EPOLLRDNORM, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.sock*, %struct.sock** %7, align 8
  %40 = call i64 @af_alg_writable(%struct.sock* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i32, i32* @EPOLLOUT, align 4
  %44 = load i32, i32* @EPOLLWRNORM, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @EPOLLWRBAND, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %42, %38
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @sock_poll_wait(%struct.file*, %struct.socket*, i32*) #1

declare dso_local i64 @af_alg_writable(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
