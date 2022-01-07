; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_track.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_qos = type { i32 }
%struct.request = type { i32 }
%struct.bio = type { i32 }
%struct.rq_wb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_qos*, %struct.request*, %struct.bio*)* @wbt_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbt_track(%struct.rq_qos* %0, %struct.request* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.rq_qos*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.rq_wb*, align 8
  store %struct.rq_qos* %0, %struct.rq_qos** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  %8 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %9 = call %struct.rq_wb* @RQWB(%struct.rq_qos* %8)
  store %struct.rq_wb* %9, %struct.rq_wb** %7, align 8
  %10 = load %struct.rq_wb*, %struct.rq_wb** %7, align 8
  %11 = load %struct.bio*, %struct.bio** %6, align 8
  %12 = call i32 @bio_to_wbt_flags(%struct.rq_wb* %10, %struct.bio* %11)
  %13 = load %struct.request*, %struct.request** %5, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  ret void
}

declare dso_local %struct.rq_wb* @RQWB(%struct.rq_qos*) #1

declare dso_local i32 @bio_to_wbt_flags(%struct.rq_wb*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
