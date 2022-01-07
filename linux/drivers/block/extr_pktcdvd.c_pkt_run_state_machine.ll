; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_run_state_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_run_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32 }
%struct.packet_data = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"pkt %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"No recovery possible\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*, %struct.packet_data*)* @pkt_run_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_run_state_machine(%struct.pktcdvd_device* %0, %struct.packet_data* %1) #0 {
  %3 = alloca %struct.pktcdvd_device*, align 8
  %4 = alloca %struct.packet_data*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %3, align 8
  store %struct.packet_data* %1, %struct.packet_data** %4, align 8
  %5 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %6 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %7 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i32, %struct.pktcdvd_device*, i8*, ...) @pkt_dbg(i32 2, %struct.pktcdvd_device* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %99, %2
  %11 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %12 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %97 [
    i32 129, label %14
    i32 131, label %36
    i32 128, label %55
    i32 130, label %75
    i32 132, label %89
  ]

14:                                               ; preds = %10
  %15 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %16 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %19 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %24 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %100

28:                                               ; preds = %22, %14
  %29 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %30 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %29, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %32 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %33 = call i32 @pkt_gather_data(%struct.pktcdvd_device* %31, %struct.packet_data* %32)
  %34 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %35 = call i32 @pkt_set_state(%struct.packet_data* %34, i32 131)
  br label %99

36:                                               ; preds = %10
  %37 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %38 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %37, i32 0, i32 2
  %39 = call i32 @atomic_read(i32* %38)
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %100

42:                                               ; preds = %36
  %43 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %44 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %43, i32 0, i32 3
  %45 = call i32 @atomic_read(i32* %44)
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %49 = call i32 @pkt_set_state(%struct.packet_data* %48, i32 130)
  br label %54

50:                                               ; preds = %42
  %51 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %52 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %53 = call i32 @pkt_start_write(%struct.pktcdvd_device* %51, %struct.packet_data* %52)
  br label %54

54:                                               ; preds = %50, %47
  br label %99

55:                                               ; preds = %10
  %56 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %57 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %56, i32 0, i32 2
  %58 = call i32 @atomic_read(i32* %57)
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %100

61:                                               ; preds = %55
  %62 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %63 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %70 = call i32 @pkt_set_state(%struct.packet_data* %69, i32 132)
  br label %74

71:                                               ; preds = %61
  %72 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %73 = call i32 @pkt_set_state(%struct.packet_data* %72, i32 130)
  br label %74

74:                                               ; preds = %71, %68
  br label %99

75:                                               ; preds = %10
  %76 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %77 = call i32 @pkt_start_recovery(%struct.packet_data* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %81 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %82 = call i32 @pkt_start_write(%struct.pktcdvd_device* %80, %struct.packet_data* %81)
  br label %88

83:                                               ; preds = %75
  %84 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %85 = call i32 (i32, %struct.pktcdvd_device*, i8*, ...) @pkt_dbg(i32 2, %struct.pktcdvd_device* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %87 = call i32 @pkt_set_state(%struct.packet_data* %86, i32 132)
  br label %88

88:                                               ; preds = %83, %79
  br label %99

89:                                               ; preds = %10
  %90 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %91 = load %struct.packet_data*, %struct.packet_data** %4, align 8
  %92 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @pkt_finish_packet(%struct.packet_data* %90, i32 %95)
  br label %100

97:                                               ; preds = %10
  %98 = call i32 (...) @BUG()
  br label %99

99:                                               ; preds = %97, %88, %74, %54, %28
  br label %10

100:                                              ; preds = %89, %60, %41, %27
  ret void
}

declare dso_local i32 @pkt_dbg(i32, %struct.pktcdvd_device*, i8*, ...) #1

declare dso_local i32 @pkt_gather_data(%struct.pktcdvd_device*, %struct.packet_data*) #1

declare dso_local i32 @pkt_set_state(%struct.packet_data*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pkt_start_write(%struct.pktcdvd_device*, %struct.packet_data*) #1

declare dso_local i32 @pkt_start_recovery(%struct.packet_data*) #1

declare dso_local i32 @pkt_finish_packet(%struct.packet_data*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
