; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_return_hosed_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_return_hosed_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssif_info = type { i32 }
%struct.ipmi_smi_msg = type { i32*, i32*, i32 }

@hosed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssif_info*, %struct.ipmi_smi_msg*)* @return_hosed_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @return_hosed_msg(%struct.ssif_info* %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca %struct.ssif_info*, align 8
  %4 = alloca %struct.ipmi_smi_msg*, align 8
  store %struct.ssif_info* %0, %struct.ssif_info** %3, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %4, align 8
  %5 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %6 = load i32, i32* @hosed, align 4
  %7 = call i32 @ssif_inc_stat(%struct.ssif_info* %5, i32 %6)
  %8 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %9 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, 4
  %14 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %15 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %19 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %24 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %28 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 255, i32* %30, align 4
  %31 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %32 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %31, i32 0, i32 2
  store i32 3, i32* %32, align 8
  %33 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %34 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %35 = call i32 @deliver_recv_msg(%struct.ssif_info* %33, %struct.ipmi_smi_msg* %34)
  ret void
}

declare dso_local i32 @ssif_inc_stat(%struct.ssif_info*, i32) #1

declare dso_local i32 @deliver_recv_msg(%struct.ssif_info*, %struct.ipmi_smi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
