; ModuleID = '/home/carl/AnghaBench/hiredis/extr_ssl.c_redisSSLConnect.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_ssl.c_redisSSLConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32*, i32* }

@REDIS_ERR_OTHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"redisContext was already associated\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@redisContextSSLFuncs = common dso_local global i32 0, align 4
@SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4
@REDIS_BLOCK = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@SSL_ERROR_SYSCALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"SSL_connect failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@REDIS_ERR_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*)* @redisSSLConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redisSSLConnect(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [512 x i8], align 16
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %19 = call i32 @__redisSetError(%struct.TYPE_7__* %17, i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @REDIS_ERR, align 4
  store i32 %20, i32* %4, align 4
  br label %110

21:                                               ; preds = %3
  %22 = call %struct.TYPE_6__* @calloc(i32 1, i32 16)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  store i32* @redisContextSSLFuncs, i32** %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %8, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER, align 4
  %40 = call i32 @SSL_set_mode(i32* %38, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @SSL_set_fd(i32* %43, i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @SSL_set_connect_state(i32* %50)
  %52 = call i32 (...) @ERR_clear_error()
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @SSL_connect(i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %21
  %60 = load i32, i32* @REDIS_OK, align 4
  store i32 %60, i32* %4, align 4
  br label %110

61:                                               ; preds = %21
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @SSL_get_error(i32* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @REDIS_BLOCK, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %61
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %73
  %82 = load i32, i32* @REDIS_OK, align 4
  store i32 %82, i32* %4, align 4
  br label %110

83:                                               ; preds = %77, %61
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %94 = load i32, i32* @errno, align 4
  %95 = call i8* @strerror(i32 %94)
  %96 = call i32 @snprintf(i8* %93, i32 511, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  br label %103

97:                                               ; preds = %88
  %98 = call i64 (...) @ERR_peek_last_error()
  store i64 %98, i64* %11, align 8
  %99 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %100 = load i64, i64* %11, align 8
  %101 = call i8* @ERR_reason_error_string(i64 %100)
  %102 = call i32 @snprintf(i8* %99, i32 511, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %97, %92
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = load i32, i32* @REDIS_ERR_IO, align 4
  %106 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %107 = call i32 @__redisSetError(%struct.TYPE_7__* %104, i32 %105, i8* %106)
  br label %108

108:                                              ; preds = %103, %83
  %109 = load i32, i32* @REDIS_ERR, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %81, %59, %16
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @__redisSetError(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @SSL_set_mode(i32*, i32) #1

declare dso_local i32 @SSL_set_fd(i32*, i32) #1

declare dso_local i32 @SSL_set_connect_state(i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_connect(i32*) #1

declare dso_local i32 @SSL_get_error(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @ERR_peek_last_error(...) #1

declare dso_local i8* @ERR_reason_error_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
