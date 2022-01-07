; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_walk_virt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_walk_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32 }
%struct.skcipher_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@SKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4
@SKCIPHER_WALK_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk* %0, %struct.skcipher_request* %1, i32 %2) #0 {
  %4 = alloca %struct.skcipher_walk*, align 8
  %5 = alloca %struct.skcipher_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %4, align 8
  store %struct.skcipher_request* %1, %struct.skcipher_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %9 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @might_sleep_if(i32 %13)
  %15 = load i32, i32* @SKCIPHER_WALK_PHYS, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %18 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %22 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %23 = call i32 @skcipher_walk_skcipher(%struct.skcipher_walk* %21, %struct.skcipher_request* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @SKCIPHER_WALK_SLEEP, align 4
  %28 = xor i32 %27, -1
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ -1, %29 ]
  %32 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %33 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i32 @skcipher_walk_skcipher(%struct.skcipher_walk*, %struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
