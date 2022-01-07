; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_ks0108.c_ks0108_parport_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_ks0108.c_ks0108_parport_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i64 }
%struct.pardev_cb = type { i32 }

@ks0108_port = common dso_local global i64 0, align 8
@PARPORT_DEV_EXCL = common dso_local global i32 0, align 4
@KS0108_NAME = common dso_local global i32 0, align 4
@ks0108_pardevice = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"ERROR: parport didn't register new device\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"could not claim access to parport %i. Aborting.\0A\00", align 1
@ks0108_parport = common dso_local global %struct.parport* null, align 8
@ks0108_inited = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @ks0108_parport_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks0108_parport_attach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.pardev_cb, align 4
  store %struct.parport* %0, %struct.parport** %2, align 8
  %4 = load %struct.parport*, %struct.parport** %2, align 8
  %5 = getelementptr inbounds %struct.parport, %struct.parport* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ks0108_port, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = call i32 @memset(%struct.pardev_cb* %3, i32 0, i32 4)
  %12 = load i32, i32* @PARPORT_DEV_EXCL, align 4
  %13 = getelementptr inbounds %struct.pardev_cb, %struct.pardev_cb* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.parport*, %struct.parport** %2, align 8
  %15 = load i32, i32* @KS0108_NAME, align 4
  %16 = call i32* @parport_register_dev_model(%struct.parport* %14, i32 %15, %struct.pardev_cb* %3, i32 0)
  store i32* %16, i32** @ks0108_pardevice, align 8
  %17 = load i32*, i32** @ks0108_pardevice, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %33

21:                                               ; preds = %10
  %22 = load i32*, i32** @ks0108_pardevice, align 8
  %23 = call i64 @parport_claim(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* @ks0108_port, align 8
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  br label %30

28:                                               ; preds = %21
  %29 = load %struct.parport*, %struct.parport** %2, align 8
  store %struct.parport* %29, %struct.parport** @ks0108_parport, align 8
  store i32 1, i32* @ks0108_inited, align 4
  br label %33

30:                                               ; preds = %25
  %31 = load i32*, i32** @ks0108_pardevice, align 8
  %32 = call i32 @parport_unregister_device(i32* %31)
  store i32* null, i32** @ks0108_pardevice, align 8
  br label %33

33:                                               ; preds = %30, %28, %19, %9
  ret void
}

declare dso_local i32 @memset(%struct.pardev_cb*, i32, i32) #1

declare dso_local i32* @parport_register_dev_model(%struct.parport*, i32, %struct.pardev_cb*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @parport_claim(i32*) #1

declare dso_local i32 @parport_unregister_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
