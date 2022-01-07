; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_net.c_redisCheckSocketError.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_net.c_redisCheckSocketError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@REDIS_ERR_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"getsockopt(SO_ERROR)\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisCheckSocketError(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 4, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SOL_SOCKET, align 4
  %10 = load i32, i32* @SO_ERROR, align 4
  %11 = call i32 @getsockopt(i32 %8, i32 %9, i32 %10, i32* %4, i32* %5)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = load i32, i32* @REDIS_ERR_IO, align 4
  %16 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_4__* %14, i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @REDIS_ERR, align 4
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* @errno, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = load i32, i32* @REDIS_ERR_IO, align 4
  %25 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_4__* %23, i32 %24, i8* null)
  %26 = load i32, i32* @REDIS_ERR, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @REDIS_OK, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %21, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @__redisSetErrorFromErrno(%struct.TYPE_4__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
