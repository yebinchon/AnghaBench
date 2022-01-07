; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/fw/cfe/extr_cfe_api.c_cfe_exit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/fw/cfe/extr_cfe_api.c_cfe_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfe_xiocb = type { i32, i32, %struct.TYPE_4__, i32, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CFE_CMD_FW_RESTART = common dso_local global i32 0, align 4
@CFE_FLG_WARMSTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfe_exit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfe_xiocb, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @CFE_CMD_FW_RESTART, align 4
  %7 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 5
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @CFE_FLG_WARMSTART, align 4
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  %17 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 1
  store i32 4, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = call i32 @cfe_iocb_dispatch(%struct.cfe_xiocb* %5)
  %24 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  ret i32 %25
}

declare dso_local i32 @cfe_iocb_dispatch(%struct.cfe_xiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
