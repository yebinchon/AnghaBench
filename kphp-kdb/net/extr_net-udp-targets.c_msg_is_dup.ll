; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_msg_is_dup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_msg_is_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msg_is_dup(%struct.udp_target* %0, i32 %1) #0 {
  %3 = alloca %struct.udp_target*, align 8
  %4 = alloca i32, align 4
  store %struct.udp_target* %0, %struct.udp_target** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %7 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %5, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %12 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @tree_lookup_int(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi i1 [ true, %2 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i64 @tree_lookup_int(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
