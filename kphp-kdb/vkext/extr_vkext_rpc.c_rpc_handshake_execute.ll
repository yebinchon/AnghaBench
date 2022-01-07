; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_handshake_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_handshake_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.rpc_server = type { i64, i64, i32 }
%struct.rpc_handshake = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"Bad handshake packet\00", align 1
@PID = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Bad pid in handshake packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_server*, i8*, i32)* @rpc_handshake_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_handshake_execute(%struct.rpc_server* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_server*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_handshake*, align 8
  store %struct.rpc_server* %0, %struct.rpc_server** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ne i64 %10, 32
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %14 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %3
  %18 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %19 = call i32 @rpc_server_seterror(%struct.rpc_server* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 -1, i32* %4, align 4
  br label %83

20:                                               ; preds = %12
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.rpc_handshake*
  store %struct.rpc_handshake* %22, %struct.rpc_handshake** %8, align 8
  %23 = load %struct.rpc_handshake*, %struct.rpc_handshake** %8, align 8
  %24 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PID, i32 0, i32 0), align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %79, label %29

29:                                               ; preds = %20
  %30 = load %struct.rpc_handshake*, %struct.rpc_handshake** %8, align 8
  %31 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PID, i32 0, i32 1), align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.rpc_handshake*, %struct.rpc_handshake** %8, align 8
  %38 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @PID, i32 0, i32 1), align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %79, label %45

45:                                               ; preds = %42, %36, %29
  %46 = load %struct.rpc_handshake*, %struct.rpc_handshake** %8, align 8
  %47 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %51 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %79, label %54

54:                                               ; preds = %45
  %55 = load %struct.rpc_handshake*, %struct.rpc_handshake** %8, align 8
  %56 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %60 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %54
  %64 = load %struct.rpc_handshake*, %struct.rpc_handshake** %8, align 8
  %65 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %71 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %76 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 2130706433
  br i1 %78, label %79, label %82

79:                                               ; preds = %74, %45, %42, %20
  %80 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %81 = call i32 @rpc_server_seterror(%struct.rpc_server* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 -1, i32* %4, align 4
  br label %83

82:                                               ; preds = %74, %69, %63, %54
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %79, %17
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @rpc_server_seterror(%struct.rpc_server*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
