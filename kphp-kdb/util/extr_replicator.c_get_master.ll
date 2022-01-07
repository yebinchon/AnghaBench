; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_get_master.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_get_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.location_list_entry = type { i32, %struct.location_list_entry* }
%struct.remote_binlog = type { %struct.location_list_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.location_list_entry* @get_master(%struct.remote_binlog* %0) #0 {
  %2 = alloca %struct.location_list_entry*, align 8
  %3 = alloca %struct.remote_binlog*, align 8
  %4 = alloca %struct.location_list_entry*, align 8
  store %struct.remote_binlog* %0, %struct.remote_binlog** %3, align 8
  %5 = load %struct.remote_binlog*, %struct.remote_binlog** %3, align 8
  %6 = call i32 @assert(%struct.remote_binlog* %5)
  %7 = load %struct.remote_binlog*, %struct.remote_binlog** %3, align 8
  %8 = getelementptr inbounds %struct.remote_binlog, %struct.remote_binlog* %7, i32 0, i32 0
  %9 = load %struct.location_list_entry*, %struct.location_list_entry** %8, align 8
  store %struct.location_list_entry* %9, %struct.location_list_entry** %4, align 8
  br label %10

10:                                               ; preds = %22, %1
  %11 = load %struct.location_list_entry*, %struct.location_list_entry** %4, align 8
  %12 = icmp ne %struct.location_list_entry* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.location_list_entry*, %struct.location_list_entry** %4, align 8
  %15 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.location_list_entry*, %struct.location_list_entry** %4, align 8
  store %struct.location_list_entry* %20, %struct.location_list_entry** %2, align 8
  br label %27

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.location_list_entry*, %struct.location_list_entry** %4, align 8
  %24 = getelementptr inbounds %struct.location_list_entry, %struct.location_list_entry* %23, i32 0, i32 1
  %25 = load %struct.location_list_entry*, %struct.location_list_entry** %24, align 8
  store %struct.location_list_entry* %25, %struct.location_list_entry** %4, align 8
  br label %10

26:                                               ; preds = %10
  store %struct.location_list_entry* null, %struct.location_list_entry** %2, align 8
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.location_list_entry*, %struct.location_list_entry** %2, align 8
  ret %struct.location_list_entry* %28
}

declare dso_local i32 @assert(%struct.remote_binlog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
