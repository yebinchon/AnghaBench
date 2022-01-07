; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_net.c_redisContextTimeoutMsec.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_net.c_redisContextTimeoutMsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.timeval* }
%struct.timeval = type { i32, i32 }

@__MAX_MSEC = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@REDIS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64*)* @redisContextTimeoutMsec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redisContextTimeoutMsec(%struct.TYPE_3__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.timeval*, %struct.timeval** %9, align 8
  store %struct.timeval* %10, %struct.timeval** %6, align 8
  store i64 -1, i64* %7, align 8
  %11 = load %struct.timeval*, %struct.timeval** %6, align 8
  %12 = icmp ne %struct.timeval* %11, null
  br i1 %12, label %13, label %49

13:                                               ; preds = %2
  %14 = load %struct.timeval*, %struct.timeval** %6, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1000000
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.timeval*, %struct.timeval** %6, align 8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @__MAX_MSEC, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %13
  %25 = load i64, i64* %7, align 8
  %26 = load i64*, i64** %5, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* @REDIS_ERR, align 4
  store i32 %27, i32* %3, align 4
  br label %53

28:                                               ; preds = %18
  %29 = load %struct.timeval*, %struct.timeval** %6, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 1000
  %33 = load %struct.timeval*, %struct.timeval** %6, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 999
  %37 = sdiv i32 %36, 1000
  %38 = add nsw i32 %32, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %28
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @INT_MAX, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %28
  %47 = load i64, i64* @INT_MAX, align 8
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %46, %42
  br label %49

49:                                               ; preds = %48, %2
  %50 = load i64, i64* %7, align 8
  %51 = load i64*, i64** %5, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* @REDIS_OK, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %24
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
