; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_iter_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_iter_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { i32, %struct.lanai_vcc** }
%struct.lanai_vcc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.lanai_dev.0*, %struct.lanai_vcc.1*, i32)*, i32* }
%struct.lanai_dev.0 = type opaque
%struct.lanai_vcc.1 = type opaque

@vcc_txreadptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lanai_dev*, i64)* @iter_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iter_dequeue(%struct.lanai_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.lanai_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lanai_vcc*, align 8
  %6 = alloca i32, align 4
  store %struct.lanai_dev* %0, %struct.lanai_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %8 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %7, i32 0, i32 1
  %9 = load %struct.lanai_vcc**, %struct.lanai_vcc*** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.lanai_vcc*, %struct.lanai_vcc** %9, i64 %10
  %12 = load %struct.lanai_vcc*, %struct.lanai_vcc** %11, align 8
  store %struct.lanai_vcc* %12, %struct.lanai_vcc** %5, align 8
  %13 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %14 = icmp eq %struct.lanai_vcc* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %17 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %23 = call i32 @vcc_is_backlogged(%struct.lanai_vcc* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21, %15, %2
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %28 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @__clear_bit(i64 %26, i32 %29)
  br label %46

31:                                               ; preds = %21
  %32 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %33 = load i32, i32* @vcc_txreadptr, align 4
  %34 = call i32 @cardvcc_read(%struct.lanai_vcc* %32, i32 %33)
  %35 = call i32 @TXREADPTR_GET_PTR(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %37 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.lanai_dev.0*, %struct.lanai_vcc.1*, i32)*, i32 (%struct.lanai_dev.0*, %struct.lanai_vcc.1*, i32)** %38, align 8
  %40 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %41 = bitcast %struct.lanai_dev* %40 to %struct.lanai_dev.0*
  %42 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %43 = bitcast %struct.lanai_vcc* %42 to %struct.lanai_vcc.1*
  %44 = load i32, i32* %6, align 4
  %45 = call i32 %39(%struct.lanai_dev.0* %41, %struct.lanai_vcc.1* %43, i32 %44)
  br label %46

46:                                               ; preds = %31, %25
  ret void
}

declare dso_local i32 @vcc_is_backlogged(%struct.lanai_vcc*) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @TXREADPTR_GET_PTR(i32) #1

declare dso_local i32 @cardvcc_read(%struct.lanai_vcc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
