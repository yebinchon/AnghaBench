; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_highport_test.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_highport_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@test_ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Couldn't get a high port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_highport_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_highport_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.basic_test_data*
  store %struct.basic_test_data* %7, %struct.basic_test_data** %3, align 8
  store i32 -1, i32* %4, align 4
  store %struct.evhttp* null, %struct.evhttp** %5, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %27, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 50
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %13 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.evhttp* @evhttp_new(i32 %14)
  store %struct.evhttp* %15, %struct.evhttp** %5, align 8
  %16 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 65535, %17
  %19 = call i64 @evhttp_bind_socket(%struct.evhttp* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  store i32 1, i32* @test_ok, align 4
  %22 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %23 = call i32 @evhttp_free(%struct.evhttp* %22)
  br label %32

24:                                               ; preds = %11
  %25 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %26 = call i32 @evhttp_free(%struct.evhttp* %25)
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %8

30:                                               ; preds = %8
  %31 = call i32 @tt_fail_msg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %21
  ret void
}

declare dso_local %struct.evhttp* @evhttp_new(i32) #1

declare dso_local i64 @evhttp_bind_socket(%struct.evhttp*, i8*, i32) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

declare dso_local i32 @tt_fail_msg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
