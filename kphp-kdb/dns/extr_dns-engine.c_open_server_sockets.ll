; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-engine.c_open_server_sockets.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-engine.c_open_server_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@udp_sfd = common dso_local global i64 0, align 8
@port = common dso_local global i32 0, align 4
@settings_addr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@backlog = common dso_local global i32 0, align 4
@SM_UDP = common dso_local global i64 0, align 8
@enable_ipv6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"cannot open UDP server socket at port %d: %m\0A\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"created listening udp socket at %s:%d, fd=%d\0A\00", align 1
@tcp_sfd = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"cannot open TCP server socket at port %d: %m\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @open_server_sockets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_server_sockets() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = load i64, i64* @udp_sfd, align 8
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %4, label %29

4:                                                ; preds = %0
  %5 = load i32, i32* @port, align 4
  %6 = load i32, i32* @backlog, align 4
  %7 = load i64, i64* @SM_UDP, align 8
  %8 = load i64, i64* @enable_ipv6, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings_addr, i32 0, i32 0), align 4
  %11 = call i64 @server_socket(i32 %5, i32 %10, i32 %6, i64 %9)
  store i64 %11, i64* @udp_sfd, align 8
  %12 = load i64, i64* @udp_sfd, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* @port, align 4
  %16 = call i32 @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %4
  %19 = load i64, i64* @verbosity, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings_addr, i32 0, i32 0), align 4
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %24 = call i8* @conv_addr(i32 %22, i8* %23)
  %25 = load i32, i32* @port, align 4
  %26 = load i64, i64* @udp_sfd, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %25, i64 %26)
  br label %28

28:                                               ; preds = %21, %18
  br label %29

29:                                               ; preds = %28, %0
  %30 = load i64, i64* @tcp_sfd, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load i32, i32* @port, align 4
  %34 = load i32, i32* @backlog, align 4
  %35 = load i64, i64* @enable_ipv6, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings_addr, i32 0, i32 0), align 4
  %37 = call i64 @server_socket(i32 %33, i32 %36, i32 %34, i64 %35)
  store i64 %37, i64* @tcp_sfd, align 8
  %38 = load i64, i64* @tcp_sfd, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @port, align 4
  %42 = call i32 @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %29
  ret void
}

declare dso_local i64 @server_socket(i32, i32, i32, i64) #1

declare dso_local i32 @kprintf(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, i8*, i32, i64) #1

declare dso_local i8* @conv_addr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
