; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_panic_request_and_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_panic_request_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ipmi_addr = type { i32 }
%struct.kernel_ipmi_msg = type { i32 }
%struct.ipmi_smi_msg = type { i32 }
%struct.ipmi_recv_msg = type { i32 }

@dummy_smi_done_handler = common dso_local global i32 0, align 4
@dummy_recv_done_handler = common dso_local global i32 0, align 4
@panic_done_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_smi*, %struct.ipmi_addr*, %struct.kernel_ipmi_msg*)* @ipmi_panic_request_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_panic_request_and_wait(%struct.ipmi_smi* %0, %struct.ipmi_addr* %1, %struct.kernel_ipmi_msg* %2) #0 {
  %4 = alloca %struct.ipmi_smi*, align 8
  %5 = alloca %struct.ipmi_addr*, align 8
  %6 = alloca %struct.kernel_ipmi_msg*, align 8
  %7 = alloca %struct.ipmi_smi_msg, align 4
  %8 = alloca %struct.ipmi_recv_msg, align 4
  %9 = alloca i32, align 4
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %4, align 8
  store %struct.ipmi_addr* %1, %struct.ipmi_addr** %5, align 8
  store %struct.kernel_ipmi_msg* %2, %struct.kernel_ipmi_msg** %6, align 8
  %10 = load i32, i32* @dummy_smi_done_handler, align 4
  %11 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @dummy_recv_done_handler, align 4
  %13 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %8, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = call i32 @atomic_add(i32 2, i32* @panic_done_count)
  %15 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %16 = load %struct.ipmi_addr*, %struct.ipmi_addr** %5, align 8
  %17 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %6, align 8
  %18 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %19 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %20 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %26 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @i_ipmi_request(i32* null, %struct.ipmi_smi* %15, %struct.ipmi_addr* %16, i32 0, %struct.kernel_ipmi_msg* %17, %struct.ipmi_smi* %18, %struct.ipmi_smi_msg* %7, %struct.ipmi_recv_msg* %8, i32 0, i32 %24, i32 %30, i32 0, i32 1)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = call i32 @atomic_sub(i32 2, i32* @panic_done_count)
  br label %54

36:                                               ; preds = %3
  %37 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %38 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (i32)*, i32 (i32)** %40, align 8
  %42 = icmp ne i32 (i32)* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %45 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %50 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %48(i32 %51)
  br label %53

53:                                               ; preds = %43, %36
  br label %54

54:                                               ; preds = %53, %34
  br label %55

55:                                               ; preds = %58, %54
  %56 = call i64 @atomic_read(i32* @panic_done_count)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %60 = call i32 @ipmi_poll(%struct.ipmi_smi* %59)
  br label %55

61:                                               ; preds = %55
  ret void
}

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @i_ipmi_request(i32*, %struct.ipmi_smi*, %struct.ipmi_addr*, i32, %struct.kernel_ipmi_msg*, %struct.ipmi_smi*, %struct.ipmi_smi_msg*, %struct.ipmi_recv_msg*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ipmi_poll(%struct.ipmi_smi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
