; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_mc-sys.c_mc_cmd_hdr_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_mc-sys.c_mc_cmd_hdr_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_command = type { i32 }
%struct.mc_cmd_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_command*)* @mc_cmd_hdr_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc_cmd_hdr_read_status(%struct.fsl_mc_command* %0) #0 {
  %2 = alloca %struct.fsl_mc_command*, align 8
  %3 = alloca %struct.mc_cmd_header*, align 8
  store %struct.fsl_mc_command* %0, %struct.fsl_mc_command** %2, align 8
  %4 = load %struct.fsl_mc_command*, %struct.fsl_mc_command** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %4, i32 0, i32 0
  %6 = bitcast i32* %5 to %struct.mc_cmd_header*
  store %struct.mc_cmd_header* %6, %struct.mc_cmd_header** %3, align 8
  %7 = load %struct.mc_cmd_header*, %struct.mc_cmd_header** %3, align 8
  %8 = getelementptr inbounds %struct.mc_cmd_header, %struct.mc_cmd_header* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
