; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_set_my_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_set_my_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"size = %s (%llu KB)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_set_my_capacity(%struct.drbd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [10 x i8], align 1
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @_drbd_set_my_capacity(%struct.drbd_device* %6, i32 %7)
  %9 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 1
  %13 = call i32 @ppsize(i8* %10, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = lshr i64 %15, 1
  %17 = call i32 @drbd_info(%struct.drbd_device* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16)
  ret void
}

declare dso_local i32 @_drbd_set_my_capacity(%struct.drbd_device*, i32) #1

declare dso_local i32 @drbd_info(%struct.drbd_device*, i8*, i32, i64) #1

declare dso_local i32 @ppsize(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
