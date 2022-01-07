; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_handle_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_handle_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carm_host = type { i32, i32 }
%struct.carm_request = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@HST_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carm_host*, %struct.carm_request*, i64, i32, i32)* @carm_handle_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carm_handle_generic(%struct.carm_host* %0, %struct.carm_request* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.carm_host*, align 8
  %7 = alloca %struct.carm_request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.carm_host* %0, %struct.carm_host** %6, align 8
  store %struct.carm_request* %1, %struct.carm_request** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.carm_host*, %struct.carm_host** %6, align 8
  %13 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* @HST_ERROR, align 4
  %23 = load %struct.carm_host*, %struct.carm_host** %6, align 8
  %24 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %29

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.carm_host*, %struct.carm_host** %6, align 8
  %28 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.carm_host*, %struct.carm_host** %6, align 8
  %31 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %30, i32 0, i32 1
  %32 = call i32 @schedule_work(i32* %31)
  ret void
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
