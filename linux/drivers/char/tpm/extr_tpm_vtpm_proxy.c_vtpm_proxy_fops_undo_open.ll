; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_vtpm_proxy.c_vtpm_proxy_fops_undo_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_vtpm_proxy.c_vtpm_proxy_fops_undo_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proxy_dev = type { i32, i32, i32 }

@STATE_OPENED_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proxy_dev*)* @vtpm_proxy_fops_undo_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtpm_proxy_fops_undo_open(%struct.proxy_dev* %0) #0 {
  %2 = alloca %struct.proxy_dev*, align 8
  store %struct.proxy_dev* %0, %struct.proxy_dev** %2, align 8
  %3 = load %struct.proxy_dev*, %struct.proxy_dev** %2, align 8
  %4 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load i32, i32* @STATE_OPENED_FLAG, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.proxy_dev*, %struct.proxy_dev** %2, align 8
  %9 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.proxy_dev*, %struct.proxy_dev** %2, align 8
  %13 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %12, i32 0, i32 1
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load %struct.proxy_dev*, %struct.proxy_dev** %2, align 8
  %16 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %15, i32 0, i32 0
  %17 = call i32 @wake_up_interruptible(i32* %16)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
