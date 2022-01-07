; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_clear_fwd_chain.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_clear_fwd_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwd_entry = type { i32, i32, %struct.fwd_entry* }

@FE_HOSTNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_fwd_chain(%struct.fwd_entry* %0) #0 {
  %2 = alloca %struct.fwd_entry*, align 8
  %3 = alloca %struct.fwd_entry*, align 8
  store %struct.fwd_entry* %0, %struct.fwd_entry** %2, align 8
  br label %4

4:                                                ; preds = %22, %1
  %5 = load %struct.fwd_entry*, %struct.fwd_entry** %2, align 8
  %6 = icmp ne %struct.fwd_entry* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = load %struct.fwd_entry*, %struct.fwd_entry** %2, align 8
  %9 = getelementptr inbounds %struct.fwd_entry, %struct.fwd_entry* %8, i32 0, i32 2
  %10 = load %struct.fwd_entry*, %struct.fwd_entry** %9, align 8
  store %struct.fwd_entry* %10, %struct.fwd_entry** %3, align 8
  %11 = load %struct.fwd_entry*, %struct.fwd_entry** %2, align 8
  %12 = getelementptr inbounds %struct.fwd_entry, %struct.fwd_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FE_HOSTNAME, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = load %struct.fwd_entry*, %struct.fwd_entry** %2, align 8
  %19 = getelementptr inbounds %struct.fwd_entry, %struct.fwd_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @destroy_target(i32 %20)
  br label %22

22:                                               ; preds = %17, %7
  %23 = load %struct.fwd_entry*, %struct.fwd_entry** %2, align 8
  %24 = call i32 @zfree(%struct.fwd_entry* %23, i32 16)
  %25 = load %struct.fwd_entry*, %struct.fwd_entry** %3, align 8
  store %struct.fwd_entry* %25, %struct.fwd_entry** %2, align 8
  br label %4

26:                                               ; preds = %4
  ret void
}

declare dso_local i32 @destroy_target(i32) #1

declare dso_local i32 @zfree(%struct.fwd_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
