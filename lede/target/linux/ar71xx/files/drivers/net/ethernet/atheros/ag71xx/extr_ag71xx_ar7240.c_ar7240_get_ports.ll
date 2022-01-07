; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_get_ports.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_get_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.switch_port* }
%struct.switch_port = type { i32, i32 }
%struct.ar7240sw = type { i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @ar7240_get_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar7240_get_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.switch_val*, align 8
  %5 = alloca %struct.ar7240sw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.switch_port*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  store %struct.switch_val* %1, %struct.switch_val** %4, align 8
  %9 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %10 = call %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev* %9)
  store %struct.ar7240sw* %10, %struct.ar7240sw** %5, align 8
  %11 = load %struct.ar7240sw*, %struct.ar7240sw** %5, align 8
  %12 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %15 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %20 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %64, %2
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.ar7240sw*, %struct.ar7240sw** %5, align 8
  %24 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %64

35:                                               ; preds = %28
  %36 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %37 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.switch_port*, %struct.switch_port** %38, align 8
  %40 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %41 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %39, i64 %42
  store %struct.switch_port* %44, %struct.switch_port** %8, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %47 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ar7240sw*, %struct.ar7240sw** %5, align 8
  %49 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %35
  %56 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %57 = shl i32 1, %56
  %58 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %59 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %63

60:                                               ; preds = %35
  %61 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %62 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %34
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %21

67:                                               ; preds = %21
  ret i32 0
}

declare dso_local %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
