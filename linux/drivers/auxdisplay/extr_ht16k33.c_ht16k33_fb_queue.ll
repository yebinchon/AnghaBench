; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_ht16k33.c_ht16k33_fb_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_ht16k33.c_ht16k33_fb_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ht16k33_priv = type { %struct.ht16k33_fbdev }
%struct.ht16k33_fbdev = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ht16k33_priv*)* @ht16k33_fb_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ht16k33_fb_queue(%struct.ht16k33_priv* %0) #0 {
  %2 = alloca %struct.ht16k33_priv*, align 8
  %3 = alloca %struct.ht16k33_fbdev*, align 8
  store %struct.ht16k33_priv* %0, %struct.ht16k33_priv** %2, align 8
  %4 = load %struct.ht16k33_priv*, %struct.ht16k33_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ht16k33_priv, %struct.ht16k33_priv* %4, i32 0, i32 0
  store %struct.ht16k33_fbdev* %5, %struct.ht16k33_fbdev** %3, align 8
  %6 = load %struct.ht16k33_fbdev*, %struct.ht16k33_fbdev** %3, align 8
  %7 = getelementptr inbounds %struct.ht16k33_fbdev, %struct.ht16k33_fbdev* %6, i32 0, i32 1
  %8 = load i32, i32* @HZ, align 4
  %9 = load %struct.ht16k33_fbdev*, %struct.ht16k33_fbdev** %3, align 8
  %10 = getelementptr inbounds %struct.ht16k33_fbdev, %struct.ht16k33_fbdev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %8, %11
  %13 = call i32 @msecs_to_jiffies(i32 %12)
  %14 = call i32 @schedule_delayed_work(i32* %7, i32 %13)
  ret void
}

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
