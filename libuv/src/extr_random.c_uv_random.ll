; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_random.c_uv_random.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_random.c_uv_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i8*, i32*, i64, i32* }

@UV_E2BIG = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_RANDOM = common dso_local global i32 0, align 4
@UV__WORK_CPU = common dso_local global i32 0, align 4
@uv__random_work = common dso_local global i32 0, align 4
@uv__random_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_random(i32* %0, %struct.TYPE_4__* %1, i8* %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %14 = load i64, i64* %11, align 8
  %15 = icmp ugt i64 %14, 2147483647
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = load i32, i32* @UV_E2BIG, align 4
  store i32 %17, i32* %7, align 4
  br label %56

18:                                               ; preds = %6
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @UV_EINVAL, align 4
  store i32 %22, i32* %7, align 4
  br label %56

23:                                               ; preds = %18
  %24 = load i32*, i32** %13, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @uv__random(i8* %27, i64 %28)
  store i32 %29, i32* %7, align 4
  br label %56

30:                                               ; preds = %23
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = load i32, i32* @UV_RANDOM, align 4
  %34 = call i32 @uv__req_init(i32* %31, %struct.TYPE_4__* %32, i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 5
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i32* %40, i32** %42, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* @UV__WORK_CPU, align 4
  %53 = load i32, i32* @uv__random_work, align 4
  %54 = load i32, i32* @uv__random_done, align 4
  %55 = call i32 @uv__work_submit(i32* %49, i32* %51, i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %30, %26, %21, %16
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @uv__random(i8*, i64) #1

declare dso_local i32 @uv__req_init(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @uv__work_submit(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
