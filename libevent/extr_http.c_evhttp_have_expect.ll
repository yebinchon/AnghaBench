; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_have_expect.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_have_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i64, %struct.evkeyvalq*, %struct.evkeyvalq* }
%struct.evkeyvalq = type { i32 }

@EVHTTP_REQUEST = common dso_local global i64 0, align 8
@NO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Expect\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"100-continue\00", align 1
@CONTINUE = common dso_local global i32 0, align 4
@OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evhttp_request*, i32)* @evhttp_have_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evhttp_have_expect(%struct.evhttp_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.evkeyvalq*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %12 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %11, i32 0, i32 2
  %13 = load %struct.evkeyvalq*, %struct.evkeyvalq** %12, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %16 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %15, i32 0, i32 1
  %17 = load %struct.evkeyvalq*, %struct.evkeyvalq** %16, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi %struct.evkeyvalq* [ %13, %10 ], [ %17, %14 ]
  store %struct.evkeyvalq* %19, %struct.evkeyvalq** %7, align 8
  %20 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %21 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EVHTTP_REQUEST, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %27 = call i32 @REQ_VERSION_ATLEAST(%struct.evhttp_request* %26, i32 1, i32 1)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25, %18
  %30 = load i32, i32* @NO, align 4
  store i32 %30, i32* %3, align 4
  br label %48

31:                                               ; preds = %25
  %32 = load %struct.evkeyvalq*, %struct.evkeyvalq** %7, align 8
  %33 = call i8* @evhttp_find_header(%struct.evkeyvalq* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @NO, align 4
  store i32 %37, i32* %3, align 4
  br label %48

38:                                               ; preds = %31
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @evutil_ascii_strcasecmp(i8* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @CONTINUE, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @OTHER, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %36, %29
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @REQ_VERSION_ATLEAST(%struct.evhttp_request*, i32, i32) #1

declare dso_local i8* @evhttp_find_header(%struct.evkeyvalq*, i8*) #1

declare dso_local i32 @evutil_ascii_strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
