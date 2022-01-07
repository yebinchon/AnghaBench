; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_on_send_emit.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_on_send_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.st_h2o_http3client_req_t* }
%struct.st_h2o_http3client_req_t = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 (i32*, i64, i32)* }
%struct.TYPE_6__ = type { i64, i64 }

@H2O_SEND_STATE_IN_PROGRESS = common dso_local global i32 0, align 4
@H2O_SEND_STATE_FINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i8*, i64*, i32*)* @on_send_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_send_emit(%struct.TYPE_9__* %0, i64 %1, i8* %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.st_h2o_http3client_req_t*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %14, align 8
  store %struct.st_h2o_http3client_req_t* %15, %struct.st_h2o_http3client_req_t** %11, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %11, align 8
  %19 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %22, %23
  %25 = icmp uge i64 %17, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %11, align 8
  %28 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 %31, %32
  %34 = load i64*, i64** %9, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i32*, i32** %10, align 8
  store i32 1, i32* %35, align 4
  br label %38

36:                                               ; preds = %5
  %37 = load i32*, i32** %10, align 8
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %26
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %11, align 8
  %41 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %44, %45
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @memcpy(i8* %39, i64 %46, i64 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %38
  %54 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %11, align 8
  %55 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %53
  %60 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %11, align 8
  %61 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %12, align 8
  %64 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %11, align 8
  %65 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %11, align 8
  %68 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %69, align 8
  %71 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %11, align 8
  %72 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %71, i32 0, i32 1
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %11, align 8
  %75 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = call i64 @quicly_sendstate_is_open(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %59
  %81 = load i32, i32* @H2O_SEND_STATE_IN_PROGRESS, align 4
  br label %84

82:                                               ; preds = %59
  %83 = load i32, i32* @H2O_SEND_STATE_FINAL, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = call i32 %70(i32* %72, i64 %73, i32 %85)
  br label %87

87:                                               ; preds = %84, %53, %38
  ret i32 0
}

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i64 @quicly_sendstate_is_open(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
