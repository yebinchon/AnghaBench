; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_get_random_u64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_get_random_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batched_entropy = type { i32, i32, i64* }

@get_random_u64.previous = internal global i8* null, align 8
@batched_entropy_u64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_random_u64() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.batched_entropy*, align 8
  %5 = call i64 @arch_get_random_long(i64* %2)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = getelementptr inbounds i64, i64* %2, i64 1
  %9 = call i64 @arch_get_random_long(i64* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  store i64 %12, i64* %1, align 8
  br label %53

13:                                               ; preds = %7, %0
  %14 = call i32 @warn_unseeded_randomness(i8** @get_random_u64.previous)
  %15 = call %struct.batched_entropy* @raw_cpu_ptr(i32* @batched_entropy_u64)
  store %struct.batched_entropy* %15, %struct.batched_entropy** %4, align 8
  %16 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %17 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %16, i32 0, i32 1
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %21 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %24 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = call i32 @ARRAY_SIZE(i64* %25)
  %27 = srem i32 %22, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %13
  %30 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %31 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = bitcast i64* %32 to i32*
  %34 = call i32 @extract_crng(i32* %33)
  %35 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %36 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %29, %13
  %38 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %39 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %42 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i64, i64* %40, i64 %45
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %2, align 8
  %48 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %49 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %48, i32 0, i32 1
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i64, i64* %2, align 8
  store i64 %52, i64* %1, align 8
  br label %53

53:                                               ; preds = %37, %11
  %54 = load i64, i64* %1, align 8
  ret i64 %54
}

declare dso_local i64 @arch_get_random_long(i64*) #1

declare dso_local i32 @warn_unseeded_randomness(i8**) #1

declare dso_local %struct.batched_entropy* @raw_cpu_ptr(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @extract_crng(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
