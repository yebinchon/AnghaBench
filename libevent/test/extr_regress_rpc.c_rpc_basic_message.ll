; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_rpc.c_rpc_basic_message.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_rpc.c_rpc_basic_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { i32 }
%struct.evrpc_base = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32, i32 }
%struct.msg = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@rpc_postrequest_done = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@from_name = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"niels\00", align 1
@to_name = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"tester\00", align 1
@EVHTTP_REQ_POST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"/.rpc.Message\00", align 1
@test_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rpc_basic_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_basic_message() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.evhttp*, align 8
  %3 = alloca %struct.evrpc_base*, align 8
  %4 = alloca %struct.evhttp_connection*, align 8
  %5 = alloca %struct.evhttp_request*, align 8
  %6 = alloca %struct.msg*, align 8
  store %struct.evhttp* null, %struct.evhttp** %2, align 8
  store %struct.evrpc_base* null, %struct.evrpc_base** %3, align 8
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %4, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %5, align 8
  %7 = call i32 @rpc_setup(%struct.evhttp** %2, i32* %1, %struct.evrpc_base** %3)
  %8 = load i32, i32* %1, align 4
  %9 = call %struct.evhttp_connection* @evhttp_connection_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.evhttp_connection* %9, %struct.evhttp_connection** %4, align 8
  %10 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %11 = call i32 @tt_assert(%struct.evhttp_connection* %10)
  %12 = load i32, i32* @rpc_postrequest_done, align 4
  %13 = call %struct.evhttp_request* @evhttp_request_new(i32 %12, i32* null)
  store %struct.evhttp_request* %13, %struct.evhttp_request** %5, align 8
  %14 = load %struct.evhttp_request*, %struct.evhttp_request** %5, align 8
  %15 = icmp eq %struct.evhttp_request* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %0
  %21 = load %struct.evhttp_request*, %struct.evhttp_request** %5, align 8
  %22 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @evhttp_add_header(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %25 = call %struct.msg* (...) @msg_new()
  store %struct.msg* %25, %struct.msg** %6, align 8
  %26 = load %struct.msg*, %struct.msg** %6, align 8
  %27 = load i32, i32* @from_name, align 4
  %28 = call i32 @EVTAG_ASSIGN(%struct.msg* %26, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %29 = load %struct.msg*, %struct.msg** %6, align 8
  %30 = load i32, i32* @to_name, align 4
  %31 = call i32 @EVTAG_ASSIGN(%struct.msg* %29, i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %32 = load %struct.evhttp_request*, %struct.evhttp_request** %5, align 8
  %33 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.msg*, %struct.msg** %6, align 8
  %36 = call i32 @msg_marshal(i32 %34, %struct.msg* %35)
  %37 = load %struct.msg*, %struct.msg** %6, align 8
  %38 = call i32 @msg_free(%struct.msg* %37)
  %39 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %40 = load %struct.evhttp_request*, %struct.evhttp_request** %5, align 8
  %41 = load i32, i32* @EVHTTP_REQ_POST, align 4
  %42 = call i32 @evhttp_make_request(%struct.evhttp_connection* %39, %struct.evhttp_request* %40, i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %20
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @exit(i32 1) #3
  unreachable

48:                                               ; preds = %20
  store i64 0, i64* @test_ok, align 8
  %49 = call i32 (...) @event_dispatch()
  %50 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %51 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %50)
  %52 = load %struct.evrpc_base*, %struct.evrpc_base** %3, align 8
  %53 = call i32 @rpc_teardown(%struct.evrpc_base* %52)
  br label %54

54:                                               ; preds = %48
  %55 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %56 = call i32 @evhttp_free(%struct.evhttp* %55)
  ret void
}

declare dso_local i32 @rpc_setup(%struct.evhttp**, i32*, %struct.evrpc_base**) #1

declare dso_local %struct.evhttp_connection* @evhttp_connection_new(i8*, i32) #1

declare dso_local i32 @tt_assert(%struct.evhttp_connection*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local %struct.msg* @msg_new(...) #1

declare dso_local i32 @EVTAG_ASSIGN(%struct.msg*, i32, i8*) #1

declare dso_local i32 @msg_marshal(i32, %struct.msg*) #1

declare dso_local i32 @msg_free(%struct.msg*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

declare dso_local i32 @rpc_teardown(%struct.evrpc_base*) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
