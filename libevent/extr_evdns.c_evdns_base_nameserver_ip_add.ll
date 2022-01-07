; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_nameserver_ip_add.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_nameserver_ip_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@EVDNS_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unable to parse nameserver address %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdns_base_nameserver_ip_add(%struct.evdns_base* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evdns_base*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 4, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  %12 = call i64 @evutil_parse_sockaddr_port(i8* %10, %struct.sockaddr* %11, i32* %8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @log(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 4, i32* %3, align 4
  br label %36

18:                                               ; preds = %2
  %19 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  store %struct.sockaddr* %19, %struct.sockaddr** %7, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %21 = call i64 @sockaddr_getport(%struct.sockaddr* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %25 = call i32 @sockaddr_setport(%struct.sockaddr* %24, i32 53)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %28 = call i32 @EVDNS_LOCK(%struct.evdns_base* %27)
  %29 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @evdns_nameserver_add_impl_(%struct.evdns_base* %29, %struct.sockaddr* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %34 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %26, %14
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @evutil_parse_sockaddr_port(i8*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @log(i32, i8*, i8*) #1

declare dso_local i64 @sockaddr_getport(%struct.sockaddr*) #1

declare dso_local i32 @sockaddr_setport(%struct.sockaddr*, i32) #1

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_base*) #1

declare dso_local i32 @evdns_nameserver_add_impl_(%struct.evdns_base*, %struct.sockaddr*, i32) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
