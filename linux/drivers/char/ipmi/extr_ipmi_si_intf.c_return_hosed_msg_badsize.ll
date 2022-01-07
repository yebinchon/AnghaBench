; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_return_hosed_msg_badsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_return_hosed_msg_badsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { %struct.ipmi_smi_msg* }
%struct.ipmi_smi_msg = type { i32*, i32*, i32 }

@CANNOT_RETURN_REQUESTED_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_info*)* @return_hosed_msg_badsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @return_hosed_msg_badsize(%struct.smi_info* %0) #0 {
  %2 = alloca %struct.smi_info*, align 8
  %3 = alloca %struct.ipmi_smi_msg*, align 8
  store %struct.smi_info* %0, %struct.smi_info** %2, align 8
  %4 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %5 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %4, i32 0, i32 0
  %6 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  store %struct.ipmi_smi_msg* %6, %struct.ipmi_smi_msg** %3, align 8
  %7 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %8 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, 4
  %13 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %14 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %18 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %23 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @CANNOT_RETURN_REQUESTED_LENGTH, align 4
  %27 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %28 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 %26, i32* %30, align 4
  %31 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %32 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %31, i32 0, i32 2
  store i32 3, i32* %32, align 8
  %33 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %34 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %33, i32 0, i32 0
  store %struct.ipmi_smi_msg* null, %struct.ipmi_smi_msg** %34, align 8
  %35 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %36 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %37 = call i32 @deliver_recv_msg(%struct.smi_info* %35, %struct.ipmi_smi_msg* %36)
  ret void
}

declare dso_local i32 @deliver_recv_msg(%struct.smi_info*, %struct.ipmi_smi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
