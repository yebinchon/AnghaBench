; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_net.c_redisContextConnectUnix.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_net.c_redisContextConnectUnix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.timeval*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.timeval = type { i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@REDIS_BLOCK = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i64 0, align 8
@REDIS_CONN_UNIX = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@REDIS_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisContextConnectUnix(%struct.TYPE_9__* %0, i8* %1, %struct.timeval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_un, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @REDIS_BLOCK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %8, align 4
  store i64 -1, i64* %10, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = load i32, i32* @AF_LOCAL, align 4
  %18 = call i64 @redisCreateSocket(%struct.TYPE_9__* %16, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @REDIS_ERR, align 4
  store i32 %21, i32* %4, align 4
  br label %139

22:                                               ; preds = %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = call i64 @redisSetBlocking(%struct.TYPE_9__* %23, i32 0)
  %25 = load i64, i64* @REDIS_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @REDIS_ERR, align 4
  store i32 %28, i32* %4, align 4
  br label %139

29:                                               ; preds = %22
  %30 = load i32, i32* @REDIS_CONN_UNIX, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load i8*, i8** %6, align 8
  %41 = call i8* @strdup(i8* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  br label %45

45:                                               ; preds = %39, %29
  %46 = load %struct.timeval*, %struct.timeval** %7, align 8
  %47 = icmp ne %struct.timeval* %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load %struct.timeval*, %struct.timeval** %50, align 8
  %52 = load %struct.timeval*, %struct.timeval** %7, align 8
  %53 = icmp ne %struct.timeval* %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load %struct.timeval*, %struct.timeval** %56, align 8
  %58 = icmp eq %struct.timeval* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = call %struct.timeval* @malloc(i32 4)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  store %struct.timeval* %60, %struct.timeval** %62, align 8
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load %struct.timeval*, %struct.timeval** %65, align 8
  %67 = load %struct.timeval*, %struct.timeval** %7, align 8
  %68 = call i32 @memcpy(%struct.timeval* %66, %struct.timeval* %67, i32 4)
  br label %69

69:                                               ; preds = %63, %48
  br label %83

70:                                               ; preds = %45
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load %struct.timeval*, %struct.timeval** %72, align 8
  %74 = icmp ne %struct.timeval* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load %struct.timeval*, %struct.timeval** %77, align 8
  %79 = call i32 @free(%struct.timeval* %78)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  store %struct.timeval* null, %struct.timeval** %82, align 8
  br label %83

83:                                               ; preds = %80, %69
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = call i64 @redisContextTimeoutMsec(%struct.TYPE_9__* %84, i64* %10)
  %86 = load i64, i64* @REDIS_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @REDIS_ERR, align 4
  store i32 %89, i32* %4, align 4
  br label %139

90:                                               ; preds = %83
  %91 = load i32, i32* @AF_LOCAL, align 4
  %92 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %9, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %9, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @strncpy(i32 %94, i8* %95, i32 3)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = bitcast %struct.sockaddr_un* %9 to %struct.sockaddr*
  %101 = call i32 @connect(i32 %99, %struct.sockaddr* %100, i32 8)
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %121

103:                                              ; preds = %90
  %104 = load i64, i64* @errno, align 8
  %105 = load i64, i64* @EINPROGRESS, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  br label %120

111:                                              ; preds = %107, %103
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i64 @redisContextWaitReady(%struct.TYPE_9__* %112, i64 %113)
  %115 = load i64, i64* @REDIS_OK, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* @REDIS_ERR, align 4
  store i32 %118, i32* %4, align 4
  br label %139

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %110
  br label %121

121:                                              ; preds = %120, %90
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = call i64 @redisSetBlocking(%struct.TYPE_9__* %125, i32 1)
  %127 = load i64, i64* @REDIS_OK, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* @REDIS_ERR, align 4
  store i32 %130, i32* %4, align 4
  br label %139

131:                                              ; preds = %124, %121
  %132 = load i32, i32* @REDIS_CONNECTED, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load i64, i64* @REDIS_OK, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %131, %129, %117, %88, %27, %20
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i64 @redisCreateSocket(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @redisSetBlocking(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.timeval* @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.timeval*, %struct.timeval*, i32) #1

declare dso_local i32 @free(%struct.timeval*) #1

declare dso_local i64 @redisContextTimeoutMsec(%struct.TYPE_9__*, i64*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @redisContextWaitReady(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
