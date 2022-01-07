; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_vio_control_pkt_engine.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_vio_control_pkt_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vio_driver_state*)* }
%struct.vio_msg_tag = type { i32 }

@VIO_HS_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vio_control_pkt_engine(%struct.vio_driver_state* %0, i8* %1) #0 {
  %3 = alloca %struct.vio_driver_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vio_msg_tag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vio_msg_tag*
  store %struct.vio_msg_tag* %9, %struct.vio_msg_tag** %5, align 8
  %10 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %11 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.vio_msg_tag*, %struct.vio_msg_tag** %5, align 8
  %14 = getelementptr inbounds %struct.vio_msg_tag, %struct.vio_msg_tag* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %36 [
    i32 128, label %16
    i32 132, label %20
    i32 131, label %24
    i32 130, label %28
    i32 129, label %32
  ]

16:                                               ; preds = %2
  %17 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @process_ver(%struct.vio_driver_state* %17, i8* %18)
  store i32 %19, i32* %7, align 4
  br label %40

20:                                               ; preds = %2
  %21 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @process_attr(%struct.vio_driver_state* %21, i8* %22)
  store i32 %23, i32* %7, align 4
  br label %40

24:                                               ; preds = %2
  %25 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @process_dreg(%struct.vio_driver_state* %25, i8* %26)
  store i32 %27, i32* %7, align 4
  br label %40

28:                                               ; preds = %2
  %29 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @process_dunreg(%struct.vio_driver_state* %29, i8* %30)
  store i32 %31, i32* %7, align 4
  br label %40

32:                                               ; preds = %2
  %33 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @process_rdx(%struct.vio_driver_state* %33, i8* %34)
  store i32 %35, i32* %7, align 4
  br label %40

36:                                               ; preds = %2
  %37 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @process_unknown(%struct.vio_driver_state* %37, i8* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %32, %28, %24, %20, %16
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %40
  %44 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %45 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %51 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @VIO_HS_COMPLETE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %58 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = icmp ne %struct.TYPE_2__* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %63 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.vio_driver_state*)*, i32 (%struct.vio_driver_state*)** %65, align 8
  %67 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %68 = call i32 %66(%struct.vio_driver_state* %67)
  br label %69

69:                                               ; preds = %61, %56
  br label %70

70:                                               ; preds = %69, %49, %43, %40
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @process_ver(%struct.vio_driver_state*, i8*) #1

declare dso_local i32 @process_attr(%struct.vio_driver_state*, i8*) #1

declare dso_local i32 @process_dreg(%struct.vio_driver_state*, i8*) #1

declare dso_local i32 @process_dunreg(%struct.vio_driver_state*, i8*) #1

declare dso_local i32 @process_rdx(%struct.vio_driver_state*, i8*) #1

declare dso_local i32 @process_unknown(%struct.vio_driver_state*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
