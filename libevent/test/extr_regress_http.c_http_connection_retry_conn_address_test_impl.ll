; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_connection_retry_conn_address_test_impl.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_connection_retry_conn_address_test_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evdns_base = type { i32 }

@search_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"127.0.0.1:%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @http_connection_retry_conn_address_test_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_connection_retry_conn_address_test_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.basic_test_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evdns_base*, align 8
  %8 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.basic_test_data*
  store %struct.basic_test_data* %10, %struct.basic_test_data** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.evdns_base* null, %struct.evdns_base** %7, align 8
  %11 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %12 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @search_table, align 4
  %15 = call %struct.evdns_base* @regress_dnsserver(i32 %13, i32* %6, i32 %14)
  %16 = call i32 @tt_assert(%struct.evdns_base* %15)
  %17 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %18 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.evdns_base* @evdns_base_new(i32 %19, i32 0)
  store %struct.evdns_base* %20, %struct.evdns_base** %7, align 8
  %21 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %22 = call i32 @tt_assert(%struct.evdns_base* %21)
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @evutil_snprintf(i8* %23, i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %28 = call i32 @evdns_base_nameserver_ip_add(%struct.evdns_base* %26, i8* %27)
  %29 = load i8*, i8** %3, align 8
  %30 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @http_connection_retry_test_basic(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.evdns_base* %30, i32 %31)
  br label %33

33:                                               ; preds = %2
  %34 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %35 = icmp ne %struct.evdns_base* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %38 = call i32 @evdns_base_free(%struct.evdns_base* %37, i32 0)
  br label %39

39:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @tt_assert(%struct.evdns_base*) #1

declare dso_local %struct.evdns_base* @regress_dnsserver(i32, i32*, i32) #1

declare dso_local %struct.evdns_base* @evdns_base_new(i32, i32) #1

declare dso_local i32 @evutil_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @evdns_base_nameserver_ip_add(%struct.evdns_base*, i8*) #1

declare dso_local i32 @http_connection_retry_test_basic(i8*, i8*, %struct.evdns_base*, i32) #1

declare dso_local i32 @evdns_base_free(%struct.evdns_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
