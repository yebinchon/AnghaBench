; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_send_error_wrong_pid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_send_error_wrong_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_socket = type { i32 }
%struct.udp_message = type { i32 }
%struct.process_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_error_wrong_pid(%struct.udp_socket* %0, %struct.udp_message* %1, %struct.process_id* %2, %struct.process_id* %3) #0 {
  %5 = alloca %struct.udp_socket*, align 8
  %6 = alloca %struct.udp_message*, align 8
  %7 = alloca %struct.process_id*, align 8
  %8 = alloca %struct.process_id*, align 8
  store %struct.udp_socket* %0, %struct.udp_socket** %5, align 8
  store %struct.udp_message* %1, %struct.udp_message** %6, align 8
  store %struct.process_id* %2, %struct.process_id** %7, align 8
  store %struct.process_id* %3, %struct.process_id** %8, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
