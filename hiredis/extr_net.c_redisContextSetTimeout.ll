; ModuleID = '/home/carl/AnghaBench/hiredis/extr_net.c_redisContextSetTimeout.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_net.c_redisContextSetTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i32, i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@REDIS_ERR_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"setsockopt(SO_RCVTIMEO)\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"setsockopt(SO_SNDTIMEO)\00", align 1
@REDIS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisContextSetTimeout(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = bitcast %struct.timeval* %4 to i64*
  store i64 %1, i64* %8, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  %9 = bitcast %struct.timeval* %4 to i8*
  store i8* %9, i8** %6, align 8
  store i64 8, i64* %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SOL_SOCKET, align 4
  %14 = load i32, i32* @SO_RCVTIMEO, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @setsockopt(i32 %12, i32 %13, i32 %14, i8* %15, i64 %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = load i32, i32* @REDIS_ERR_IO, align 4
  %22 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_4__* %20, i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @REDIS_ERR, align 4
  store i32 %23, i32* %3, align 4
  br label %41

24:                                               ; preds = %2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SOL_SOCKET, align 4
  %29 = load i32, i32* @SO_SNDTIMEO, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @setsockopt(i32 %27, i32 %28, i32 %29, i8* %30, i64 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = load i32, i32* @REDIS_ERR_IO, align 4
  %37 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_4__* %35, i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @REDIS_ERR, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %24
  %40 = load i32, i32* @REDIS_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %34, %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @__redisSetErrorFromErrno(%struct.TYPE_4__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
