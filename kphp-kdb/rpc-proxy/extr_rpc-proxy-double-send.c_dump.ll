; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-double-send.c_dump.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-double-send.c_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.double_receive = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"DUMP: PID: %u.%d.%d.%d, qid = %lld, %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump(%struct.double_receive* %0) #0 {
  %2 = alloca %struct.double_receive*, align 8
  store %struct.double_receive* %0, %struct.double_receive** %2, align 8
  %3 = load %struct.double_receive*, %struct.double_receive** %2, align 8
  %4 = getelementptr inbounds %struct.double_receive, %struct.double_receive* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.double_receive*, %struct.double_receive** %2, align 8
  %8 = getelementptr inbounds %struct.double_receive, %struct.double_receive* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.double_receive*, %struct.double_receive** %2, align 8
  %12 = getelementptr inbounds %struct.double_receive, %struct.double_receive* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.double_receive*, %struct.double_receive** %2, align 8
  %16 = getelementptr inbounds %struct.double_receive, %struct.double_receive* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.double_receive*, %struct.double_receive** %2, align 8
  %20 = getelementptr inbounds %struct.double_receive, %struct.double_receive* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.double_receive*, %struct.double_receive** %2, align 8
  %23 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %10, i32 %14, i32 %18, i32 %21, %struct.double_receive* %22)
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32, i32, i32, %struct.double_receive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
