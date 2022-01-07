; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_resolve_reverse.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_resolve_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_request = type { i32* }
%struct.evdns_base = type { i32 }
%struct.in_addr = type { i32 }
%struct.request = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"%d.%d.%d.%d.in-addr.arpa\00", align 1
@EVDNS_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Resolve requested for %s (reverse)\00", align 1
@TYPE_PTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evdns_request* @evdns_base_resolve_reverse(%struct.evdns_base* %0, %struct.in_addr* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.evdns_request*, align 8
  %7 = alloca %struct.evdns_base*, align 8
  %8 = alloca %struct.in_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca %struct.evdns_request*, align 8
  %14 = alloca %struct.request*, align 8
  %15 = alloca i32, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %7, align 8
  store %struct.in_addr* %1, %struct.in_addr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %17 = call i32 @EVUTIL_ASSERT(%struct.in_addr* %16)
  %18 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %23 = load i32, i32* %15, align 4
  %24 = and i32 %23, 255
  %25 = sext i32 %24 to i64
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %15, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = sext i32 %29 to i64
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %15, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = sext i32 %34 to i64
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %15, align 4
  %38 = ashr i32 %37, 24
  %39 = and i32 %38, 255
  %40 = sext i32 %39 to i64
  %41 = trunc i64 %40 to i32
  %42 = call i32 @evutil_snprintf(i8* %22, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %31, i32 %36, i32 %41)
  %43 = call %struct.evdns_request* @mm_calloc(i32 1, i32 8)
  store %struct.evdns_request* %43, %struct.evdns_request** %13, align 8
  %44 = load %struct.evdns_request*, %struct.evdns_request** %13, align 8
  %45 = icmp eq %struct.evdns_request* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %5
  store %struct.evdns_request* null, %struct.evdns_request** %6, align 8
  br label %78

47:                                               ; preds = %5
  %48 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %50 = call i32 @log(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %52 = call i32 @EVDNS_LOCK(%struct.evdns_base* %51)
  %53 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %54 = load %struct.evdns_request*, %struct.evdns_request** %13, align 8
  %55 = load i32, i32* @TYPE_PTR, align 4
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = call %struct.request* @request_new(%struct.evdns_base* %53, %struct.evdns_request* %54, i32 %55, i8* %56, i32 %57, i32 %58, i8* %59)
  store %struct.request* %60, %struct.request** %14, align 8
  %61 = load %struct.request*, %struct.request** %14, align 8
  %62 = icmp ne %struct.request* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %47
  %64 = load %struct.request*, %struct.request** %14, align 8
  %65 = call i32 @request_submit(%struct.request* %64)
  br label %66

66:                                               ; preds = %63, %47
  %67 = load %struct.evdns_request*, %struct.evdns_request** %13, align 8
  %68 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.evdns_request*, %struct.evdns_request** %13, align 8
  %73 = call i32 @mm_free(%struct.evdns_request* %72)
  store %struct.evdns_request* null, %struct.evdns_request** %13, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %76 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %75)
  %77 = load %struct.evdns_request*, %struct.evdns_request** %13, align 8
  store %struct.evdns_request* %77, %struct.evdns_request** %6, align 8
  br label %78

78:                                               ; preds = %74, %46
  %79 = load %struct.evdns_request*, %struct.evdns_request** %6, align 8
  ret %struct.evdns_request* %79
}

declare dso_local i32 @EVUTIL_ASSERT(%struct.in_addr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @evutil_snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.evdns_request* @mm_calloc(i32, i32) #1

declare dso_local i32 @log(i32, i8*, i8*) #1

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_base*) #1

declare dso_local %struct.request* @request_new(%struct.evdns_base*, %struct.evdns_request*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @request_submit(%struct.request*) #1

declare dso_local i32 @mm_free(%struct.evdns_request*) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
