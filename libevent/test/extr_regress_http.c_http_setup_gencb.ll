; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_setup_gencb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_setup_gencb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { i32 }
%struct.event_base = type opaque
%struct.evhttp_request = type opaque
%struct.evhttp_request.0 = type opaque

@ext_method_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@http_basic_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"/test nonconformant\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/timeout\00", align 1
@http_timeout_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"/large\00", align 1
@http_large_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"/chunked\00", align 1
@http_chunked_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"/streamed\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"/postit\00", align 1
@http_post_cb = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"/putit\00", align 1
@http_put_cb = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"/deleteit\00", align 1
@http_genmethod_cb = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"/propfind\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"/proppatch\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"/mkcol\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"/lockit\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"/unlockit\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"/copyit\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"/moveit\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"/custom\00", align 1
@http_custom_cb = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"/delay\00", align 1
@http_delay_cb = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"/largedelay\00", align 1
@http_large_delay_cb = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"/badrequest\00", align 1
@http_badreq_cb = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c"/oncomplete\00", align 1
@http_on_complete_cb = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@http_dispatcher_cb = common dso_local global i32 0, align 4
@HTTP_BIND_SSL = common dso_local global i32 0, align 4
@https_bev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evhttp* (i32*, %struct.event_base*, i32, void (%struct.evhttp_request*, i8*)*, i8*)* @http_setup_gencb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evhttp* @http_setup_gencb(i32* %0, %struct.event_base* %1, i32 %2, void (%struct.evhttp_request*, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.evhttp*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.event_base*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.evhttp_request*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.evhttp*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.event_base* %1, %struct.event_base** %8, align 8
  store i32 %2, i32* %9, align 4
  store void (%struct.evhttp_request*, i8*)* %3, void (%struct.evhttp_request*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.event_base*, %struct.event_base** %8, align 8
  %14 = bitcast %struct.event_base* %13 to %struct.evhttp*
  %15 = call %struct.evhttp* @evhttp_new(%struct.evhttp* %14)
  store %struct.evhttp* %15, %struct.evhttp** %12, align 8
  %16 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @http_bind(%struct.evhttp* %16, i32* %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store %struct.evhttp* null, %struct.evhttp** %6, align 8
  br label %139

22:                                               ; preds = %5
  %23 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %24 = load void (%struct.evhttp_request*, i8*)*, void (%struct.evhttp_request*, i8*)** %10, align 8
  %25 = bitcast void (%struct.evhttp_request*, i8*)* %24 to void (%struct.evhttp_request.0*, i8*)*
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @evhttp_set_gencb(%struct.evhttp* %23, void (%struct.evhttp_request.0*, i8*)* %25, i8* %26)
  %28 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %29 = load i32, i32* @ext_method_cb, align 4
  %30 = call i32 @evhttp_set_ext_method_cmp(%struct.evhttp* %28, i32 %29)
  %31 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %32 = load i32, i32* @http_basic_cb, align 4
  %33 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %34 = call i32 @evhttp_set_cb(%struct.evhttp* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %32, %struct.evhttp* %33)
  %35 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %36 = load i32, i32* @http_basic_cb, align 4
  %37 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %38 = call i32 @evhttp_set_cb(%struct.evhttp* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %36, %struct.evhttp* %37)
  %39 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %40 = load i32, i32* @http_timeout_cb, align 4
  %41 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %42 = call i32 @evhttp_set_cb(%struct.evhttp* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %40, %struct.evhttp* %41)
  %43 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %44 = load i32, i32* @http_large_cb, align 4
  %45 = load %struct.event_base*, %struct.event_base** %8, align 8
  %46 = bitcast %struct.event_base* %45 to %struct.evhttp*
  %47 = call i32 @evhttp_set_cb(%struct.evhttp* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %44, %struct.evhttp* %46)
  %48 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %49 = load i32, i32* @http_chunked_cb, align 4
  %50 = load %struct.event_base*, %struct.event_base** %8, align 8
  %51 = bitcast %struct.event_base* %50 to %struct.evhttp*
  %52 = call i32 @evhttp_set_cb(%struct.evhttp* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %49, %struct.evhttp* %51)
  %53 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %54 = load i32, i32* @http_chunked_cb, align 4
  %55 = load %struct.event_base*, %struct.event_base** %8, align 8
  %56 = bitcast %struct.event_base* %55 to %struct.evhttp*
  %57 = call i32 @evhttp_set_cb(%struct.evhttp* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %54, %struct.evhttp* %56)
  %58 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %59 = load i32, i32* @http_post_cb, align 4
  %60 = load %struct.event_base*, %struct.event_base** %8, align 8
  %61 = bitcast %struct.event_base* %60 to %struct.evhttp*
  %62 = call i32 @evhttp_set_cb(%struct.evhttp* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %59, %struct.evhttp* %61)
  %63 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %64 = load i32, i32* @http_put_cb, align 4
  %65 = load %struct.event_base*, %struct.event_base** %8, align 8
  %66 = bitcast %struct.event_base* %65 to %struct.evhttp*
  %67 = call i32 @evhttp_set_cb(%struct.evhttp* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %64, %struct.evhttp* %66)
  %68 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %69 = load i32, i32* @http_genmethod_cb, align 4
  %70 = load %struct.event_base*, %struct.event_base** %8, align 8
  %71 = bitcast %struct.event_base* %70 to %struct.evhttp*
  %72 = call i32 @evhttp_set_cb(%struct.evhttp* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %69, %struct.evhttp* %71)
  %73 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %74 = load i32, i32* @http_genmethod_cb, align 4
  %75 = load %struct.event_base*, %struct.event_base** %8, align 8
  %76 = bitcast %struct.event_base* %75 to %struct.evhttp*
  %77 = call i32 @evhttp_set_cb(%struct.evhttp* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %74, %struct.evhttp* %76)
  %78 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %79 = load i32, i32* @http_genmethod_cb, align 4
  %80 = load %struct.event_base*, %struct.event_base** %8, align 8
  %81 = bitcast %struct.event_base* %80 to %struct.evhttp*
  %82 = call i32 @evhttp_set_cb(%struct.evhttp* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %79, %struct.evhttp* %81)
  %83 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %84 = load i32, i32* @http_genmethod_cb, align 4
  %85 = load %struct.event_base*, %struct.event_base** %8, align 8
  %86 = bitcast %struct.event_base* %85 to %struct.evhttp*
  %87 = call i32 @evhttp_set_cb(%struct.evhttp* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %84, %struct.evhttp* %86)
  %88 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %89 = load i32, i32* @http_genmethod_cb, align 4
  %90 = load %struct.event_base*, %struct.event_base** %8, align 8
  %91 = bitcast %struct.event_base* %90 to %struct.evhttp*
  %92 = call i32 @evhttp_set_cb(%struct.evhttp* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %89, %struct.evhttp* %91)
  %93 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %94 = load i32, i32* @http_genmethod_cb, align 4
  %95 = load %struct.event_base*, %struct.event_base** %8, align 8
  %96 = bitcast %struct.event_base* %95 to %struct.evhttp*
  %97 = call i32 @evhttp_set_cb(%struct.evhttp* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %94, %struct.evhttp* %96)
  %98 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %99 = load i32, i32* @http_genmethod_cb, align 4
  %100 = load %struct.event_base*, %struct.event_base** %8, align 8
  %101 = bitcast %struct.event_base* %100 to %struct.evhttp*
  %102 = call i32 @evhttp_set_cb(%struct.evhttp* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %99, %struct.evhttp* %101)
  %103 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %104 = load i32, i32* @http_genmethod_cb, align 4
  %105 = load %struct.event_base*, %struct.event_base** %8, align 8
  %106 = bitcast %struct.event_base* %105 to %struct.evhttp*
  %107 = call i32 @evhttp_set_cb(%struct.evhttp* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %104, %struct.evhttp* %106)
  %108 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %109 = load i32, i32* @http_custom_cb, align 4
  %110 = load %struct.event_base*, %struct.event_base** %8, align 8
  %111 = bitcast %struct.event_base* %110 to %struct.evhttp*
  %112 = call i32 @evhttp_set_cb(%struct.evhttp* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %109, %struct.evhttp* %111)
  %113 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %114 = load i32, i32* @http_delay_cb, align 4
  %115 = load %struct.event_base*, %struct.event_base** %8, align 8
  %116 = bitcast %struct.event_base* %115 to %struct.evhttp*
  %117 = call i32 @evhttp_set_cb(%struct.evhttp* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %114, %struct.evhttp* %116)
  %118 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %119 = load i32, i32* @http_large_delay_cb, align 4
  %120 = load %struct.event_base*, %struct.event_base** %8, align 8
  %121 = bitcast %struct.event_base* %120 to %struct.evhttp*
  %122 = call i32 @evhttp_set_cb(%struct.evhttp* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %119, %struct.evhttp* %121)
  %123 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %124 = load i32, i32* @http_badreq_cb, align 4
  %125 = load %struct.event_base*, %struct.event_base** %8, align 8
  %126 = bitcast %struct.event_base* %125 to %struct.evhttp*
  %127 = call i32 @evhttp_set_cb(%struct.evhttp* %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %124, %struct.evhttp* %126)
  %128 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %129 = load i32, i32* @http_on_complete_cb, align 4
  %130 = load %struct.event_base*, %struct.event_base** %8, align 8
  %131 = bitcast %struct.event_base* %130 to %struct.evhttp*
  %132 = call i32 @evhttp_set_cb(%struct.evhttp* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %129, %struct.evhttp* %131)
  %133 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %134 = load i32, i32* @http_dispatcher_cb, align 4
  %135 = load %struct.event_base*, %struct.event_base** %8, align 8
  %136 = bitcast %struct.event_base* %135 to %struct.evhttp*
  %137 = call i32 @evhttp_set_cb(%struct.evhttp* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 %134, %struct.evhttp* %136)
  %138 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  store %struct.evhttp* %138, %struct.evhttp** %6, align 8
  br label %139

139:                                              ; preds = %22, %21
  %140 = load %struct.evhttp*, %struct.evhttp** %6, align 8
  ret %struct.evhttp* %140
}

declare dso_local %struct.evhttp* @evhttp_new(%struct.evhttp*) #1

declare dso_local i64 @http_bind(%struct.evhttp*, i32*, i32) #1

declare dso_local i32 @evhttp_set_gencb(%struct.evhttp*, void (%struct.evhttp_request.0*, i8*)*, i8*) #1

declare dso_local i32 @evhttp_set_ext_method_cmp(%struct.evhttp*, i32) #1

declare dso_local i32 @evhttp_set_cb(%struct.evhttp*, i8*, i32, %struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
