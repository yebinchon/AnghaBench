; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_return_hosed_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_return_hosed_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { %struct.ipmi_smi_msg* }
%struct.ipmi_smi_msg = type { i32*, i32*, i32 }

@IPMI_ERR_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_info*, i32)* @return_hosed_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @return_hosed_msg(%struct.smi_info* %0, i32 %1) #0 {
  %3 = alloca %struct.smi_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipmi_smi_msg*, align 8
  store %struct.smi_info* %0, %struct.smi_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %7 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %6, i32 0, i32 0
  %8 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  store %struct.ipmi_smi_msg* %8, %struct.ipmi_smi_msg** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IPMI_ERR_UNSPECIFIED, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @IPMI_ERR_UNSPECIFIED, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %19 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, 4
  %24 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %25 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %29 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %34 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %39 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %37, i32* %41, align 4
  %42 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %43 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %42, i32 0, i32 2
  store i32 3, i32* %43, align 8
  %44 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %45 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %44, i32 0, i32 0
  store %struct.ipmi_smi_msg* null, %struct.ipmi_smi_msg** %45, align 8
  %46 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %47 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %48 = call i32 @deliver_recv_msg(%struct.smi_info* %46, %struct.ipmi_smi_msg* %47)
  ret void
}

declare dso_local i32 @deliver_recv_msg(%struct.smi_info*, %struct.ipmi_smi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
