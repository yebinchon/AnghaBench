; ModuleID = '/home/carl/AnghaBench/hiredis/extr_net.c_redisSetBlocking.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_net.c_redisSetBlocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@F_GETFL = common dso_local global i32 0, align 4
@REDIS_ERR_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fcntl(F_GETFL)\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"fcntl(F_SETFL)\00", align 1
@REDIS_OK = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @redisSetBlocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redisSetBlocking(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @F_GETFL, align 4
  %11 = call i32 (i32, i32, ...) @fcntl(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = load i32, i32* @REDIS_ERR_IO, align 4
  %16 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_5__* %14, i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = call i32 @redisNetClose(%struct.TYPE_5__* %17)
  %19 = load i32, i32* @REDIS_ERR, align 4
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* @O_NONBLOCK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @O_NONBLOCK, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @F_SETFL, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i32, i32, ...) @fcntl(i32 %35, i32 %36, i32 %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = load i32, i32* @REDIS_ERR_IO, align 4
  %43 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_5__* %41, i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = call i32 @redisNetClose(%struct.TYPE_5__* %44)
  %46 = load i32, i32* @REDIS_ERR, align 4
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %32
  %48 = load i32, i32* @REDIS_OK, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %40, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @__redisSetErrorFromErrno(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @redisNetClose(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
