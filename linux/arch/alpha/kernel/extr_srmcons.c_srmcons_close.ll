; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_srmcons.c_srmcons_close.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_srmcons.c_srmcons_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.srmcons_private* }
%struct.srmcons_private = type { i32, %struct.tty_port }
%struct.tty_port = type { i32, i32* }
%struct.file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @srmcons_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srmcons_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.srmcons_private*, align 8
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load %struct.srmcons_private*, %struct.srmcons_private** %9, align 8
  store %struct.srmcons_private* %10, %struct.srmcons_private** %5, align 8
  %11 = load %struct.srmcons_private*, %struct.srmcons_private** %5, align 8
  %12 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %11, i32 0, i32 1
  store %struct.tty_port* %12, %struct.tty_port** %6, align 8
  %13 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %14 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %23 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.srmcons_private*, %struct.srmcons_private** %5, align 8
  %25 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %24, i32 0, i32 0
  %26 = call i32 @del_timer(i32* %25)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %29 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
