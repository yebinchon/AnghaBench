; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_process_attr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_process_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@VIO_HS_GOTVERS = common dso_local global i32 0, align 4
@VIO_HS_GOT_ATTR = common dso_local global i32 0, align 4
@VIO_DR_STATE_TXREQ = common dso_local global i32 0, align 4
@VIO_HS_SENT_DREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, i8*)* @process_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_attr(%struct.vio_driver_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %8 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @VIO_HS_GOTVERS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %15 = call i32 @handshake_failure(%struct.vio_driver_state* %14)
  store i32 %15, i32* %3, align 4
  br label %71

16:                                               ; preds = %2
  %17 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %18 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %71

22:                                               ; preds = %16
  %23 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %24 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.vio_driver_state*, i8*)**
  %28 = load i32 (%struct.vio_driver_state*, i8*)*, i32 (%struct.vio_driver_state*, i8*)** %27, align 8
  %29 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 %28(%struct.vio_driver_state* %29, i8* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %36 = call i32 @handshake_failure(%struct.vio_driver_state* %35)
  store i32 %36, i32* %3, align 4
  br label %71

37:                                               ; preds = %22
  %38 = load i32, i32* @VIO_HS_GOT_ATTR, align 4
  %39 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %40 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %44 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VIO_DR_STATE_TXREQ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %37
  %50 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %51 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @VIO_HS_SENT_DREG, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %49
  %57 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %58 = call i64 @send_dreg(%struct.vio_driver_state* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %62 = call i32 @handshake_failure(%struct.vio_driver_state* %61)
  store i32 %62, i32* %3, align 4
  br label %71

63:                                               ; preds = %56
  %64 = load i32, i32* @VIO_HS_SENT_DREG, align 4
  %65 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %66 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %49, %37
  br label %70

70:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %60, %34, %21, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @handshake_failure(%struct.vio_driver_state*) #1

declare dso_local i64 @send_dreg(%struct.vio_driver_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
