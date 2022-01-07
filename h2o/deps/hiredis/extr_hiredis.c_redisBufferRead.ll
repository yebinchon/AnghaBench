; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_hiredis.c_redisBufferRead.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_hiredis.c_redisBufferRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i8*, i32 }

@REDIS_ERR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@REDIS_BLOCK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@REDIS_ERR_IO = common dso_local global i32 0, align 4
@REDIS_ERR_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Server closed the connection\00", align 1
@REDIS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisBufferRead(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [16384 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @REDIS_ERR, align 4
  store i32 %11, i32* %2, align 4
  br label %78

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds [16384 x i8], [16384 x i8]* %4, i64 0, i64 0
  %17 = call i32 @read(i32 %15, i8* %16, i32 16384)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %42

20:                                               ; preds = %12
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EAGAIN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @REDIS_BLOCK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24, %20
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EINTR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %24
  br label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = load i32, i32* @REDIS_ERR_IO, align 4
  %39 = call i32 @__redisSetError(%struct.TYPE_5__* %37, i32 %38, i8* null)
  %40 = load i32, i32* @REDIS_ERR, align 4
  store i32 %40, i32* %2, align 4
  br label %78

41:                                               ; preds = %35
  br label %75

42:                                               ; preds = %12
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = load i32, i32* @REDIS_ERR_EOF, align 4
  %48 = call i32 @__redisSetError(%struct.TYPE_5__* %46, i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @REDIS_ERR, align 4
  store i32 %49, i32* %2, align 4
  br label %78

50:                                               ; preds = %42
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds [16384 x i8], [16384 x i8]* %4, i64 0, i64 0
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @redisReaderFeed(%struct.TYPE_6__* %53, i8* %54, i32 %55)
  %57 = load i64, i64* @REDIS_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %50
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @__redisSetError(%struct.TYPE_5__* %60, i32 %65, i8* %70)
  %72 = load i32, i32* @REDIS_ERR, align 4
  store i32 %72, i32* %2, align 4
  br label %78

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74, %41
  %76 = load i64, i64* @REDIS_OK, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %59, %45, %36, %10
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @__redisSetError(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i64 @redisReaderFeed(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
