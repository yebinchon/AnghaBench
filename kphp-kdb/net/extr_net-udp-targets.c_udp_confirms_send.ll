; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_confirms_send.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_confirms_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_confirms_send(%struct.udp_target* %0) #0 {
  %2 = alloca %struct.udp_target*, align 8
  store %struct.udp_target* %0, %struct.udp_target** %2, align 8
  %3 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %4 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @out_buf_set_mode(i32 %5)
  %7 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %8 = call i32 @out_buf_set_target(%struct.udp_target* %7)
  %9 = call i32 (...) @out_buf_clean()
  %10 = call i32 @assert(i32 %9)
  br label %11

11:                                               ; preds = %16, %1
  %12 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %13 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = call i32 @out_buf_flush(i32 1)
  %18 = call i32 (...) @out_buf_clean()
  %19 = call i32 @assert(i32 %18)
  br label %11

20:                                               ; preds = %11
  ret void
}

declare dso_local i32 @out_buf_set_mode(i32) #1

declare dso_local i32 @out_buf_set_target(%struct.udp_target*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @out_buf_clean(...) #1

declare dso_local i32 @out_buf_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
