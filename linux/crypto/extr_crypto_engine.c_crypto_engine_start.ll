; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_engine.c_crypto_engine_start.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_engine.c_crypto_engine_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_engine = type { i32, i32, i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_engine_start(%struct.crypto_engine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_engine*, align 8
  %4 = alloca i64, align 8
  store %struct.crypto_engine* %0, %struct.crypto_engine** %3, align 8
  %5 = load %struct.crypto_engine*, %struct.crypto_engine** %3, align 8
  %6 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %5, i32 0, i32 3
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.crypto_engine*, %struct.crypto_engine** %3, align 8
  %10 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.crypto_engine*, %struct.crypto_engine** %3, align 8
  %15 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13, %1
  %19 = load %struct.crypto_engine*, %struct.crypto_engine** %3, align 8
  %20 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %19, i32 0, i32 3
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %38

25:                                               ; preds = %13
  %26 = load %struct.crypto_engine*, %struct.crypto_engine** %3, align 8
  %27 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.crypto_engine*, %struct.crypto_engine** %3, align 8
  %29 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %28, i32 0, i32 3
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.crypto_engine*, %struct.crypto_engine** %3, align 8
  %33 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.crypto_engine*, %struct.crypto_engine** %3, align 8
  %36 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %35, i32 0, i32 1
  %37 = call i32 @kthread_queue_work(i32 %34, i32* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %25, %18
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kthread_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
