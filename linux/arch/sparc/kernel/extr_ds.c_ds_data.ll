; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ds.c_ds_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ds.c_ds_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_info = type { i32 }
%struct.ds_msg_tag = type { i32 }
%struct.ds_data = type { i32 }
%struct.ds_queue_entry = type { i32, i32, %struct.ds_info* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ds_work_list = common dso_local global i32 0, align 4
@ds_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_info*, %struct.ds_msg_tag*, i32)* @ds_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_data(%struct.ds_info* %0, %struct.ds_msg_tag* %1, i32 %2) #0 {
  %4 = alloca %struct.ds_info*, align 8
  %5 = alloca %struct.ds_msg_tag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ds_data*, align 8
  %8 = alloca %struct.ds_queue_entry*, align 8
  store %struct.ds_info* %0, %struct.ds_info** %4, align 8
  store %struct.ds_msg_tag* %1, %struct.ds_msg_tag** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ds_msg_tag*, %struct.ds_msg_tag** %5, align 8
  %10 = bitcast %struct.ds_msg_tag* %9 to %struct.ds_data*
  store %struct.ds_data* %10, %struct.ds_data** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 16, %12
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.ds_queue_entry* @kmalloc(i32 %14, i32 %15)
  store %struct.ds_queue_entry* %16, %struct.ds_queue_entry** %8, align 8
  %17 = load %struct.ds_queue_entry*, %struct.ds_queue_entry** %8, align 8
  %18 = icmp ne %struct.ds_queue_entry* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.ds_info*, %struct.ds_info** %4, align 8
  %21 = load %struct.ds_data*, %struct.ds_data** %7, align 8
  %22 = getelementptr inbounds %struct.ds_data, %struct.ds_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__send_ds_nack(%struct.ds_info* %20, i32 %23)
  br label %38

25:                                               ; preds = %3
  %26 = load %struct.ds_info*, %struct.ds_info** %4, align 8
  %27 = load %struct.ds_queue_entry*, %struct.ds_queue_entry** %8, align 8
  %28 = getelementptr inbounds %struct.ds_queue_entry, %struct.ds_queue_entry* %27, i32 0, i32 2
  store %struct.ds_info* %26, %struct.ds_info** %28, align 8
  %29 = load %struct.ds_queue_entry*, %struct.ds_queue_entry** %8, align 8
  %30 = getelementptr inbounds %struct.ds_queue_entry, %struct.ds_queue_entry* %29, i32 0, i32 1
  %31 = load %struct.ds_msg_tag*, %struct.ds_msg_tag** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @memcpy(i32* %30, %struct.ds_msg_tag* %31, i32 %32)
  %34 = load %struct.ds_queue_entry*, %struct.ds_queue_entry** %8, align 8
  %35 = getelementptr inbounds %struct.ds_queue_entry, %struct.ds_queue_entry* %34, i32 0, i32 0
  %36 = call i32 @list_add_tail(i32* %35, i32* @ds_work_list)
  %37 = call i32 @wake_up(i32* @ds_wait)
  br label %38

38:                                               ; preds = %25, %19
  ret i32 0
}

declare dso_local %struct.ds_queue_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @__send_ds_nack(%struct.ds_info*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ds_msg_tag*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
