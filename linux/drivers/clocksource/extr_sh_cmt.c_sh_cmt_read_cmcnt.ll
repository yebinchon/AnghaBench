; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_read_cmcnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_read_cmcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_channel = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@CMCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_cmt_channel*)* @sh_cmt_read_cmcnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_read_cmcnt(%struct.sh_cmt_channel* %0) #0 {
  %2 = alloca %struct.sh_cmt_channel*, align 8
  store %struct.sh_cmt_channel* %0, %struct.sh_cmt_channel** %2, align 8
  %3 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %2, align 8
  %4 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (i32, i32)*, i32 (i32, i32)** %8, align 8
  %10 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %2, align 8
  %11 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CMCNT, align 4
  %14 = call i32 %9(i32 %12, i32 %13)
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
