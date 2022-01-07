; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_ppc6lnx.c_ppc6_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_ppc6lnx.c_ppc6_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@fifo_wait = common dso_local global i32 0, align 4
@ACCESS_REG = common dso_local global i32 0, align 4
@ACCESS_WRITE = common dso_local global i32 0, align 4
@REG_RAMSIZE = common dso_local global i32 0, align 4
@RAMSIZE_128K = common dso_local global i32 0, align 4
@ACCESS_READ = common dso_local global i32 0, align 4
@REG_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @ppc6_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc6_open(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = call i32 @ppc6_select(%struct.TYPE_7__* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %47

11:                                               ; preds = %1
  %12 = load i32, i32* @fifo_wait, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = load i32, i32* @ACCESS_REG, align 4
  %20 = load i32, i32* @ACCESS_WRITE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @REG_RAMSIZE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @ppc6_send_cmd(%struct.TYPE_7__* %18, i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = load i32, i32* @RAMSIZE_128K, align 4
  %27 = call i32 @ppc6_wr_data_byte(%struct.TYPE_7__* %25, i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = load i32, i32* @ACCESS_REG, align 4
  %30 = load i32, i32* @ACCESS_READ, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @REG_VERSION, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @ppc6_send_cmd(%struct.TYPE_7__* %28, i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = call i32 @ppc6_rd_data_byte(%struct.TYPE_7__* %35)
  %37 = and i32 %36, 63
  %38 = icmp eq i32 %37, 12
  br i1 %38, label %39, label %45

39:                                               ; preds = %11
  %40 = load i32, i32* @fifo_wait, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %11
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @ppc6_select(%struct.TYPE_7__*) #1

declare dso_local i32 @ppc6_send_cmd(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ppc6_wr_data_byte(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ppc6_rd_data_byte(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
