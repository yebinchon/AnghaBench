; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_ablkcipher_next_fast.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_ablkcipher_next_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.ablkcipher_walk = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, %struct.ablkcipher_walk*)* @ablkcipher_next_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ablkcipher_next_fast(%struct.ablkcipher_request* %0, %struct.ablkcipher_walk* %1) #0 {
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca %struct.ablkcipher_walk*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %3, align 8
  store %struct.ablkcipher_walk* %1, %struct.ablkcipher_walk** %4, align 8
  %5 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %4, align 8
  %6 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %5, i32 0, i32 2
  %7 = call i8* @scatterwalk_page(%struct.TYPE_6__* %6)
  %8 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %4, align 8
  %9 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i8* %7, i8** %10, align 8
  %11 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %4, align 8
  %12 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @offset_in_page(i32 %14)
  %16 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %4, align 8
  %17 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  %19 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %4, align 8
  %20 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %19, i32 0, i32 0
  %21 = call i8* @scatterwalk_page(%struct.TYPE_6__* %20)
  %22 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %4, align 8
  %23 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  %25 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %4, align 8
  %26 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @offset_in_page(i32 %28)
  %30 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %4, align 8
  %31 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  ret i32 0
}

declare dso_local i8* @scatterwalk_page(%struct.TYPE_6__*) #1

declare dso_local i8* @offset_in_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
