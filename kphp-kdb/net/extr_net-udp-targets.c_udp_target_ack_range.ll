; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_ack_range.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_ack_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target = type { i32, i32, i64, i32, %struct.tree_udp_msg*, i32, i64 }
%struct.tree_udp_msg = type { i32 }

@precise_now = common dso_local global i32 0, align 4
@__S = common dso_local global %struct.udp_target* null, align 8
@udp_msg_confirm_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"S->sent: delete messages in range [%d, %d]\0A\00", align 1
@START_WINDOW_SIZE = common dso_local global i64 0, align 8
@UDP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_target_ack_range(%struct.udp_target* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.udp_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tree_udp_msg*, align 8
  %8 = alloca %struct.tree_udp_msg*, align 8
  %9 = alloca %struct.tree_udp_msg*, align 8
  %10 = alloca %struct.tree_udp_msg*, align 8
  store %struct.udp_target* %0, %struct.udp_target** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %13 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %91

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %20 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %17
  %24 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %25 = call i32 @stop_tx_timer(%struct.udp_target* %24)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %28 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %31 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %38 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = icmp ne i32 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %44 = call i32 @start_tx_timer(%struct.udp_target* %43)
  br label %45

45:                                               ; preds = %42, %23
  %46 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %47 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %17
  %49 = load i32, i32* @precise_now, align 4
  %50 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %51 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %53 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %52, i32 0, i32 4
  %54 = load %struct.tree_udp_msg*, %struct.tree_udp_msg** %53, align 8
  %55 = bitcast i32* %6 to i8*
  %56 = call i32 @tree_split_udp_msg(%struct.tree_udp_msg** %9, %struct.tree_udp_msg** %8, %struct.tree_udp_msg* %54, i8* %55)
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  %59 = load %struct.tree_udp_msg*, %struct.tree_udp_msg** %9, align 8
  %60 = bitcast i32* %5 to i8*
  %61 = call i32 @tree_split_udp_msg(%struct.tree_udp_msg** %7, %struct.tree_udp_msg** %10, %struct.tree_udp_msg* %59, i8* %60)
  %62 = load %struct.tree_udp_msg*, %struct.tree_udp_msg** %7, align 8
  %63 = load %struct.tree_udp_msg*, %struct.tree_udp_msg** %8, align 8
  %64 = call %struct.tree_udp_msg* @tree_merge_udp_msg(%struct.tree_udp_msg* %62, %struct.tree_udp_msg* %63)
  %65 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %66 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %65, i32 0, i32 4
  store %struct.tree_udp_msg* %64, %struct.tree_udp_msg** %66, align 8
  %67 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  store %struct.udp_target* %67, %struct.udp_target** @__S, align 8
  %68 = load %struct.tree_udp_msg*, %struct.tree_udp_msg** %10, align 8
  %69 = load i32, i32* @udp_msg_confirm_free, align 4
  %70 = call i32 @tree_act_udp_msg(%struct.tree_udp_msg* %68, i32 %69)
  %71 = load %struct.tree_udp_msg*, %struct.tree_udp_msg** %10, align 8
  %72 = call i32 @tree_clear_udp_msg(%struct.tree_udp_msg* %71)
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %77 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @START_WINDOW_SIZE, align 8
  %80 = icmp sle i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %48
  %82 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %83 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @UDP_WAIT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %90 = call i32 @udp_target_restart_send(%struct.udp_target* %89)
  br label %91

91:                                               ; preds = %16, %88, %81, %48
  ret void
}

declare dso_local i32 @stop_tx_timer(%struct.udp_target*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @start_tx_timer(%struct.udp_target*) #1

declare dso_local i32 @tree_split_udp_msg(%struct.tree_udp_msg**, %struct.tree_udp_msg**, %struct.tree_udp_msg*, i8*) #1

declare dso_local %struct.tree_udp_msg* @tree_merge_udp_msg(%struct.tree_udp_msg*, %struct.tree_udp_msg*) #1

declare dso_local i32 @tree_act_udp_msg(%struct.tree_udp_msg*, i32) #1

declare dso_local i32 @tree_clear_udp_msg(%struct.tree_udp_msg*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @udp_target_restart_send(%struct.udp_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
