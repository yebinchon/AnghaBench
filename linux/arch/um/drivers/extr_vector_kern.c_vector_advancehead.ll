; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_advancehead.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_advancehead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_queue = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_queue*, i32)* @vector_advancehead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_advancehead(%struct.vector_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.vector_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vector_queue* %0, %struct.vector_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %7 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %8, %9
  %11 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %12 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = srem i32 %10, %13
  %15 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %16 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %18 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %17, i32 0, i32 3
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %22 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %26 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %31 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %33 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %2
  %35 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %36 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %5, align 4
  %38 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %39 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %38, i32 0, i32 3
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
