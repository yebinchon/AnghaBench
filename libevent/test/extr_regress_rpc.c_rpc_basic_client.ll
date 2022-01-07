; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_rpc.c_rpc_basic_client.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_rpc.c_rpc_basic_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { i32 }
%struct.evrpc_base = type opaque
%struct.evrpc_pool = type { i32 }
%struct.msg = type { i32 }
%struct.kill = type { i32 }
%struct.evrpc_request_wrapper = type { i32 }

@need_input_hook = common dso_local global i32 0, align 4
@need_output_hook = common dso_local global i32 0, align 4
@EVRPC_INPUT = common dso_local global i32 0, align 4
@rpc_hook_add_header = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@EVRPC_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@rpc_hook_add_meta = common dso_local global i32 0, align 4
@rpc_hook_remove_header = common dso_local global i32 0, align 4
@from_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"niels\00", align 1
@to_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"tester\00", align 1
@Message = common dso_local global i32 0, align 4
@GotKillCb = common dso_local global i32 0, align 4
@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rpc_basic_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_basic_client() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.evhttp*, align 8
  %3 = alloca %struct.evrpc_base*, align 8
  %4 = alloca %struct.evrpc_pool*, align 8
  %5 = alloca %struct.msg*, align 8
  %6 = alloca %struct.kill*, align 8
  %7 = alloca %struct.evrpc_request_wrapper*, align 8
  store %struct.evhttp* null, %struct.evhttp** %2, align 8
  store %struct.evrpc_base* null, %struct.evrpc_base** %3, align 8
  store %struct.evrpc_pool* null, %struct.evrpc_pool** %4, align 8
  store %struct.msg* null, %struct.msg** %5, align 8
  store %struct.kill* null, %struct.kill** %6, align 8
  %8 = bitcast %struct.evrpc_base** %3 to %struct.evrpc_pool**
  %9 = call i32 @rpc_setup(%struct.evhttp** %2, i32* %1, %struct.evrpc_pool** %8)
  store i32 1, i32* @need_input_hook, align 4
  store i32 1, i32* @need_output_hook, align 4
  %10 = load %struct.evrpc_base*, %struct.evrpc_base** %3, align 8
  %11 = bitcast %struct.evrpc_base* %10 to %struct.evrpc_pool*
  %12 = load i32, i32* @EVRPC_INPUT, align 4
  %13 = load i32, i32* @rpc_hook_add_header, align 4
  %14 = call i32* @evrpc_add_hook(%struct.evrpc_pool* %11, i32 %12, i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  %19 = call i32 @assert(i32* %18)
  %20 = load %struct.evrpc_base*, %struct.evrpc_base** %3, align 8
  %21 = bitcast %struct.evrpc_base* %20 to %struct.evrpc_pool*
  %22 = load i32, i32* @EVRPC_OUTPUT, align 4
  %23 = load i32, i32* @rpc_hook_add_header, align 4
  %24 = call i32* @evrpc_add_hook(%struct.evrpc_pool* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  %29 = call i32 @assert(i32* %28)
  %30 = load i32, i32* %1, align 4
  %31 = call %struct.evrpc_pool* @rpc_pool_with_connection(i32 %30)
  store %struct.evrpc_pool* %31, %struct.evrpc_pool** %4, align 8
  %32 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %33 = ptrtoint %struct.evrpc_pool* %32 to i32
  %34 = call i32 @tt_assert(i32 %33)
  %35 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %36 = load i32, i32* @EVRPC_OUTPUT, align 4
  %37 = load i32, i32* @rpc_hook_add_meta, align 4
  %38 = call i32* @evrpc_add_hook(%struct.evrpc_pool* %35, i32 %36, i32 %37, i8* null)
  %39 = call i32 @assert(i32* %38)
  %40 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %41 = load i32, i32* @EVRPC_INPUT, align 4
  %42 = load i32, i32* @rpc_hook_remove_header, align 4
  %43 = call i32* @evrpc_add_hook(%struct.evrpc_pool* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 @assert(i32* %43)
  %45 = call %struct.msg* (...) @msg_new()
  store %struct.msg* %45, %struct.msg** %5, align 8
  %46 = load %struct.msg*, %struct.msg** %5, align 8
  %47 = ptrtoint %struct.msg* %46 to i32
  %48 = call i32 @tt_assert(i32 %47)
  %49 = load %struct.msg*, %struct.msg** %5, align 8
  %50 = load i32, i32* @from_name, align 4
  %51 = call i32 @EVTAG_ASSIGN(%struct.msg* %49, i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.msg*, %struct.msg** %5, align 8
  %53 = load i32, i32* @to_name, align 4
  %54 = call i32 @EVTAG_ASSIGN(%struct.msg* %52, i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %55 = call %struct.kill* (...) @kill_new()
  store %struct.kill* %55, %struct.kill** %6, align 8
  %56 = load i32, i32* @Message, align 4
  %57 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %58 = load %struct.msg*, %struct.msg** %5, align 8
  %59 = load %struct.kill*, %struct.kill** %6, align 8
  %60 = load i32, i32* @GotKillCb, align 4
  %61 = call i32 @EVRPC_MAKE_REQUEST(i32 %56, %struct.evrpc_pool* %57, %struct.msg* %58, %struct.kill* %59, i32 %60, i32* null)
  store i32 0, i32* @test_ok, align 4
  %62 = call i32 (...) @event_dispatch()
  %63 = load i32, i32* @test_ok, align 4
  %64 = icmp eq i32 %63, 1
  %65 = zext i1 %64 to i32
  %66 = call i32 @tt_assert(i32 %65)
  %67 = load %struct.kill*, %struct.kill** %6, align 8
  %68 = call i32 @kill_clear(%struct.kill* %67)
  %69 = load i32, i32* @Message, align 4
  %70 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %71 = load %struct.msg*, %struct.msg** %5, align 8
  %72 = load %struct.kill*, %struct.kill** %6, align 8
  %73 = load i32, i32* @GotKillCb, align 4
  %74 = call i32 @EVRPC_MAKE_REQUEST(i32 %69, %struct.evrpc_pool* %70, %struct.msg* %71, %struct.kill* %72, i32 %73, i32* null)
  %75 = call i32 (...) @event_dispatch()
  %76 = load i32, i32* @test_ok, align 4
  %77 = icmp eq i32 %76, 2
  %78 = zext i1 %77 to i32
  %79 = call i32 @tt_assert(i32 %78)
  %80 = load %struct.kill*, %struct.kill** %6, align 8
  %81 = call i32 @kill_clear(%struct.kill* %80)
  %82 = load i32, i32* @Message, align 4
  %83 = load %struct.msg*, %struct.msg** %5, align 8
  %84 = load %struct.kill*, %struct.kill** %6, align 8
  %85 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %86 = load %struct.msg*, %struct.msg** %5, align 8
  %87 = load %struct.kill*, %struct.kill** %6, align 8
  %88 = load i32, i32* @GotKillCb, align 4
  %89 = call %struct.evrpc_request_wrapper* @EVRPC_MAKE_CTX(i32 %82, %struct.msg* %83, %struct.kill* %84, %struct.evrpc_pool* %85, %struct.msg* %86, %struct.kill* %87, i32 %88, i32* null)
  store %struct.evrpc_request_wrapper* %89, %struct.evrpc_request_wrapper** %7, align 8
  %90 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %7, align 8
  %91 = call i32 @evrpc_make_request(%struct.evrpc_request_wrapper* %90)
  %92 = call i32 (...) @event_dispatch()
  %93 = load %struct.evrpc_base*, %struct.evrpc_base** %3, align 8
  %94 = bitcast %struct.evrpc_base* %93 to %struct.evrpc_pool*
  %95 = call i32 @rpc_teardown(%struct.evrpc_pool* %94)
  %96 = load i32, i32* @test_ok, align 4
  %97 = icmp eq i32 %96, 3
  %98 = zext i1 %97 to i32
  %99 = call i32 @tt_assert(i32 %98)
  br label %100

100:                                              ; preds = %0
  %101 = load %struct.msg*, %struct.msg** %5, align 8
  %102 = icmp ne %struct.msg* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.msg*, %struct.msg** %5, align 8
  %105 = call i32 @msg_free(%struct.msg* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.kill*, %struct.kill** %6, align 8
  %108 = icmp ne %struct.kill* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.kill*, %struct.kill** %6, align 8
  %111 = call i32 @kill_free(%struct.kill* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %114 = icmp ne %struct.evrpc_pool* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %117 = call i32 @evrpc_pool_free(%struct.evrpc_pool* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %120 = icmp ne %struct.evhttp* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  %123 = call i32 @evhttp_free(%struct.evhttp* %122)
  br label %124

124:                                              ; preds = %121, %118
  store i32 0, i32* @need_input_hook, align 4
  store i32 0, i32* @need_output_hook, align 4
  ret void
}

declare dso_local i32 @rpc_setup(%struct.evhttp**, i32*, %struct.evrpc_pool**) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32* @evrpc_add_hook(%struct.evrpc_pool*, i32, i32, i8*) #1

declare dso_local %struct.evrpc_pool* @rpc_pool_with_connection(i32) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local %struct.msg* @msg_new(...) #1

declare dso_local i32 @EVTAG_ASSIGN(%struct.msg*, i32, i8*) #1

declare dso_local %struct.kill* @kill_new(...) #1

declare dso_local i32 @EVRPC_MAKE_REQUEST(i32, %struct.evrpc_pool*, %struct.msg*, %struct.kill*, i32, i32*) #1

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @kill_clear(%struct.kill*) #1

declare dso_local %struct.evrpc_request_wrapper* @EVRPC_MAKE_CTX(i32, %struct.msg*, %struct.kill*, %struct.evrpc_pool*, %struct.msg*, %struct.kill*, i32, i32*) #1

declare dso_local i32 @evrpc_make_request(%struct.evrpc_request_wrapper*) #1

declare dso_local i32 @rpc_teardown(%struct.evrpc_pool*) #1

declare dso_local i32 @msg_free(%struct.msg*) #1

declare dso_local i32 @kill_free(%struct.kill*) #1

declare dso_local i32 @evrpc_pool_free(%struct.evrpc_pool*) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
