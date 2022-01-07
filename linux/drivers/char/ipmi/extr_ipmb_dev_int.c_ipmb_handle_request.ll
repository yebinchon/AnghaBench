; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmb_dev_int.c_ipmb_handle_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmb_dev_int.c_ipmb_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmb_dev = type { i32, i32, i32, i32 }
%struct.ipmb_request_elem = type { i32, i32 }

@REQUEST_QUEUE_MAX_LEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmb_dev*)* @ipmb_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmb_handle_request(%struct.ipmb_dev* %0) #0 {
  %2 = alloca %struct.ipmb_dev*, align 8
  %3 = alloca %struct.ipmb_request_elem*, align 8
  store %struct.ipmb_dev* %0, %struct.ipmb_dev** %2, align 8
  %4 = load %struct.ipmb_dev*, %struct.ipmb_dev** %2, align 8
  %5 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %4, i32 0, i32 1
  %6 = call i64 @atomic_read(i32* %5)
  %7 = load i64, i64* @REQUEST_QUEUE_MAX_LEN, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.ipmb_request_elem* @kmalloc(i32 8, i32 %11)
  store %struct.ipmb_request_elem* %12, %struct.ipmb_request_elem** %3, align 8
  %13 = load %struct.ipmb_request_elem*, %struct.ipmb_request_elem** %3, align 8
  %14 = icmp ne %struct.ipmb_request_elem* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %33

16:                                               ; preds = %10
  %17 = load %struct.ipmb_request_elem*, %struct.ipmb_request_elem** %3, align 8
  %18 = getelementptr inbounds %struct.ipmb_request_elem, %struct.ipmb_request_elem* %17, i32 0, i32 1
  %19 = load %struct.ipmb_dev*, %struct.ipmb_dev** %2, align 8
  %20 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %19, i32 0, i32 3
  %21 = call i32 @memcpy(i32* %18, i32* %20, i32 4)
  %22 = load %struct.ipmb_request_elem*, %struct.ipmb_request_elem** %3, align 8
  %23 = getelementptr inbounds %struct.ipmb_request_elem, %struct.ipmb_request_elem* %22, i32 0, i32 0
  %24 = load %struct.ipmb_dev*, %struct.ipmb_dev** %2, align 8
  %25 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %24, i32 0, i32 2
  %26 = call i32 @list_add(i32* %23, i32* %25)
  %27 = load %struct.ipmb_dev*, %struct.ipmb_dev** %2, align 8
  %28 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %27, i32 0, i32 1
  %29 = call i32 @atomic_inc(i32* %28)
  %30 = load %struct.ipmb_dev*, %struct.ipmb_dev** %2, align 8
  %31 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %30, i32 0, i32 0
  %32 = call i32 @wake_up_all(i32* %31)
  br label %33

33:                                               ; preds = %16, %15, %9
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.ipmb_request_elem* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
