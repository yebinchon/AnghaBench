; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_host_vcc_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_host_vcc_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { i64, i32, i32** }
%struct.lanai_vcc = type { i64, i32* }

@.str = private unnamed_addr constant [18 x i8] c"Unbinding vci %d\0A\00", align 1
@CONFIG1_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lanai_dev*, %struct.lanai_vcc*)* @host_vcc_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host_vcc_unbind(%struct.lanai_dev* %0, %struct.lanai_vcc* %1) #0 {
  %3 = alloca %struct.lanai_dev*, align 8
  %4 = alloca %struct.lanai_vcc*, align 8
  store %struct.lanai_dev* %0, %struct.lanai_dev** %3, align 8
  store %struct.lanai_vcc* %1, %struct.lanai_vcc** %4, align 8
  %5 = load %struct.lanai_vcc*, %struct.lanai_vcc** %4, align 8
  %6 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %24

10:                                               ; preds = %2
  %11 = load %struct.lanai_vcc*, %struct.lanai_vcc** %4, align 8
  %12 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.lanai_vcc*, %struct.lanai_vcc** %4, align 8
  %16 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %18 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %17, i32 0, i32 2
  %19 = load i32**, i32*** %18, align 8
  %20 = load %struct.lanai_vcc*, %struct.lanai_vcc** %4, align 8
  %21 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32*, i32** %19, i64 %22
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
