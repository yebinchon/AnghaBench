; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_scheduler.c_h2o_http2_scheduler_run.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_scheduler.c_h2o_http2_scheduler_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_http2_scheduler_run(%struct.TYPE_4__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %30, %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @queue_is_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @proceed(%struct.TYPE_4__* %22, i32 %23, i8* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %21
  br label %14

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31, %3
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @queue_is_empty(i32*) #1

declare dso_local i32 @proceed(%struct.TYPE_4__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
