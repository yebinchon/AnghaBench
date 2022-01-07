; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_creg_cmd_done_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_creg_cmd_done_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32 }
%struct.creg_cmd = type { i32, %struct.creg_completion* }
%struct.creg_completion = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_cardinfo*, %struct.creg_cmd*, i32)* @creg_cmd_done_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @creg_cmd_done_cb(%struct.rsxx_cardinfo* %0, %struct.creg_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.rsxx_cardinfo*, align 8
  %5 = alloca %struct.creg_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.creg_completion*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %4, align 8
  store %struct.creg_cmd* %1, %struct.creg_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.creg_cmd*, %struct.creg_cmd** %5, align 8
  %9 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %8, i32 0, i32 1
  %10 = load %struct.creg_completion*, %struct.creg_completion** %9, align 8
  store %struct.creg_completion* %10, %struct.creg_completion** %7, align 8
  %11 = load %struct.creg_completion*, %struct.creg_completion** %7, align 8
  %12 = icmp ne %struct.creg_completion* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.creg_completion*, %struct.creg_completion** %7, align 8
  %18 = getelementptr inbounds %struct.creg_completion, %struct.creg_completion* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.creg_cmd*, %struct.creg_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.creg_completion*, %struct.creg_completion** %7, align 8
  %23 = getelementptr inbounds %struct.creg_completion, %struct.creg_completion* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.creg_completion*, %struct.creg_completion** %7, align 8
  %25 = getelementptr inbounds %struct.creg_completion, %struct.creg_completion* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @complete(i32 %26)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
