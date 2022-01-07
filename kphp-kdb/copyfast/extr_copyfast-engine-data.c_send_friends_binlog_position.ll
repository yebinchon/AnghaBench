; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_send_friends_binlog_position.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_send_friends_binlog_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.relative = type { %struct.relative*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.connection = type { i32 }

@RELATIVES = common dso_local global %struct.relative zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_friends_binlog_position() #0 {
  %1 = alloca %struct.relative*, align 8
  %2 = alloca %struct.connection*, align 8
  %3 = load %struct.relative*, %struct.relative** getelementptr inbounds (%struct.relative, %struct.relative* @RELATIVES, i32 0, i32 0), align 8
  store %struct.relative* %3, %struct.relative** %1, align 8
  br label %4

4:                                                ; preds = %19, %0
  %5 = load %struct.relative*, %struct.relative** %1, align 8
  %6 = icmp ne %struct.relative* %5, @RELATIVES
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = load %struct.relative*, %struct.relative** %1, align 8
  %9 = call %struct.connection* @get_relative_connection(%struct.relative* %8)
  store %struct.connection* %9, %struct.connection** %2, align 8
  %10 = load %struct.connection*, %struct.connection** %2, align 8
  %11 = icmp ne %struct.connection* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load %struct.connection*, %struct.connection** %2, align 8
  %14 = load %struct.relative*, %struct.relative** %1, align 8
  %15 = getelementptr inbounds %struct.relative, %struct.relative* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @rpc_send_binlog_info(%struct.connection* %13, i32 %17)
  br label %19

19:                                               ; preds = %12, %7
  %20 = load %struct.relative*, %struct.relative** %1, align 8
  %21 = getelementptr inbounds %struct.relative, %struct.relative* %20, i32 0, i32 0
  %22 = load %struct.relative*, %struct.relative** %21, align 8
  store %struct.relative* %22, %struct.relative** %1, align 8
  br label %4

23:                                               ; preds = %4
  ret void
}

declare dso_local %struct.connection* @get_relative_connection(%struct.relative*) #1

declare dso_local i32 @rpc_send_binlog_info(%struct.connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
