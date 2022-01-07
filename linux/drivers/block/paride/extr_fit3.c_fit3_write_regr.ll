; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_fit3.c_fit3_write_regr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_fit3.c_fit3_write_regr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32)* @fit3_write_regr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fit3_write_regr(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %37

12:                                               ; preds = %4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %37 [
    i32 0, label %16
    i32 1, label %16
    i32 2, label %27
  ]

16:                                               ; preds = %12, %12
  %17 = call i32 @w2(i32 12)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @w0(i32 %18)
  %20 = call i32 @w2(i32 8)
  %21 = call i32 @w2(i32 12)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @w0(i32 %22)
  %24 = call i32 @w2(i32 13)
  %25 = call i32 @w0(i32 0)
  %26 = call i32 @w2(i32 12)
  br label %37

27:                                               ; preds = %12
  %28 = call i32 @w2(i32 12)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @w0(i32 %29)
  %31 = call i32 @w2(i32 8)
  %32 = call i32 @w2(i32 12)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @w4(i32 %33)
  %35 = call i32 @w4(i32 0)
  %36 = call i32 @w2(i32 12)
  br label %37

37:                                               ; preds = %11, %12, %27, %16
  ret void
}

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
