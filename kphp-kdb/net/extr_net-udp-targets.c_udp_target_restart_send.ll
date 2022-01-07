; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_restart_send.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_restart_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target = type { i32, i64, i32, i64 }
%struct.tmp_msg = type { i64, %struct.udp_message* }
%struct.udp_message = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.tmp_msg }

@UDP_WAIT = common dso_local global i32 0, align 4
@udp_drop_probability = common dso_local global i64 0, align 8
@udp_packets_sent = common dso_local global i32 0, align 4
@udp_data_sent = common dso_local global i32 0, align 4
@udp_data_body_sent = common dso_local global i32 0, align 4
@STOP_WINDOW_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_target_restart_send(%struct.udp_target* %0) #0 {
  %2 = alloca %struct.udp_target*, align 8
  %3 = alloca %struct.tmp_msg, align 8
  %4 = alloca %struct.udp_message*, align 8
  store %struct.udp_target* %0, %struct.udp_target** %2, align 8
  %5 = load i32, i32* @UDP_WAIT, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %8 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 8
  br label %11

11:                                               ; preds = %94, %1
  %12 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %13 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %18 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @UDP_WAIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %16, %11
  %25 = phi i1 [ false, %11 ], [ %23, %16 ]
  br i1 %25, label %26, label %95

26:                                               ; preds = %24
  %27 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %28 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.TYPE_4__* @queue_get_first_tmp_msg(i64 %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = bitcast %struct.tmp_msg* %3 to i8*
  %33 = bitcast %struct.tmp_msg* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %35 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @queue_del_first_tmp_msg(i64 %36)
  %38 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %39 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = getelementptr inbounds %struct.tmp_msg, %struct.tmp_msg* %3, i32 0, i32 1
  %41 = load %struct.udp_message*, %struct.udp_message** %40, align 8
  store %struct.udp_message* %41, %struct.udp_message** %4, align 8
  %42 = load i64, i64* @udp_drop_probability, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %26
  %45 = call i64 (...) @drand48()
  %46 = load i64, i64* @udp_drop_probability, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.udp_message*, %struct.udp_message** %4, align 8
  %50 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %49, i32 0, i32 0
  %51 = call i32 @rwm_free(%struct.TYPE_3__* %50)
  %52 = load %struct.udp_message*, %struct.udp_message** %4, align 8
  %53 = call i32 @free(%struct.udp_message* %52)
  br label %60

54:                                               ; preds = %44, %26
  %55 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %56 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.udp_message*, %struct.udp_message** %4, align 8
  %59 = call i32 @udp_queue_message(i32 %57, %struct.udp_message* %58)
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i32, i32* @udp_packets_sent, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @udp_packets_sent, align 4
  %63 = load %struct.udp_message*, %struct.udp_message** %4, align 8
  %64 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @udp_data_sent, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* @udp_data_sent, align 4
  %71 = getelementptr inbounds %struct.tmp_msg, %struct.tmp_msg* %3, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @udp_data_body_sent, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* @udp_data_body_sent, align 4
  %77 = getelementptr inbounds %struct.tmp_msg, %struct.tmp_msg* %3, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %80 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %84 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @STOP_WINDOW_SIZE, align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %60
  %89 = load i32, i32* @UDP_WAIT, align 4
  %90 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %91 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %60
  br label %11

95:                                               ; preds = %24
  ret void
}

declare dso_local %struct.TYPE_4__* @queue_get_first_tmp_msg(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @queue_del_first_tmp_msg(i64) #1

declare dso_local i64 @drand48(...) #1

declare dso_local i32 @rwm_free(%struct.TYPE_3__*) #1

declare dso_local i32 @free(%struct.udp_message*) #1

declare dso_local i32 @udp_queue_message(i32, %struct.udp_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
