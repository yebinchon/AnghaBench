; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_sys_dp264.c_dp264_device_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_sys_dp264.c_dp264_device_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@TSUNAMI_cchip = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dp264_device_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dp264_device_interrupt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TSUNAMI_cchip, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %29, %1
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i64, i64* %3, align 8
  %14 = xor i64 %13, -1
  %15 = call i32 @ffz(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i64, i64* %3, align 8
  %17 = sub i64 %16, 1
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 55
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @isa_device_interrupt(i64 %23)
  br label %29

25:                                               ; preds = %12
  %26 = load i32, i32* %4, align 4
  %27 = add i32 16, %26
  %28 = call i32 @handle_irq(i32 %27)
  br label %29

29:                                               ; preds = %25, %22
  br label %9

30:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ffz(i64) #1

declare dso_local i32 @isa_device_interrupt(i64) #1

declare dso_local i32 @handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
