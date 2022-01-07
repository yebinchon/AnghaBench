; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_get_random_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_get_random_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batched_entropy = type { i32, i32, i32* }

@get_random_u32.previous = internal global i8* null, align 8
@batched_entropy_u32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_random_u32() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.batched_entropy*, align 8
  %5 = call i64 @arch_get_random_int(i32* %2)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %1, align 4
  br label %48

9:                                                ; preds = %0
  %10 = call i32 @warn_unseeded_randomness(i8** @get_random_u32.previous)
  %11 = call %struct.batched_entropy* @raw_cpu_ptr(i32* @batched_entropy_u32)
  store %struct.batched_entropy* %11, %struct.batched_entropy** %4, align 8
  %12 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %13 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %12, i32 0, i32 1
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %17 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %20 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = srem i32 %18, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %9
  %26 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %27 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @extract_crng(i32* %28)
  %30 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %31 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %25, %9
  %33 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %34 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %37 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %2, align 4
  %43 = load %struct.batched_entropy*, %struct.batched_entropy** %4, align 8
  %44 = getelementptr inbounds %struct.batched_entropy, %struct.batched_entropy* %43, i32 0, i32 1
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %2, align 4
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %32, %7
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i64 @arch_get_random_int(i32*) #1

declare dso_local i32 @warn_unseeded_randomness(i8**) #1

declare dso_local %struct.batched_entropy* @raw_cpu_ptr(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @extract_crng(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
