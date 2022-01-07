; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_set_choose_target.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_set_choose_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target = type { i32 }
%struct.udp_target_set = type { i32, %struct.udp_target*, %struct.udp_target* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.udp_target* @udp_target_set_choose_target(%struct.udp_target_set* %0) #0 {
  %2 = alloca %struct.udp_target*, align 8
  %3 = alloca %struct.udp_target_set*, align 8
  store %struct.udp_target_set* %0, %struct.udp_target_set** %3, align 8
  %4 = load %struct.udp_target_set*, %struct.udp_target_set** %3, align 8
  %5 = call i32 @assert(%struct.udp_target_set* %4)
  %6 = load %struct.udp_target_set*, %struct.udp_target_set** %3, align 8
  %7 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %21 [
    i32 0, label %9
    i32 1, label %10
    i32 2, label %13
    i32 3, label %17
  ]

9:                                                ; preds = %1
  store %struct.udp_target* null, %struct.udp_target** %2, align 8
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.udp_target_set*, %struct.udp_target_set** %3, align 8
  %12 = call i32 @udp_target_set_expand(%struct.udp_target_set* %11)
  br label %13

13:                                               ; preds = %1, %10
  %14 = load %struct.udp_target_set*, %struct.udp_target_set** %3, align 8
  %15 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %14, i32 0, i32 2
  %16 = load %struct.udp_target*, %struct.udp_target** %15, align 8
  store %struct.udp_target* %16, %struct.udp_target** %2, align 8
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.udp_target_set*, %struct.udp_target_set** %3, align 8
  %19 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %18, i32 0, i32 1
  %20 = load %struct.udp_target*, %struct.udp_target** %19, align 8
  store %struct.udp_target* %20, %struct.udp_target** %2, align 8
  br label %23

21:                                               ; preds = %1
  %22 = call i32 @assert(%struct.udp_target_set* null)
  store %struct.udp_target* null, %struct.udp_target** %2, align 8
  br label %23

23:                                               ; preds = %21, %17, %13, %9
  %24 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  ret %struct.udp_target* %24
}

declare dso_local i32 @assert(%struct.udp_target_set*) #1

declare dso_local i32 @udp_target_set_expand(%struct.udp_target_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
