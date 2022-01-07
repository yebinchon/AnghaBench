; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_msg_create.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_msg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_msg = type { i32 }
%struct.raw_message = type { i32 }
%struct.udp_target = type { i32, i32 }

@.str = private unnamed_addr constant [75 x i8] c"msg_is_dup: duplicate message %d. S->send_num = %d, S->max_confirmed = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.udp_msg* @msg_create(%struct.raw_message* %0, i32 %1, %struct.udp_target* %2) #0 {
  %4 = alloca %struct.udp_msg*, align 8
  %5 = alloca %struct.raw_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.udp_target*, align 8
  %8 = alloca %struct.udp_msg*, align 8
  store %struct.raw_message* %0, %struct.raw_message** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.udp_target* %2, %struct.udp_target** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = load %struct.udp_target*, %struct.udp_target** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @add_force_confirm(%struct.udp_target* %12, i32 %13)
  %15 = load %struct.udp_target*, %struct.udp_target** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @msg_is_dup(%struct.udp_target* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.udp_target*, %struct.udp_target** %7, align 8
  %22 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.udp_target*, %struct.udp_target** %7, align 8
  %25 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26)
  %28 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %29 = call i32 @rwm_free(%struct.raw_message* %28)
  store %struct.udp_msg* null, %struct.udp_msg** %4, align 8
  br label %40

30:                                               ; preds = %11
  %31 = load %struct.udp_target*, %struct.udp_target** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @add_received(%struct.udp_target* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %3
  %35 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.udp_target*, %struct.udp_target** %7, align 8
  %38 = call %struct.udp_msg* @udp_msg_create(%struct.raw_message* %35, i32 %36, %struct.udp_target* %37)
  store %struct.udp_msg* %38, %struct.udp_msg** %8, align 8
  %39 = load %struct.udp_msg*, %struct.udp_msg** %8, align 8
  store %struct.udp_msg* %39, %struct.udp_msg** %4, align 8
  br label %40

40:                                               ; preds = %34, %19
  %41 = load %struct.udp_msg*, %struct.udp_msg** %4, align 8
  ret %struct.udp_msg* %41
}

declare dso_local i32 @add_force_confirm(%struct.udp_target*, i32) #1

declare dso_local i64 @msg_is_dup(%struct.udp_target*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rwm_free(%struct.raw_message*) #1

declare dso_local i32 @add_received(%struct.udp_target*, i32) #1

declare dso_local %struct.udp_msg* @udp_msg_create(%struct.raw_message*, i32, %struct.udp_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
