; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_libmumblelink.c_mumble_update_coordinates2.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_libmumblelink.c_mumble_update_coordinates2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@lm = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mumble_update_coordinates2(float* %0, float* %1, float* %2, float* %3, float* %4, float* %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  br label %52

16:                                               ; preds = %6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load float*, float** %7, align 8
  %21 = call i32 @memcpy(i32 %19, float* %20, i32 4)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load float*, float** %8, align 8
  %26 = call i32 @memcpy(i32 %24, float* %25, i32 4)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load float*, float** %9, align 8
  %31 = call i32 @memcpy(i32 %29, float* %30, i32 4)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load float*, float** %10, align 8
  %36 = call i32 @memcpy(i32 %34, float* %35, i32 4)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load float*, float** %11, align 8
  %41 = call i32 @memcpy(i32 %39, float* %40, i32 4)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load float*, float** %12, align 8
  %46 = call i32 @memcpy(i32 %44, float* %45, i32 4)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 2, i32* %48, align 4
  %49 = call i32 (...) @GetTickCount()
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @memcpy(i32, float*, i32) #1

declare dso_local i32 @GetTickCount(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
