; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_update_protocol_state.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_update_protocol_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6_connection = type { i32 }
%struct.sfe_connection_create = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfe_ipv6_connection*, %struct.sfe_connection_create*)* @sfe_ipv6_update_protocol_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfe_ipv6_update_protocol_state(%struct.sfe_ipv6_connection* %0, %struct.sfe_connection_create* %1) #0 {
  %3 = alloca %struct.sfe_ipv6_connection*, align 8
  %4 = alloca %struct.sfe_connection_create*, align 8
  store %struct.sfe_ipv6_connection* %0, %struct.sfe_ipv6_connection** %3, align 8
  store %struct.sfe_connection_create* %1, %struct.sfe_connection_create** %4, align 8
  %5 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %6 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %12 [
    i32 128, label %8
  ]

8:                                                ; preds = %2
  %9 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %3, align 8
  %10 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %11 = call i32 @sfe_ipv6_update_tcp_state(%struct.sfe_ipv6_connection* %9, %struct.sfe_connection_create* %10)
  br label %12

12:                                               ; preds = %2, %8
  ret void
}

declare dso_local i32 @sfe_ipv6_update_tcp_state(%struct.sfe_ipv6_connection*, %struct.sfe_connection_create*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
