; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_uPD98402.c_uPD98402_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_uPD98402.c_uPD98402_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"phy_start\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCR = common dso_local global i32 0, align 4
@uPD98402_PFM_FJ = common dso_local global i32 0, align 4
@PCMR = common dso_local global i32 0, align 4
@PCOCR = common dso_local global i32 0, align 4
@uPD98402_PCO_HECC = common dso_local global i32 0, align 4
@PCOMR = common dso_local global i32 0, align 4
@PICR = common dso_local global i32 0, align 4
@uPD98402_INT_PFM = common dso_local global i32 0, align 4
@uPD98402_INT_ALM = common dso_local global i32 0, align 4
@uPD98402_INT_RFO = common dso_local global i32 0, align 4
@uPD98402_INT_LOS = common dso_local global i32 0, align 4
@PIMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*)* @uPD98402_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uPD98402_start(%struct.atm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_dev*, align 8
  store %struct.atm_dev* %0, %struct.atm_dev** %3, align 8
  %4 = call i32 @DPRINTK(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @kmalloc(i32 4, i32 %5)
  %7 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %8 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = icmp ne i32 %6, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %15 = call %struct.TYPE_4__* @PRIV(%struct.atm_dev* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %19 = call %struct.TYPE_4__* @PRIV(%struct.atm_dev* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @memset(%struct.TYPE_3__* %20, i32 0, i32 4)
  %22 = load i32, i32* @PCR, align 4
  %23 = call i32 @GET(i32 %22)
  %24 = load i32, i32* @uPD98402_PFM_FJ, align 4
  %25 = load i32, i32* @PCMR, align 4
  %26 = call i32 @PUT(i32 %24, i32 %25)
  %27 = load i32, i32* @PCOCR, align 4
  %28 = call i32 @GET(i32 %27)
  %29 = load i32, i32* @uPD98402_PCO_HECC, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* @PCOMR, align 4
  %32 = call i32 @PUT(i32 %30, i32 %31)
  %33 = load i32, i32* @PICR, align 4
  %34 = call i32 @GET(i32 %33)
  %35 = load i32, i32* @uPD98402_INT_PFM, align 4
  %36 = load i32, i32* @uPD98402_INT_ALM, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @uPD98402_INT_RFO, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @uPD98402_INT_LOS, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* @PIMR, align 4
  %44 = call i32 @PUT(i32 %42, i32 %43)
  %45 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %46 = call i32 @fetch_stats(%struct.atm_dev* %45, i32* null, i32 1)
  %47 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %48 = call %struct.TYPE_4__* @PRIV(%struct.atm_dev* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = call i32 @atomic_set(i32* %50, i32 -1)
  %52 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %53 = call %struct.TYPE_4__* @PRIV(%struct.atm_dev* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = call i32 @atomic_set(i32* %55, i32 -1)
  %57 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %58 = call %struct.TYPE_4__* @PRIV(%struct.atm_dev* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @atomic_set(i32* %60, i32 -1)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %13, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.TYPE_4__* @PRIV(%struct.atm_dev*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @GET(i32) #1

declare dso_local i32 @PUT(i32, i32) #1

declare dso_local i32 @fetch_stats(%struct.atm_dev*, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
