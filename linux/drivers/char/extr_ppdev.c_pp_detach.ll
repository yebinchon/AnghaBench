; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_ppdev.c_pp_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_ppdev.c_pp_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i64 }

@devices = common dso_local global i32** null, align 8
@ppdev_class = common dso_local global i32 0, align 4
@PP_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @pp_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_detach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %3 = load i32**, i32*** @devices, align 8
  %4 = load %struct.parport*, %struct.parport** %2, align 8
  %5 = getelementptr inbounds %struct.parport, %struct.parport* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i32*, i32** %3, i64 %6
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %24

11:                                               ; preds = %1
  %12 = load i32, i32* @ppdev_class, align 4
  %13 = load i32, i32* @PP_MAJOR, align 4
  %14 = load %struct.parport*, %struct.parport** %2, align 8
  %15 = getelementptr inbounds %struct.parport, %struct.parport* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @MKDEV(i32 %13, i64 %16)
  %18 = call i32 @device_destroy(i32 %12, i32 %17)
  %19 = load i32**, i32*** @devices, align 8
  %20 = load %struct.parport*, %struct.parport** %2, align 8
  %21 = getelementptr inbounds %struct.parport, %struct.parport* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32*, i32** %19, i64 %22
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
