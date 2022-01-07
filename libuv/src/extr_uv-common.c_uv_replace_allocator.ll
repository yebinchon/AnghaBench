; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_uv-common.c_uv_replace_allocator.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_uv-common.c_uv_replace_allocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32*, i32* }

@UV_EINVAL = common dso_local global i32 0, align 4
@uv__allocator = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_replace_allocator(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15, %12, %4
  %22 = load i32, i32* @UV_EINVAL, align 4
  store i32 %22, i32* %5, align 4
  br label %28

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  store i32* %24, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uv__allocator, i32 0, i32 3), align 8
  %25 = load i32*, i32** %7, align 8
  store i32* %25, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uv__allocator, i32 0, i32 2), align 8
  %26 = load i32*, i32** %8, align 8
  store i32* %26, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uv__allocator, i32 0, i32 1), align 8
  %27 = load i32*, i32** %9, align 8
  store i32* %27, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uv__allocator, i32 0, i32 0), align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %23, %21
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
