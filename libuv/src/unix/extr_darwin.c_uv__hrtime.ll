; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_darwin.c_uv__hrtime.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_darwin.c_uv__hrtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@uv__hrtime.info = internal global %struct.TYPE_3__ zeroinitializer, align 4
@uint32_t = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__hrtime(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @uint32_t, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uv__hrtime.info, i32 0, i32 0), align 4
  %5 = call i64 @ACCESS_ONCE(i32 %3, i32 %4)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @uint32_t, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uv__hrtime.info, i32 0, i32 1), align 4
  %10 = call i64 @ACCESS_ONCE(i32 %8, i32 %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7, %1
  %13 = call i64 @mach_timebase_info(%struct.TYPE_3__* @uv__hrtime.info)
  %14 = load i64, i64* @KERN_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 (...) @abort() #3
  unreachable

18:                                               ; preds = %12, %7
  %19 = call i32 (...) @mach_absolute_time()
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uv__hrtime.info, i32 0, i32 0), align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uv__hrtime.info, i32 0, i32 1), align 4
  %23 = sdiv i32 %21, %22
  ret i32 %23
}

declare dso_local i64 @ACCESS_ONCE(i32, i32) #1

declare dso_local i64 @mach_timebase_info(%struct.TYPE_3__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mach_absolute_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
