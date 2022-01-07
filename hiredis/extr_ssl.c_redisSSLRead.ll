; ModuleID = '/home/carl/AnghaBench/hiredis/extr_ssl.c_redisSSLRead.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_ssl.c_redisSSLRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@REDIS_ERR_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Server closed the connection\00", align 1
@REDIS_BLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Resource temporarily unavailable\00", align 1
@REDIS_ERR_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i64)* @redisSSLRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redisSSLRead(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @SSL_read(i32 %17, i8* %18, i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %69

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = load i32, i32* @REDIS_ERR_EOF, align 4
  %31 = call i32 @__redisSetError(%struct.TYPE_7__* %29, i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %69

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @SSL_get_error(i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @REDIS_BLOCK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %32
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EINTR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %69

49:                                               ; preds = %44
  store i8* null, i8** %11, align 8
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @EAGAIN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %54

54:                                               ; preds = %53, %49
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = load i32, i32* @REDIS_ERR_IO, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @__redisSetError(%struct.TYPE_7__* %55, i32 %56, i8* %57)
  store i32 -1, i32* %4, align 4
  br label %69

59:                                               ; preds = %32
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @maybeCheckWant(%struct.TYPE_6__* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %69

65:                                               ; preds = %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = load i32, i32* @REDIS_ERR_IO, align 4
  %68 = call i32 @__redisSetError(%struct.TYPE_7__* %66, i32 %67, i8* null)
  store i32 -1, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %64, %54, %48, %28, %23
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @SSL_read(i32, i8*, i64) #1

declare dso_local i32 @__redisSetError(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @SSL_get_error(i32, i32) #1

declare dso_local i64 @maybeCheckWant(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
