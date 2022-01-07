; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_run.c_spufs_stop_callback.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_run.c_spufs_stop_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu = type { i32, i32, i32, i32, %struct.spu_context* }
%struct.spu_context = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spufs_stop_callback(%struct.spu* %0, i32 %1) #0 {
  %3 = alloca %struct.spu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spu_context*, align 8
  store %struct.spu* %0, %struct.spu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.spu*, %struct.spu** %3, align 8
  %7 = getelementptr inbounds %struct.spu, %struct.spu* %6, i32 0, i32 4
  %8 = load %struct.spu_context*, %struct.spu_context** %7, align 8
  store %struct.spu_context* %8, %struct.spu_context** %5, align 8
  %9 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %10 = icmp ne %struct.spu_context* %9, null
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %40 [
    i32 0, label %13
    i32 1, label %26
    i32 2, label %39
  ]

13:                                               ; preds = %11
  %14 = load %struct.spu*, %struct.spu** %3, align 8
  %15 = getelementptr inbounds %struct.spu, %struct.spu* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %18 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 4
  %20 = load %struct.spu*, %struct.spu** %3, align 8
  %21 = getelementptr inbounds %struct.spu, %struct.spu* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %24 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 4
  br label %40

26:                                               ; preds = %11
  %27 = load %struct.spu*, %struct.spu** %3, align 8
  %28 = getelementptr inbounds %struct.spu, %struct.spu* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %31 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.spu*, %struct.spu** %3, align 8
  %34 = getelementptr inbounds %struct.spu, %struct.spu* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %37 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  br label %40

39:                                               ; preds = %11
  br label %40

40:                                               ; preds = %11, %39, %26, %13
  %41 = call i32 (...) @smp_wmb()
  %42 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %43 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %42, i32 0, i32 0
  %44 = call i32 @wake_up_all(i32* %43)
  br label %45

45:                                               ; preds = %40, %2
  ret void
}

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
