; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/fw/cfe/extr_cfe_api.c_cfe_getstdhandle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/fw/cfe/extr_cfe_api.c_cfe_getstdhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfe_xiocb = type { i64, i32, i32, i64, i32 }

@CFE_CMD_DEV_GETHANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfe_getstdhandle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfe_xiocb, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @CFE_CMD_DEV_GETHANDLE, align 4
  %6 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 4
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 1
  store i32 0, i32* %8, align 8
  %9 = load i32, i32* %3, align 4
  %10 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = call i32 @cfe_iocb_dispatch(%struct.cfe_xiocb* %4)
  %13 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @cfe_iocb_dispatch(%struct.cfe_xiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
