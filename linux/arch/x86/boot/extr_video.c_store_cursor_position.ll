; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_video.c_store_cursor_position.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_video.c_store_cursor_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.biosregs = type { i32, i32, i32, i32, i32 }

@boot_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@VIDEO_FLAGS_NOCURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @store_cursor_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_cursor_position() #0 {
  %1 = alloca %struct.biosregs, align 4
  %2 = alloca %struct.biosregs, align 4
  %3 = call i32 @initregs(%struct.biosregs* %1)
  %4 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %1, i32 0, i32 0
  store i32 3, i32* %4, align 4
  %5 = call i32 @intcall(i32 16, %struct.biosregs* %1, %struct.biosregs* %2)
  %6 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 2), align 4
  %8 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 1), align 4
  %10 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = load i32, i32* @VIDEO_FLAGS_NOCURSOR, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 4
  br label %18

18:                                               ; preds = %14, %0
  %19 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 31
  %22 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 31
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @VIDEO_FLAGS_NOCURSOR, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 4
  br label %30

30:                                               ; preds = %26, %18
  ret void
}

declare dso_local i32 @initregs(%struct.biosregs*) #1

declare dso_local i32 @intcall(i32, %struct.biosregs*, %struct.biosregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
