; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_srmcons.c_srmcons_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_srmcons.c_srmcons_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srmcons_private = type { i32, %struct.tty_port }
%struct.tty_port = type { i32, %struct.tty_struct* }
%struct.tty_struct = type { %struct.tty_port*, %struct.srmcons_private* }
%struct.file = type { i32 }

@srmcons_singleton = common dso_local global %struct.srmcons_private zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @srmcons_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srmcons_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.srmcons_private*, align 8
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store %struct.srmcons_private* @srmcons_singleton, %struct.srmcons_private** %5, align 8
  %8 = load %struct.srmcons_private*, %struct.srmcons_private** %5, align 8
  %9 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %8, i32 0, i32 1
  store %struct.tty_port* %9, %struct.tty_port** %6, align 8
  %10 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %11 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %15 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %14, i32 0, i32 1
  %16 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  %17 = icmp ne %struct.tty_struct* %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %2
  %19 = load %struct.srmcons_private*, %struct.srmcons_private** %5, align 8
  %20 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 1
  store %struct.srmcons_private* %19, %struct.srmcons_private** %21, align 8
  %22 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %23 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 0
  store %struct.tty_port* %22, %struct.tty_port** %24, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %27 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %26, i32 0, i32 1
  store %struct.tty_struct* %25, %struct.tty_struct** %27, align 8
  %28 = load %struct.srmcons_private*, %struct.srmcons_private** %5, align 8
  %29 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %28, i32 0, i32 0
  %30 = load i64, i64* @jiffies, align 8
  %31 = add nsw i64 %30, 10
  %32 = call i32 @mod_timer(i32* %29, i64 %31)
  br label %33

33:                                               ; preds = %18, %2
  %34 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %35 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %34, i32 0, i32 0
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
