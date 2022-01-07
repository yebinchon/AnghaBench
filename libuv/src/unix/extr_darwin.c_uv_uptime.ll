; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_darwin.c_uv_uptime.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_darwin.c_uv_uptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { double }

@uv_uptime.which = internal global [2 x i32] [i32 129, i32 128], align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_uptime(double* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i64, align 8
  store double* %0, double** %3, align 8
  store i64 8, i64* %6, align 8
  %7 = call i64 @sysctl(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @uv_uptime.which, i64 0, i64 0), i32 2, %struct.timeval* %5, i64* %6, i32* null, i32 0)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @errno, align 4
  %11 = call i32 @UV__ERR(i32 %10)
  store i32 %11, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = call double @time(i32* null)
  store double %13, double* %4, align 8
  %14 = load double, double* %4, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = fsub double %14, %16
  %18 = load double*, double** %3, align 8
  store double %17, double* %18, align 8
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %12, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @sysctl(i32*, i32, %struct.timeval*, i64*, i32*, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local double @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
