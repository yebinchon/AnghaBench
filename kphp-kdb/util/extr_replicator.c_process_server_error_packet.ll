; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_server_error_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_server_error_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.repl_error = type { i32 }
%struct.repl_server_status = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_server_error_packet(%struct.connection* %0, %struct.repl_error* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.repl_error*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.repl_server_status*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.repl_error* %1, %struct.repl_error** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.repl_error*, %struct.repl_error** %5, align 8
  %9 = getelementptr inbounds %struct.repl_error, %struct.repl_error* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.repl_server_status* @get_server_by_session(i32 %10, i32 0)
  store %struct.repl_server_status* %11, %struct.repl_server_status** %7, align 8
  %12 = load %struct.repl_server_status*, %struct.repl_server_status** %7, align 8
  %13 = icmp ne %struct.repl_server_status* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.repl_server_status*, %struct.repl_server_status** %7, align 8
  %16 = call i32 @destroy_server(%struct.repl_server_status* %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.connection*, %struct.connection** %4, align 8
  %19 = load %struct.repl_error*, %struct.repl_error** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @process_generic_error_packet(%struct.connection* %18, %struct.repl_error* %19, i32 %20)
  ret i32 %21
}

declare dso_local %struct.repl_server_status* @get_server_by_session(i32, i32) #1

declare dso_local i32 @destroy_server(%struct.repl_server_status*) #1

declare dso_local i32 @process_generic_error_packet(%struct.connection*, %struct.repl_error*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
