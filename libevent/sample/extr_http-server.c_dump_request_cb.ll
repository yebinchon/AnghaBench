; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_http-server.c_dump_request_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_http-server.c_dump_request_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.evkeyvalq = type { %struct.evkeyval* }
%struct.evkeyval = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.evkeyval* }
%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"TRACE\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"PATCH\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Received a %s request for %s\0AHeaders:\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"  %s: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Input data: <<<\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c">>>\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @dump_request_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_request_cb(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.evkeyvalq*, align 8
  %7 = alloca %struct.evkeyval*, align 8
  %8 = alloca %struct.evbuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %12 = call i32 @evhttp_request_get_command(%struct.evhttp_request* %11)
  switch i32 %12, label %22 [
    i32 134, label %13
    i32 130, label %14
    i32 133, label %15
    i32 129, label %16
    i32 135, label %17
    i32 132, label %18
    i32 128, label %19
    i32 136, label %20
    i32 131, label %21
  ]

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %23

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %23

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %23

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %23

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %23

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %23

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %23

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %23

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %23

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14, %13
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %26 = call i8* @evhttp_request_get_uri(%struct.evhttp_request* %25)
  %27 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* %24, i8* %26)
  %28 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %29 = call %struct.evkeyvalq* @evhttp_request_get_input_headers(%struct.evhttp_request* %28)
  store %struct.evkeyvalq* %29, %struct.evkeyvalq** %6, align 8
  %30 = load %struct.evkeyvalq*, %struct.evkeyvalq** %6, align 8
  %31 = getelementptr inbounds %struct.evkeyvalq, %struct.evkeyvalq* %30, i32 0, i32 0
  %32 = load %struct.evkeyval*, %struct.evkeyval** %31, align 8
  store %struct.evkeyval* %32, %struct.evkeyval** %7, align 8
  br label %33

33:                                               ; preds = %44, %23
  %34 = load %struct.evkeyval*, %struct.evkeyval** %7, align 8
  %35 = icmp ne %struct.evkeyval* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.evkeyval*, %struct.evkeyval** %7, align 8
  %38 = getelementptr inbounds %struct.evkeyval, %struct.evkeyval* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.evkeyval*, %struct.evkeyval** %7, align 8
  %41 = getelementptr inbounds %struct.evkeyval, %struct.evkeyval* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %39, i8* %42)
  br label %44

44:                                               ; preds = %36
  %45 = load %struct.evkeyval*, %struct.evkeyval** %7, align 8
  %46 = getelementptr inbounds %struct.evkeyval, %struct.evkeyval* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.evkeyval*, %struct.evkeyval** %47, align 8
  store %struct.evkeyval* %48, %struct.evkeyval** %7, align 8
  br label %33

49:                                               ; preds = %33
  %50 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %51 = call %struct.evbuffer* @evhttp_request_get_input_buffer(%struct.evhttp_request* %50)
  store %struct.evbuffer* %51, %struct.evbuffer** %8, align 8
  %52 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %53

53:                                               ; preds = %68, %49
  %54 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %55 = call i64 @evbuffer_get_length(%struct.evbuffer* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %60 = call i32 @evbuffer_remove(%struct.evbuffer* %58, i8* %59, i32 128)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @stdout, align 4
  %67 = call i32 @fwrite(i8* %64, i32 1, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %57
  br label %53

69:                                               ; preds = %53
  %70 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %71 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %72 = call i32 @evhttp_send_reply(%struct.evhttp_request* %71, i32 200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32* null)
  ret void
}

declare dso_local i32 @evhttp_request_get_command(%struct.evhttp_request*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @evhttp_request_get_uri(%struct.evhttp_request*) #1

declare dso_local %struct.evkeyvalq* @evhttp_request_get_input_headers(%struct.evhttp_request*) #1

declare dso_local %struct.evbuffer* @evhttp_request_get_input_buffer(%struct.evhttp_request*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_remove(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @evhttp_send_reply(%struct.evhttp_request*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
