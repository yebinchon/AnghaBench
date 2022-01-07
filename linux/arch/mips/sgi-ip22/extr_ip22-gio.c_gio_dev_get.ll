; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-gio.c_gio_dev_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-gio.c_gio_dev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gio_device = type { i32 }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gio_device* @gio_dev_get(%struct.gio_device* %0) #0 {
  %2 = alloca %struct.gio_device*, align 8
  %3 = alloca %struct.gio_device*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.gio_device* %0, %struct.gio_device** %3, align 8
  %5 = load %struct.gio_device*, %struct.gio_device** %3, align 8
  %6 = icmp ne %struct.gio_device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.gio_device* null, %struct.gio_device** %2, align 8
  br label %18

8:                                                ; preds = %1
  %9 = load %struct.gio_device*, %struct.gio_device** %3, align 8
  %10 = getelementptr inbounds %struct.gio_device, %struct.gio_device* %9, i32 0, i32 0
  %11 = call %struct.device* @get_device(i32* %10)
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.gio_device* @to_gio_device(%struct.device* %15)
  store %struct.gio_device* %16, %struct.gio_device** %2, align 8
  br label %18

17:                                               ; preds = %8
  store %struct.gio_device* null, %struct.gio_device** %2, align 8
  br label %18

18:                                               ; preds = %17, %14, %7
  %19 = load %struct.gio_device*, %struct.gio_device** %2, align 8
  ret %struct.gio_device* %19
}

declare dso_local %struct.device* @get_device(i32*) #1

declare dso_local %struct.gio_device* @to_gio_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
