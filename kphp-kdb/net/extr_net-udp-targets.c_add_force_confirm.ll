; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_add_force_confirm.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_add_force_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@START_WINDOW_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_force_confirm(%struct.udp_target* %0, i32 %1) #0 {
  %3 = alloca %struct.udp_target*, align 8
  %4 = alloca i32, align 4
  store %struct.udp_target* %0, %struct.udp_target** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %6 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %12 = call i32 @start_confirm_timer(%struct.udp_target* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %15 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @tree_lookup_int(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %13
  %21 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %22 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (...) @lrand48()
  %26 = call i32 @tree_insert_int(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %28 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %30 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %34 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @START_WINDOW_SIZE, align 4
  %37 = sdiv i32 %36, 2000
  %38 = icmp sge i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %20
  %40 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %41 = call i32 @udp_confirms_send(%struct.udp_target* %40)
  br label %42

42:                                               ; preds = %39, %20
  br label %43

43:                                               ; preds = %42, %13
  ret void
}

declare dso_local i32 @start_confirm_timer(%struct.udp_target*) #1

declare dso_local i32 @tree_lookup_int(i32, i32) #1

declare dso_local i32 @tree_insert_int(i32, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @udp_confirms_send(%struct.udp_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
