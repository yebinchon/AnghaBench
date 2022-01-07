; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_walk_first.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_walk_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i64, i32*, i64, i32* }

@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_walk*)* @skcipher_walk_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_walk_first(%struct.skcipher_walk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_walk*, align 8
  %4 = alloca i32, align 4
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %3, align 8
  %5 = call i32 (...) @in_irq()
  %6 = call i64 @WARN_ON_ONCE(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EDEADLK, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %13 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 3
  store i32* null, i32** %13, align 8
  %14 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %15 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %18 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %16, %19
  %21 = call i64 @unlikely(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %25 = call i32 @skcipher_copy_iv(%struct.skcipher_walk* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %11
  %32 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %33 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %35 = call i32 @skcipher_walk_next(%struct.skcipher_walk* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %28, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @in_irq(...) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @skcipher_copy_iv(%struct.skcipher_walk*) #1

declare dso_local i32 @skcipher_walk_next(%struct.skcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
