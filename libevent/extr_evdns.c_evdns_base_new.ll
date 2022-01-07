; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_new.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32*, %struct.TYPE_4__, i64, i64, i64, %struct.event_base*, i32*, i32*, i32, i32* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.event_base = type { i32 }

@EVDNS_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unable to seed random number generator; DNS can't run.\00", align 1
@evdns_getaddrinfo = common dso_local global i32 0, align 4
@evdns_getaddrinfo_cancel = common dso_local global i32 0, align 4
@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4
@EVDNS_BASE_INITIALIZE_NAMESERVERS = common dso_local global i32 0, align 4
@EVDNS_BASE_DISABLE_WHEN_INACTIVE = common dso_local global i32 0, align 4
@EVDNS_BASE_NAMESERVERS_NO_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [100 x i8] c"Unrecognized flag passed to evdns_base_new(). Assuming you meant EVDNS_BASE_INITIALIZE_NAMESERVERS.\00", align 1
@DNS_OPTIONS_ALL = common dso_local global i32 0, align 4
@DNS_OPTION_NAMESERVERS_NO_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"/etc/resolv.conf\00", align 1
@EVDNS_BASE_ALL_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evdns_base* @evdns_base_new(%struct.event_base* %0, i32 %1) #0 {
  %3 = alloca %struct.evdns_base*, align 8
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.evdns_base*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i64 (...) @evutil_secure_rng_init()
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %13 = call i32 @log(i32 %12, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store %struct.evdns_base* null, %struct.evdns_base** %3, align 8
  br label %131

14:                                               ; preds = %2
  %15 = load i32, i32* @evdns_getaddrinfo, align 4
  %16 = call i32 @evutil_set_evdns_getaddrinfo_fn_(i32 %15)
  %17 = load i32, i32* @evdns_getaddrinfo_cancel, align 4
  %18 = call i32 @evutil_set_evdns_getaddrinfo_cancel_fn_(i32 %17)
  %19 = call %struct.evdns_base* @mm_malloc(i32 144)
  store %struct.evdns_base* %19, %struct.evdns_base** %6, align 8
  %20 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %21 = icmp eq %struct.evdns_base* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store %struct.evdns_base* null, %struct.evdns_base** %3, align 8
  br label %131

23:                                               ; preds = %14
  %24 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %25 = call i32 @memset(%struct.evdns_base* %24, i32 0, i32 144)
  %26 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %27 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %26, i32 0, i32 17
  store i32* null, i32** %27, align 8
  %28 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %29 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %28, i32 0, i32 16
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  %32 = call i32 @EVTHREAD_ALLOC_LOCK(i32 %30, i32 %31)
  %33 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %34 = call i32 @EVDNS_LOCK(%struct.evdns_base* %33)
  %35 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %36 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %35, i32 0, i32 15
  store i32* null, i32** %36, align 8
  %37 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %38 = call i32 @evdns_base_set_max_requests_inflight(%struct.evdns_base* %37, i32 64)
  %39 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %40 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %39, i32 0, i32 14
  store i32* null, i32** %40, align 8
  %41 = load %struct.event_base*, %struct.event_base** %4, align 8
  %42 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %43 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %42, i32 0, i32 13
  store %struct.event_base* %41, %struct.event_base** %43, align 8
  %44 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %45 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %44, i32 0, i32 10
  store i64 0, i64* %45, align 8
  %46 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %47 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %46, i32 0, i32 11
  store i64 0, i64* %47, align 8
  %48 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %49 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %48, i32 0, i32 12
  store i64 0, i64* %49, align 8
  %50 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %51 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %50, i32 0, i32 9
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 5, i32* %52, align 8
  %53 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %54 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %57 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %59 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %58, i32 0, i32 1
  store i32 3, i32* %59, align 4
  %60 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %61 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %60, i32 0, i32 2
  store i32 3, i32* %61, align 8
  %62 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %63 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %62, i32 0, i32 8
  store i32* null, i32** %63, align 8
  %64 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %65 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %64, i32 0, i32 3
  store i32 1, i32* %65, align 4
  %66 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %67 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 3, i32* %68, align 8
  %69 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %70 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %73 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 10, i32* %74, align 8
  %75 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %76 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %79 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %78, i32 0, i32 5
  %80 = call i32 @TAILQ_INIT(i32* %79)
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @EVDNS_BASE_INITIALIZE_NAMESERVERS, align 4
  %83 = load i32, i32* @EVDNS_BASE_DISABLE_WHEN_INACTIVE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @EVDNS_BASE_NAMESERVERS_NO_DEFAULT, align 4
  %86 = or i32 %84, %85
  %87 = xor i32 %86, -1
  %88 = and i32 %81, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %23
  %91 = load i32, i32* @EVDNS_BASE_INITIALIZE_NAMESERVERS, align 4
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %93 = call i32 @log(i32 %92, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %23
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @EVDNS_BASE_INITIALIZE_NAMESERVERS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load i32, i32* @DNS_OPTIONS_ALL, align 4
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @EVDNS_BASE_NAMESERVERS_NO_DEFAULT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* @DNS_OPTION_NAMESERVERS_NO_DEFAULT, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %105, %99
  %110 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @evdns_base_resolv_conf_parse(%struct.evdns_base* %110, i32 %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %117 = call i32 @evdns_base_free_and_unlock(%struct.evdns_base* %116, i32 0)
  store %struct.evdns_base* null, %struct.evdns_base** %3, align 8
  br label %131

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %94
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @EVDNS_BASE_DISABLE_WHEN_INACTIVE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %126 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %125, i32 0, i32 4
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %119
  %128 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %129 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %128)
  %130 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  store %struct.evdns_base* %130, %struct.evdns_base** %3, align 8
  br label %131

131:                                              ; preds = %127, %115, %22, %11
  %132 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  ret %struct.evdns_base* %132
}

declare dso_local i64 @evutil_secure_rng_init(...) #1

declare dso_local i32 @log(i32, i8*) #1

declare dso_local i32 @evutil_set_evdns_getaddrinfo_fn_(i32) #1

declare dso_local i32 @evutil_set_evdns_getaddrinfo_cancel_fn_(i32) #1

declare dso_local %struct.evdns_base* @mm_malloc(i32) #1

declare dso_local i32 @memset(%struct.evdns_base*, i32, i32) #1

declare dso_local i32 @EVTHREAD_ALLOC_LOCK(i32, i32) #1

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_base*) #1

declare dso_local i32 @evdns_base_set_max_requests_inflight(%struct.evdns_base*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @evdns_base_resolv_conf_parse(%struct.evdns_base*, i32, i8*) #1

declare dso_local i32 @evdns_base_free_and_unlock(%struct.evdns_base*, i32) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
