; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_rpc_out_file_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_rpc_out_file_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_get_file_data = type { i32, i32 }
%struct.lev_storage_file = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_get_file_data*, %struct.lev_storage_file*)* @rpc_out_file_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_out_file_data(%struct.rpc_get_file_data* %0, %struct.lev_storage_file* %1) #0 {
  %3 = alloca %struct.rpc_get_file_data*, align 8
  %4 = alloca %struct.lev_storage_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.rpc_get_file_data* %0, %struct.rpc_get_file_data** %3, align 8
  store %struct.lev_storage_file* %1, %struct.lev_storage_file** %4, align 8
  %7 = load %struct.lev_storage_file*, %struct.lev_storage_file** %4, align 8
  %8 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_get_file_data, %struct.rpc_get_file_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %3, align 8
  %16 = getelementptr inbounds %struct.rpc_get_file_data, %struct.rpc_get_file_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %3, align 8
  %21 = getelementptr inbounds %struct.rpc_get_file_data, %struct.rpc_get_file_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.lev_storage_file*, %struct.lev_storage_file** %4, align 8
  %25 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %38

31:                                               ; preds = %23
  %32 = load %struct.rpc_get_file_data*, %struct.rpc_get_file_data** %3, align 8
  %33 = getelementptr inbounds %struct.rpc_get_file_data, %struct.rpc_get_file_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %31, %30
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @rpc_out_cstring(i8* %39, i32 %40)
  ret void
}

declare dso_local i32 @rpc_out_cstring(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
