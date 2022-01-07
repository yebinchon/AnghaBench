; ModuleID = '/home/carl/AnghaBench/hiredis/extr_net.c_redisCreateSocket.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_net.c_redisCreateSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@REDIS_INVALID_FD = common dso_local global i32 0, align 4
@REDIS_ERR_IO = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @redisCreateSocket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redisCreateSocket(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @REDIS_INVALID_FD, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = load i32, i32* @REDIS_ERR_IO, align 4
  %15 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_5__* %13, i32 %14, i32* null)
  %16 = load i32, i32* @REDIS_ERR, align 4
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AF_INET, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = call i32 @redisSetReuseAddr(%struct.TYPE_5__* %25)
  %27 = load i32, i32* @REDIS_ERR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @REDIS_ERR, align 4
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i32, i32* @REDIS_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %29, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @__redisSetErrorFromErrno(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @redisSetReuseAddr(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
