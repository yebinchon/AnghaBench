; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_linux-core.c_uv__platform_loop_init.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_linux-core.c_uv__platform_loop_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__platform_loop_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load i32, i32* @O_CLOEXEC, align 4
  %6 = call i32 @epoll_create1(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load i64, i64* @errno, align 8
  %11 = load i64, i64* @ENOSYS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @EINVAL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13, %9
  %18 = call i32 @epoll_create(i32 256)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @uv__cloexec(i32 %22, i32 1)
  br label %24

24:                                               ; preds = %21, %17
  br label %25

25:                                               ; preds = %24, %13, %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 -1, i32* %30, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i64, i64* @errno, align 8
  %37 = call i32 @UV__ERR(i64 %36)
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @epoll_create1(i32) #1

declare dso_local i32 @epoll_create(i32) #1

declare dso_local i32 @uv__cloexec(i32, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
