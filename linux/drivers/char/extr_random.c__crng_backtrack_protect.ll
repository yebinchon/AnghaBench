; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c__crng_backtrack_protect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c__crng_backtrack_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crng_state = type { i32, i32* }

@CHACHA_BLOCK_SIZE = common dso_local global i64 0, align 8
@CHACHA_KEY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crng_state*, i32*, i32)* @_crng_backtrack_protect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_crng_backtrack_protect(%struct.crng_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crng_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.crng_state* %0, %struct.crng_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @CHACHA_BLOCK_SIZE, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @round_up(i32 %12, i32 4)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @CHACHA_KEY_SIZE, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @CHACHA_BLOCK_SIZE, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @extract_crng(i32* %21)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %3
  %24 = load %struct.crng_state*, %struct.crng_state** %4, align 8
  %25 = getelementptr inbounds %struct.crng_state, %struct.crng_state* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %8, align 8
  %32 = load %struct.crng_state*, %struct.crng_state** %4, align 8
  %33 = getelementptr inbounds %struct.crng_state, %struct.crng_state* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32* %35, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %47, %23
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %8, align 8
  %42 = load i32, i32* %40, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %9, align 8
  %45 = load i32, i32* %43, align 4
  %46 = xor i32 %45, %42
  store i32 %46, i32* %43, align 4
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load %struct.crng_state*, %struct.crng_state** %4, align 8
  %52 = getelementptr inbounds %struct.crng_state, %struct.crng_state* %51, i32 0, i32 0
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  ret void
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @extract_crng(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
