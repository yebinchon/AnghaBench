; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_discovery0.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_discovery0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32, i32 }

@IO_BUFFER_LENGTH = common dso_local global i32 0, align 4
@OPAL_DISCOVERY_COMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @opal_discovery0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_discovery0(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %8 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IO_BUFFER_LENGTH, align 4
  %11 = call i32 @memset(i32 %9, i32 0, i32 %10)
  %12 = load i32, i32* @OPAL_DISCOVERY_COMID, align 4
  %13 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %14 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %16 = call i32 @opal_recv_cmd(%struct.opal_dev* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %23 = call i32 @opal_discovery0_end(%struct.opal_dev* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %19
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @opal_recv_cmd(%struct.opal_dev*) #1

declare dso_local i32 @opal_discovery0_end(%struct.opal_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
