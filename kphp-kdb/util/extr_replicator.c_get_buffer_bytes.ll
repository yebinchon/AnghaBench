; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_get_buffer_bytes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_get_buffer_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repl_server_status = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.repl_server_status*)* @get_buffer_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_buffer_bytes(%struct.repl_server_status* %0) #0 {
  %2 = alloca %struct.repl_server_status*, align 8
  %3 = alloca i64, align 8
  store %struct.repl_server_status* %0, %struct.repl_server_status** %2, align 8
  %4 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %5 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %8 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %6, %9
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %15 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = add nsw i64 %17, %16
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load i64, i64* %3, align 8
  ret i64 %24
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
