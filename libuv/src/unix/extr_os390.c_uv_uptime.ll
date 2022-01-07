; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_os390.c_uv_uptime.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_os390.c_uv_uptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@BOOT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_uptime(double* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca %struct.utmpx, align 4
  %5 = alloca %struct.utmpx*, align 8
  %6 = alloca i32, align 4
  store double* %0, double** %3, align 8
  %7 = load i32, i32* @BOOT_TIME, align 4
  %8 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %4, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = call %struct.utmpx* @getutxid(%struct.utmpx* %4)
  store %struct.utmpx* %9, %struct.utmpx** %5, align 8
  %10 = load %struct.utmpx*, %struct.utmpx** %5, align 8
  %11 = icmp eq %struct.utmpx* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = call i32 @time64(i32* %6)
  %15 = load %struct.utmpx*, %struct.utmpx** %5, align 8
  %16 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call double @difftime64(i32 %14, i32 %18)
  %20 = load double*, double** %3, align 8
  store double %19, double* %20, align 8
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %13, %12
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.utmpx* @getutxid(%struct.utmpx*) #1

declare dso_local double @difftime64(i32, i32) #1

declare dso_local i32 @time64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
