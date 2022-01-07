; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_ack.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target = type { i32, i32, i64, i32, i32, i32, i64 }
%struct.udp_msg = type { i32 }

@precise_now = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"S->sent: delete message %d\0A\00", align 1
@__S = common dso_local global %struct.udp_target* null, align 8
@START_WINDOW_SIZE = common dso_local global i64 0, align 8
@UDP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_target_ack(%struct.udp_target* %0, i32 %1) #0 {
  %3 = alloca %struct.udp_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udp_msg**, align 8
  %6 = alloca %struct.udp_msg*, align 8
  store %struct.udp_target* %0, %struct.udp_target** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %9 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %86

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %16 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %21 = call i32 @stop_tx_timer(%struct.udp_target* %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %24 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %27 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %34 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = icmp ne i32 %32, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %19
  %39 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %40 = call i32 @start_tx_timer(%struct.udp_target* %39)
  br label %41

41:                                               ; preds = %38, %19
  %42 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %43 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %13
  %45 = load i32, i32* @precise_now, align 4
  %46 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %47 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %49 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = bitcast i32* %4 to i8*
  %52 = call %struct.udp_msg** @tree_lookup_value_udp_msg(i32 %50, i8* %51)
  store %struct.udp_msg** %52, %struct.udp_msg*** %5, align 8
  %53 = load %struct.udp_msg**, %struct.udp_msg*** %5, align 8
  %54 = icmp ne %struct.udp_msg** %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %44
  br label %86

56:                                               ; preds = %44
  %57 = load %struct.udp_msg**, %struct.udp_msg*** %5, align 8
  %58 = load %struct.udp_msg*, %struct.udp_msg** %57, align 8
  store %struct.udp_msg* %58, %struct.udp_msg** %6, align 8
  %59 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %60 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.udp_msg*, %struct.udp_msg** %6, align 8
  %63 = call i32 @tree_delete_udp_msg(i32 %61, %struct.udp_msg* %62)
  %64 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %65 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  store %struct.udp_target* %68, %struct.udp_target** @__S, align 8
  %69 = load %struct.udp_msg*, %struct.udp_msg** %6, align 8
  %70 = call i32 @udp_msg_confirm_free(%struct.udp_msg* %69)
  %71 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %72 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @START_WINDOW_SIZE, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %56
  %77 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %78 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @UDP_WAIT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %85 = call i32 @udp_target_restart_send(%struct.udp_target* %84)
  br label %86

86:                                               ; preds = %12, %55, %83, %76, %56
  ret void
}

declare dso_local i32 @stop_tx_timer(%struct.udp_target*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @start_tx_timer(%struct.udp_target*) #1

declare dso_local %struct.udp_msg** @tree_lookup_value_udp_msg(i32, i8*) #1

declare dso_local i32 @tree_delete_udp_msg(i32, %struct.udp_msg*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @udp_msg_confirm_free(%struct.udp_msg*) #1

declare dso_local i32 @udp_target_restart_send(%struct.udp_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
