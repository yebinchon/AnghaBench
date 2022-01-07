; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/progress/extr_main.c_fake_download.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/progress/extr_main.c_fake_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i64 }

@percentage = common dso_local global i32 0, align 4
@async = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fake_download(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i32*
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %14, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = sitofp i32 %15 to double
  %17 = fmul double %16, 1.000000e+02
  %18 = load i32, i32* %3, align 4
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %17, %19
  %21 = fptosi double %20 to i32
  store i32 %21, i32* @percentage, align 4
  store i8* bitcast (i32* @percentage to i8*), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @async, i32 0, i32 0), align 8
  %22 = call i32 @uv_async_send(%struct.TYPE_6__* @async)
  %23 = call i32 @sleep(i32 1)
  %24 = call i32 (...) @random()
  %25 = add nsw i32 200, %24
  %26 = srem i32 %25, 1000
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %10

29:                                               ; preds = %10
  ret void
}

declare dso_local i32 @uv_async_send(%struct.TYPE_6__*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
