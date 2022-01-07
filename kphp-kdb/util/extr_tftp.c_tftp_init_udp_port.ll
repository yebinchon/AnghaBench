; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_tftp_init_udp_port.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_tftp_init_udp_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, i8*, i32*, i32 }

@MAX_EVENTS = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_PKTINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"setsockopt for %d failed: %m\0A\00", align 1
@SM_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_RECVPKTINFO = common dso_local global i32 0, align 4
@U_IPV6 = common dso_local global i32 0, align 4
@Events = common dso_local global i64 0, align 8
@server_receive_udp = common dso_local global i32 0, align 4
@EVT_LEVEL = common dso_local global i32 0, align 4
@EVT_READ = common dso_local global i32 0, align 4
@EVT_SPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32*, i8*, i32)* @tftp_init_udp_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tftp_init_udp_port(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32*, i32** %11, align 8
  %16 = call i64 @check_udp_functions(i32* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %100

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @MAX_EVENTS, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  store i32 1, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @IPPROTO_IP, align 4
  %32 = load i32, i32* @IP_PKTINFO, align 4
  %33 = call i64 @setsockopt(i32 %30, i32 %31, i32 %32, i32* %14, i32 4)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @kprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %26
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @SM_IPV6, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @IPPROTO_IPV6, align 4
  %46 = load i32, i32* @IPV6_RECVPKTINFO, align 4
  %47 = call i64 @setsockopt(i32 %44, i32 %45, i32 %46, i32* %14, i32 4)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @kprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %43, %38
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @SM_IPV6, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @U_IPV6, align 4
  br label %64

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 5
  store i32 %65, i32* %68, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  store i32* %69, i32** %72, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store i8* %73, i8** %76, align 8
  %77 = load i64, i64* @Events, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store i64 %80, i64* %83, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @server_receive_udp, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @epoll_sethandler(i32 %88, i32 -5, i32 %89, %struct.TYPE_5__* %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @EVT_LEVEL, align 4
  %95 = load i32, i32* @EVT_READ, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @EVT_SPEC, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @epoll_insert(i32 %93, i32 %98)
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %64, %18
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i64 @check_udp_functions(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @kprintf(i8*, i32) #1

declare dso_local i32 @epoll_sethandler(i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @epoll_insert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
