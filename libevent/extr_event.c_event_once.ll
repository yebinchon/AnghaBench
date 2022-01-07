; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_once.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@current_base = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_once(i32 %0, i16 signext %1, void (i32, i16, i8*)* %2, i8* %3, %struct.timeval* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca void (i32, i16, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.timeval*, align 8
  store i32 %0, i32* %6, align 4
  store i16 %1, i16* %7, align 2
  store void (i32, i16, i8*)* %2, void (i32, i16, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.timeval* %4, %struct.timeval** %10, align 8
  %11 = load i32, i32* @current_base, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i16, i16* %7, align 2
  %14 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.timeval*, %struct.timeval** %10, align 8
  %17 = call i32 @event_base_once(i32 %11, i32 %12, i16 signext %13, void (i32, i16, i8*)* %14, i8* %15, %struct.timeval* %16)
  ret i32 %17
}

declare dso_local i32 @event_base_once(i32, i32, i16 signext, void (i32, i16, i8*)*, i8*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
