; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i32, i32, i32 }
%struct.ldc_packet = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@LDC_CHANNEL_UP = common dso_local global i64 0, align 8
@LDC_PACKET_SIZE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, i8*, i32)* @write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_raw(%struct.ldc_channel* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ldc_channel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ldc_packet*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %13 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %16 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %15, i32 0, i32 2
  %17 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %18 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %17, i32 0, i32 1
  %19 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %20 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %19, i32 0, i32 0
  %21 = call i64 @sun4v_ldc_tx_get_state(i32 %14, i32* %16, i32* %18, i64* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %71

29:                                               ; preds = %3
  %30 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %31 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LDC_CHANNEL_UP, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %40 = call i32 @LDC_ABORT(%struct.ldc_channel* %39)
  store i32 %40, i32* %4, align 4
  br label %71

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @LDC_PACKET_SIZE, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EMSGSIZE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %71

48:                                               ; preds = %41
  %49 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %50 = call %struct.ldc_packet* @data_get_tx_packet(%struct.ldc_channel* %49, i64* %9)
  store %struct.ldc_packet* %50, %struct.ldc_packet** %8, align 8
  %51 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %52 = icmp ne %struct.ldc_packet* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %71

56:                                               ; preds = %48
  %57 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @memcpy(%struct.ldc_packet* %57, i8* %58, i32 %59)
  %61 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %62 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @send_tx_packet(%struct.ldc_channel* %61, %struct.ldc_packet* %62, i64 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %67, %56
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %53, %45, %38, %26
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @sun4v_ldc_tx_get_state(i32, i32*, i32*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @LDC_ABORT(%struct.ldc_channel*) #1

declare dso_local %struct.ldc_packet* @data_get_tx_packet(%struct.ldc_channel*, i64*) #1

declare dso_local i32 @memcpy(%struct.ldc_packet*, i8*, i32) #1

declare dso_local i32 @send_tx_packet(%struct.ldc_channel*, %struct.ldc_packet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
