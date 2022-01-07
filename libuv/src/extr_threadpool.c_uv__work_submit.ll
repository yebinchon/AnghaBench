; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_threadpool.c_uv__work_submit.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_threadpool.c_uv__work_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uv__work = type { void (%struct.uv__work*)*, void (%struct.uv__work*, i32)*, i32, i32* }

@once = common dso_local global i32 0, align 4
@init_once = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv__work_submit(i32* %0, %struct.uv__work* %1, i32 %2, void (%struct.uv__work*)* %3, void (%struct.uv__work*, i32)* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.uv__work*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.uv__work*)*, align 8
  %10 = alloca void (%struct.uv__work*, i32)*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.uv__work* %1, %struct.uv__work** %7, align 8
  store i32 %2, i32* %8, align 4
  store void (%struct.uv__work*)* %3, void (%struct.uv__work*)** %9, align 8
  store void (%struct.uv__work*, i32)* %4, void (%struct.uv__work*, i32)** %10, align 8
  %11 = load i32, i32* @init_once, align 4
  %12 = call i32 @uv_once(i32* @once, i32 %11)
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.uv__work*, %struct.uv__work** %7, align 8
  %15 = getelementptr inbounds %struct.uv__work, %struct.uv__work* %14, i32 0, i32 3
  store i32* %13, i32** %15, align 8
  %16 = load void (%struct.uv__work*)*, void (%struct.uv__work*)** %9, align 8
  %17 = load %struct.uv__work*, %struct.uv__work** %7, align 8
  %18 = getelementptr inbounds %struct.uv__work, %struct.uv__work* %17, i32 0, i32 0
  store void (%struct.uv__work*)* %16, void (%struct.uv__work*)** %18, align 8
  %19 = load void (%struct.uv__work*, i32)*, void (%struct.uv__work*, i32)** %10, align 8
  %20 = load %struct.uv__work*, %struct.uv__work** %7, align 8
  %21 = getelementptr inbounds %struct.uv__work, %struct.uv__work* %20, i32 0, i32 1
  store void (%struct.uv__work*, i32)* %19, void (%struct.uv__work*, i32)** %21, align 8
  %22 = load %struct.uv__work*, %struct.uv__work** %7, align 8
  %23 = getelementptr inbounds %struct.uv__work, %struct.uv__work* %22, i32 0, i32 2
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @post(i32* %23, i32 %24)
  ret void
}

declare dso_local i32 @uv_once(i32*, i32) #1

declare dso_local i32 @post(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
