; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_config = type { i32 }

@NBD_RT_DISCONNECTED = common dso_local global i32 0, align 4
@NBD_RT_DISCONNECT_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbd_config*)* @nbd_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbd_disconnected(%struct.nbd_config* %0) #0 {
  %2 = alloca %struct.nbd_config*, align 8
  store %struct.nbd_config* %0, %struct.nbd_config** %2, align 8
  %3 = load i32, i32* @NBD_RT_DISCONNECTED, align 4
  %4 = load %struct.nbd_config*, %struct.nbd_config** %2, align 8
  %5 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %4, i32 0, i32 0
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @NBD_RT_DISCONNECT_REQUESTED, align 4
  %10 = load %struct.nbd_config*, %struct.nbd_config** %2, align 8
  %11 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ true, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
