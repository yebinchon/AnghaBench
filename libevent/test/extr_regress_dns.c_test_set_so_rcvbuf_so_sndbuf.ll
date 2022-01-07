; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_dns.c_test_set_so_rcvbuf_so_sndbuf.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_dns.c_test_set_so_rcvbuf_so_sndbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evdns_base = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"so-rcvbuf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"10240\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"so-sndbuf\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_set_so_rcvbuf_so_sndbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_set_so_rcvbuf_so_sndbuf(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca %struct.evdns_base*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.basic_test_data*
  store %struct.basic_test_data* %6, %struct.basic_test_data** %3, align 8
  %7 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %8 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.evdns_base* @evdns_base_new(i32 %9, i32 0)
  store %struct.evdns_base* %10, %struct.evdns_base** %4, align 8
  %11 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %12 = ptrtoint %struct.evdns_base* %11 to i32
  %13 = call i32 @tt_assert(i32 %12)
  %14 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %15 = call i32 @evdns_base_set_option(%struct.evdns_base* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @tt_assert(i32 %18)
  %20 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %21 = call i32 @evdns_base_set_option(%struct.evdns_base* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @tt_assert(i32 %24)
  %26 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %27 = call i32 @evdns_base_nameserver_ip_add(%struct.evdns_base* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @tt_assert(i32 %30)
  br label %32

32:                                               ; preds = %1
  %33 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %34 = icmp ne %struct.evdns_base* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %37 = call i32 @evdns_base_free(%struct.evdns_base* %36, i32 0)
  br label %38

38:                                               ; preds = %35, %32
  ret void
}

declare dso_local %struct.evdns_base* @evdns_base_new(i32, i32) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @evdns_base_set_option(%struct.evdns_base*, i8*, i8*) #1

declare dso_local i32 @evdns_base_nameserver_ip_add(%struct.evdns_base*, i8*) #1

declare dso_local i32 @evdns_base_free(%struct.evdns_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
