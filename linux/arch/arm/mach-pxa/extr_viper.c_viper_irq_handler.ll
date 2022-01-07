; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_viper.c_viper_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_viper.c_viper_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @viper_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viper_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %5 = call i64 (...) @viper_irq_pending()
  store i64 %5, i64* %4, align 8
  br label %6

6:                                                ; preds = %27, %1
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %11, align 8
  %13 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %14 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %13, i32 0, i32 0
  %15 = call i32 %12(%struct.TYPE_4__* %14)
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @likely(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @__ffs(i64 %20)
  %22 = call i32 @viper_bit_to_irq(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @generic_handle_irq(i32 %23)
  br label %25

25:                                               ; preds = %19, %6
  %26 = call i64 (...) @viper_irq_pending()
  store i64 %26, i64* %4, align 8
  br label %27

27:                                               ; preds = %25
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %6, label %30

30:                                               ; preds = %27
  ret void
}

declare dso_local i64 @viper_irq_pending(...) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @viper_bit_to_irq(i32) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
