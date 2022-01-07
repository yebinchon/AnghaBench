; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_xfer_secondary_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_xfer_secondary_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entropy_store = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@ENTROPY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entropy_store*, i64)* @xfer_secondary_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfer_secondary_pool(%struct.entropy_store* %0, i64 %1) #0 {
  %3 = alloca %struct.entropy_store*, align 8
  %4 = alloca i64, align 8
  store %struct.entropy_store* %0, %struct.entropy_store** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %6 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %11 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @ENTROPY_SHIFT, align 4
  %15 = add nsw i32 %14, 3
  %16 = zext i32 %15 to i64
  %17 = shl i64 %13, %16
  %18 = icmp uge i64 %12, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %9
  %20 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %21 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %24 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %22, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19, %9, %2
  br label %34

30:                                               ; preds = %19
  %31 = load %struct.entropy_store*, %struct.entropy_store** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @_xfer_secondary_pool(%struct.entropy_store* %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @_xfer_secondary_pool(%struct.entropy_store*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
