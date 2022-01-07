; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_proxy.c_on_body.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_proxy.c_on_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.rp_generator_t* }
%struct.rp_generator_t = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_10__*, i64, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i32, i32)* }
%struct.TYPE_7__ = type { i32* }

@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@h2o_httpclient_error_is_eos = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"lib/core/proxy.c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@H2O_SEND_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @on_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_body(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rp_generator_t*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.rp_generator_t*, %struct.rp_generator_t** %7, align 8
  store %struct.rp_generator_t* %8, %struct.rp_generator_t** %5, align 8
  %9 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %10 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %9, i32 0, i32 7
  %11 = call i32 @h2o_timer_unlink(i32* %10)
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %74

14:                                               ; preds = %2
  %15 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %16 = call i32 @copy_stats(%struct.rp_generator_t* %15)
  %17 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %18 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %17, i32 0, i32 5
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %24 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %26 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %25, i32 0, i32 5
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @h2o_buffer_init(i32* %29, i32* @h2o_socket_buffer_prototype)
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** @h2o_httpclient_error_is_eos, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %14
  %35 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %36 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %38 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %43 = call i32 @detach_client(%struct.rp_generator_t* %42)
  br label %44

44:                                               ; preds = %41, %34
  br label %73

45:                                               ; preds = %14
  %46 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %47 = call i32 @detach_client(%struct.rp_generator_t* %46)
  %48 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %49 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %48, i32 0, i32 3
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @h2o_req_log_error(%struct.TYPE_10__* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %54 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %56 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %55, i32 0, i32 3
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_10__*, i32, i32)*, i32 (%struct.TYPE_10__*, i32, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.TYPE_10__*, i32, i32)* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %45
  %62 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %63 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %62, i32 0, i32 3
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_10__*, i32, i32)*, i32 (%struct.TYPE_10__*, i32, i32)** %65, align 8
  %67 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %68 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %67, i32 0, i32 3
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = load i32, i32* @H2O_SEND_STATE_ERROR, align 4
  %71 = call i32 %66(%struct.TYPE_10__* %69, i32 0, i32 %70)
  br label %72

72:                                               ; preds = %61, %45
  br label %73

73:                                               ; preds = %72, %44
  br label %74

74:                                               ; preds = %73, %2
  %75 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %76 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load %struct.rp_generator_t*, %struct.rp_generator_t** %5, align 8
  %82 = call i32 @do_send(%struct.rp_generator_t* %81)
  br label %83

83:                                               ; preds = %80, %74
  ret i32 0
}

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @copy_stats(%struct.rp_generator_t*) #1

declare dso_local i32 @h2o_buffer_init(i32*, i32*) #1

declare dso_local i32 @detach_client(%struct.rp_generator_t*) #1

declare dso_local i32 @h2o_req_log_error(%struct.TYPE_10__*, i8*, i8*, i8*) #1

declare dso_local i32 @do_send(%struct.rp_generator_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
