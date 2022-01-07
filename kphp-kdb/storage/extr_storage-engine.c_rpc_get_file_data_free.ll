; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_rpc_get_file_data_free.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_rpc_get_file_data_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_get_file_data = type { i32, %struct.rpc_get_file_data*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_get_file_data*)* @rpc_get_file_data_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_get_file_data_free(%struct.rpc_get_file_data* %0) #0 {
  %2 = alloca %struct.rpc_get_file_data*, align 8
  store %struct.rpc_get_file_data* %0, %struct.rpc_get_file_data** %2, align 8
  %3 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_get_file_data, %struct.rpc_get_file_data* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %2, align 8
  %9 = getelementptr inbounds %struct.rpc_get_file_data, %struct.rpc_get_file_data* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %2, align 8
  %16 = getelementptr inbounds %struct.rpc_get_file_data, %struct.rpc_get_file_data* %15, i32 0, i32 1
  %17 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %16, align 8
  %18 = icmp ne %struct.rpc_get_file_data* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %2, align 8
  %21 = getelementptr inbounds %struct.rpc_get_file_data, %struct.rpc_get_file_data* %20, i32 0, i32 1
  %22 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %21, align 8
  %23 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %2, align 8
  %24 = getelementptr inbounds %struct.rpc_get_file_data, %struct.rpc_get_file_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 4, %25
  %27 = call i32 @zfree(%struct.rpc_get_file_data* %22, i32 %26)
  br label %28

28:                                               ; preds = %19, %14
  %29 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %2, align 8
  %30 = call i32 @zfree(%struct.rpc_get_file_data* %29, i32 24)
  ret void
}

declare dso_local i32 @zfree(%struct.rpc_get_file_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
