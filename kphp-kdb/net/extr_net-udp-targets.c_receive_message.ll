; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_receive_message.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_receive_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_socket = type { i32 }
%struct.udp_target = type { i32 }
%struct.udp_msg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.udp_msg*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @receive_message(%struct.udp_socket* %0, %struct.udp_target* %1, %struct.udp_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.udp_socket*, align 8
  %6 = alloca %struct.udp_target*, align 8
  %7 = alloca %struct.udp_msg*, align 8
  %8 = alloca i32, align 4
  store %struct.udp_socket* %0, %struct.udp_socket** %5, align 8
  store %struct.udp_target* %1, %struct.udp_target** %6, align 8
  store %struct.udp_msg* %2, %struct.udp_msg** %7, align 8
  %9 = load %struct.udp_msg*, %struct.udp_msg** %7, align 8
  %10 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 4
  br i1 %13, label %14, label %46

14:                                               ; preds = %3
  %15 = load %struct.udp_msg*, %struct.udp_msg** %7, align 8
  %16 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %15, i32 0, i32 0
  %17 = call i32 @rwm_fetch_lookup(%struct.TYPE_3__* %16, i32* %8, i32 4)
  %18 = icmp eq i32 %17, 4
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %39 [
    i32 129, label %22
    i32 128, label %25
    i32 133, label %28
    i32 134, label %29
    i32 130, label %30
    i32 131, label %33
    i32 132, label %36
  ]

22:                                               ; preds = %14
  %23 = load %struct.udp_msg*, %struct.udp_msg** %7, align 8
  %24 = call i32 @work_resend_request(%struct.udp_msg* %23)
  store i32 0, i32* %4, align 4
  br label %53

25:                                               ; preds = %14
  %26 = load %struct.udp_msg*, %struct.udp_msg** %7, align 8
  %27 = call i32 @work_resend_request_ext(%struct.udp_msg* %26)
  store i32 0, i32* %4, align 4
  br label %53

28:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %53

29:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %53

30:                                               ; preds = %14
  %31 = load %struct.udp_msg*, %struct.udp_msg** %7, align 8
  %32 = call i32 @work_obsolete_pid(%struct.udp_msg* %31)
  store i32 0, i32* %4, align 4
  br label %53

33:                                               ; preds = %14
  %34 = load %struct.udp_msg*, %struct.udp_msg** %7, align 8
  %35 = call i32 @work_obsolete_hash(%struct.udp_msg* %34)
  store i32 0, i32* %4, align 4
  br label %53

36:                                               ; preds = %14
  %37 = load %struct.udp_msg*, %struct.udp_msg** %7, align 8
  %38 = call i32 @work_obsolete_generation(%struct.udp_msg* %37)
  store i32 0, i32* %4, align 4
  br label %53

39:                                               ; preds = %14
  %40 = load %struct.udp_socket*, %struct.udp_socket** %5, align 8
  %41 = call %struct.TYPE_4__* @UDP_FUNC(%struct.udp_socket* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.udp_msg*)*, i32 (%struct.udp_msg*)** %42, align 8
  %44 = load %struct.udp_msg*, %struct.udp_msg** %7, align 8
  %45 = call i32 %43(%struct.udp_msg* %44)
  store i32 0, i32* %4, align 4
  br label %53

46:                                               ; preds = %3
  %47 = load %struct.udp_socket*, %struct.udp_socket** %5, align 8
  %48 = call %struct.TYPE_4__* @UDP_FUNC(%struct.udp_socket* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.udp_msg*)*, i32 (%struct.udp_msg*)** %49, align 8
  %51 = load %struct.udp_msg*, %struct.udp_msg** %7, align 8
  %52 = call i32 %50(%struct.udp_msg* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %39, %36, %33, %30, %29, %28, %25, %22
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rwm_fetch_lookup(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @work_resend_request(%struct.udp_msg*) #1

declare dso_local i32 @work_resend_request_ext(%struct.udp_msg*) #1

declare dso_local i32 @work_obsolete_pid(%struct.udp_msg*) #1

declare dso_local i32 @work_obsolete_hash(%struct.udp_msg*) #1

declare dso_local i32 @work_obsolete_generation(%struct.udp_msg*) #1

declare dso_local %struct.TYPE_4__* @UDP_FUNC(%struct.udp_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
