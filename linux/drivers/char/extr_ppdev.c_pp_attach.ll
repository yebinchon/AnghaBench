; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_ppdev.c_pp_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_ppdev.c_pp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.parport = type { i64, i32 }

@devices = common dso_local global %struct.device** null, align 8
@ppdev_class = common dso_local global i32 0, align 4
@PP_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"parport%d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to create device parport%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @pp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_attach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %4 = load %struct.device**, %struct.device*** @devices, align 8
  %5 = load %struct.parport*, %struct.parport** %2, align 8
  %6 = getelementptr inbounds %struct.parport, %struct.parport* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.device*, %struct.device** %4, i64 %7
  %9 = load %struct.device*, %struct.device** %8, align 8
  %10 = icmp ne %struct.device* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %41

12:                                               ; preds = %1
  %13 = load i32, i32* @ppdev_class, align 4
  %14 = load %struct.parport*, %struct.parport** %2, align 8
  %15 = getelementptr inbounds %struct.parport, %struct.parport* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PP_MAJOR, align 4
  %18 = load %struct.parport*, %struct.parport** %2, align 8
  %19 = getelementptr inbounds %struct.parport, %struct.parport* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @MKDEV(i32 %17, i64 %20)
  %22 = load %struct.parport*, %struct.parport** %2, align 8
  %23 = getelementptr inbounds %struct.parport, %struct.parport* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.device* @device_create(i32 %13, i32 %16, i32 %21, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %24)
  store %struct.device* %25, %struct.device** %3, align 8
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = call i64 @IS_ERR(%struct.device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %12
  %30 = load %struct.parport*, %struct.parport** %2, align 8
  %31 = getelementptr inbounds %struct.parport, %struct.parport* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  br label %41

34:                                               ; preds = %12
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.device**, %struct.device*** @devices, align 8
  %37 = load %struct.parport*, %struct.parport** %2, align 8
  %38 = getelementptr inbounds %struct.parport, %struct.parport* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.device*, %struct.device** %36, i64 %39
  store %struct.device* %35, %struct.device** %40, align 8
  br label %41

41:                                               ; preds = %34, %29, %11
  ret void
}

declare dso_local %struct.device* @device_create(i32, i32, i32, i32*, i8*, i64) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
