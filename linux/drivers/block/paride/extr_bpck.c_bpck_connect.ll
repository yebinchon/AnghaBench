; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_bpck.c_bpck_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_bpck.c_bpck_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32 }

@PI_PCD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @bpck_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpck_connect(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = call i32 (...) @r0()
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 255, %8
  %10 = call i32 @w0(i64 %9)
  %11 = call i32 @w2(i32 4)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @w0(i64 %14)
  %16 = call i32 @t2(i32 8)
  %17 = call i32 @t2(i32 8)
  %18 = call i32 @t2(i32 8)
  %19 = call i32 @t2(i32 2)
  %20 = call i32 @t2(i32 2)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %33 [
    i32 0, label %24
    i32 1, label %27
    i32 2, label %30
    i32 3, label %30
    i32 4, label %30
  ]

24:                                               ; preds = %1
  %25 = call i32 @t2(i32 8)
  %26 = call i32 @WR(i32 4, i32 0)
  br label %33

27:                                               ; preds = %1
  %28 = call i32 @t2(i32 8)
  %29 = call i32 @WR(i32 4, i32 16)
  br label %33

30:                                               ; preds = %1, %1, %1
  %31 = call i32 @w2(i32 0)
  %32 = call i32 @WR(i32 4, i32 8)
  br label %33

33:                                               ; preds = %1, %30, %27, %24
  %34 = call i32 @WR(i32 5, i32 8)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PI_PCD, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = call i32 @WR(i32 70, i32 16)
  %42 = call i32 @WR(i32 76, i32 56)
  %43 = call i32 @WR(i32 77, i32 136)
  %44 = call i32 @WR(i32 70, i32 160)
  %45 = call i32 @WR(i32 65, i32 0)
  %46 = call i32 @WR(i32 78, i32 8)
  br label %47

47:                                               ; preds = %40, %33
  ret void
}

declare dso_local i32 @r0(...) #1

declare dso_local i32 @w0(i64) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @t2(i32) #1

declare dso_local i32 @WR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
