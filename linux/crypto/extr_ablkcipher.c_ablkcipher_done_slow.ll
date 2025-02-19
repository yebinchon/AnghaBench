; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_ablkcipher_done_slow.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_ablkcipher_done_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_walk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ablkcipher_walk*, i32)* @ablkcipher_done_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ablkcipher_done_slow(%struct.ablkcipher_walk* %0, i32 %1) #0 {
  %3 = alloca %struct.ablkcipher_walk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ablkcipher_walk* %0, %struct.ablkcipher_walk** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %24, %2
  %7 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %3, align 8
  %8 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %7, i32 0, i32 0
  %9 = call i32 @scatterwalk_pagelen(%struct.TYPE_4__* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %6
  %16 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %3, align 8
  %17 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @scatterwalk_advance(%struct.TYPE_4__* %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %36

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sub i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %3, align 8
  %29 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %28, i32 0, i32 0
  %30 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %3, align 8
  %31 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sg_next(i32 %33)
  %35 = call i32 @scatterwalk_start(%struct.TYPE_4__* %29, i32 %34)
  br label %6

36:                                               ; preds = %23
  ret void
}

declare dso_local i32 @scatterwalk_pagelen(%struct.TYPE_4__*) #1

declare dso_local i32 @scatterwalk_advance(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @scatterwalk_start(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @sg_next(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
