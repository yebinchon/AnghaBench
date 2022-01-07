; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_skcipher.c_skcipher_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_skcipher.c_skcipher_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32 }

@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @skcipher_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.sock*, %struct.sock** %9, align 8
  %16 = call i32 @lock_sock(%struct.sock* %15)
  br label %17

17:                                               ; preds = %40, %4
  %18 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %19 = call i64 @msg_data_left(%struct.msghdr* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  %23 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @_skcipher_recvmsg(%struct.socket* %22, %struct.msghdr* %23, i64 %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @EIOCBQUEUED, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %37, %34
  br label %45

40:                                               ; preds = %21
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %17

44:                                               ; preds = %17
  br label %45

45:                                               ; preds = %44, %39
  %46 = load %struct.sock*, %struct.sock** %9, align 8
  %47 = call i32 @af_alg_wmem_wakeup(%struct.sock* %46)
  %48 = load %struct.sock*, %struct.sock** %9, align 8
  %49 = call i32 @release_sock(%struct.sock* %48)
  %50 = load i32, i32* %10, align 4
  ret i32 %50
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @msg_data_left(%struct.msghdr*) #1

declare dso_local i32 @_skcipher_recvmsg(%struct.socket*, %struct.msghdr*, i64, i32) #1

declare dso_local i32 @af_alg_wmem_wakeup(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
