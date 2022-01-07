; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_execute_handshake_reject.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_execute_handshake_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32 }
%struct.rpc_handshake_reject = type { i32 }
%struct.relative = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"rpc_execute_handshake_reject: remote_id = %lld, len = %d\0A\00", align 1
@STATS = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_execute_handshake_reject(%struct.connection* %0, %struct.rpc_handshake_reject* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.rpc_handshake_reject*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.relative*, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store %struct.rpc_handshake_reject* %1, %struct.rpc_handshake_reject** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rpc_handshake_reject*, %struct.rpc_handshake_reject** %6, align 8
  %10 = getelementptr inbounds %struct.rpc_handshake_reject, %struct.rpc_handshake_reject* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.rpc_handshake_reject*, %struct.rpc_handshake_reject** %6, align 8
  %25 = getelementptr inbounds %struct.rpc_handshake_reject, %struct.rpc_handshake_reject* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_relative_by_id(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %18
  %30 = load %struct.connection*, %struct.connection** %5, align 8
  %31 = call %struct.relative* @get_relative_by_connection(%struct.connection* %30)
  store %struct.relative* %31, %struct.relative** %8, align 8
  %32 = load %struct.relative*, %struct.relative** %8, align 8
  %33 = icmp ne %struct.relative* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.relative*, %struct.relative** %8, align 8
  %36 = call i32 @delete_relative(%struct.relative* %35, i32 1)
  br label %37

37:                                               ; preds = %34, %29
  store i32 0, i32* %4, align 4
  br label %41

38:                                               ; preds = %18
  %39 = load %struct.connection*, %struct.connection** %5, align 8
  %40 = call i32 @rpc_send_handshake(%struct.connection* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %37, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @get_relative_by_id(i32) #1

declare dso_local %struct.relative* @get_relative_by_connection(%struct.connection*) #1

declare dso_local i32 @delete_relative(%struct.relative*, i32) #1

declare dso_local i32 @rpc_send_handshake(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
