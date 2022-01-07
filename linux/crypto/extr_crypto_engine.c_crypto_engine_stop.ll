; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_engine.c_crypto_engine_stop.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_engine.c_crypto_engine_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_engine = type { i32, i32, i32, i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not stop engine\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_engine_stop(%struct.crypto_engine* %0) #0 {
  %2 = alloca %struct.crypto_engine*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.crypto_engine* %0, %struct.crypto_engine** %2, align 8
  store i32 500, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.crypto_engine*, %struct.crypto_engine** %2, align 8
  %7 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %6, i32 0, i32 2
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  br label %10

10:                                               ; preds = %26, %1
  %11 = load %struct.crypto_engine*, %struct.crypto_engine** %2, align 8
  %12 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %11, i32 0, i32 4
  %13 = call i64 @crypto_queue_len(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.crypto_engine*, %struct.crypto_engine** %2, align 8
  %17 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %10
  %21 = load i32, i32* %4, align 4
  %22 = add i32 %21, -1
  store i32 %22, i32* %4, align 4
  %23 = icmp ne i32 %21, 0
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i1 [ false, %15 ], [ %23, %20 ]
  br i1 %25, label %26, label %36

26:                                               ; preds = %24
  %27 = load %struct.crypto_engine*, %struct.crypto_engine** %2, align 8
  %28 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %27, i32 0, i32 2
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = call i32 @msleep(i32 20)
  %32 = load %struct.crypto_engine*, %struct.crypto_engine** %2, align 8
  %33 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %32, i32 0, i32 2
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  br label %10

36:                                               ; preds = %24
  %37 = load %struct.crypto_engine*, %struct.crypto_engine** %2, align 8
  %38 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %37, i32 0, i32 4
  %39 = call i64 @crypto_queue_len(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.crypto_engine*, %struct.crypto_engine** %2, align 8
  %43 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %41
  %50 = load %struct.crypto_engine*, %struct.crypto_engine** %2, align 8
  %51 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.crypto_engine*, %struct.crypto_engine** %2, align 8
  %54 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %53, i32 0, i32 2
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.crypto_engine*, %struct.crypto_engine** %2, align 8
  %61 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_warn(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %52
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @crypto_queue_len(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
