; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/extr_ijksdl_timer.c_SDL_Delay.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/extr_ijksdl_timer.c_SDL_Delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SDL_Delay(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec, align 4
  %5 = alloca %struct.timespec, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sdiv i32 %6, 1000
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %2, align 4
  %10 = srem i32 %9, 1000
  %11 = mul nsw i32 %10, 1000000
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  br label %13

13:                                               ; preds = %21, %1
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = call i32 @nanosleep(%struct.timespec* %5, %struct.timespec* %4)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %13, label %24

24:                                               ; preds = %21
  ret void
}

declare dso_local i32 @nanosleep(%struct.timespec*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
