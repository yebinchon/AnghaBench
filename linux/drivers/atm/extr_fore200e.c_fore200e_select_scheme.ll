; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_select_scheme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_select_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32, i32 }

@BUFFER_SCHEME_ONE = common dso_local global i32 0, align 4
@BUFFER_SCHEME_TWO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"VC %d.%d.%d uses buffer scheme %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*)* @fore200e_select_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fore200e_select_scheme(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %4 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %5 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = srem i32 %6, 2
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @BUFFER_SCHEME_ONE, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @BUFFER_SCHEME_TWO, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %3, align 4
  %15 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %16 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %19 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %22 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @DPRINTK(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32 %24)
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @DPRINTK(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
