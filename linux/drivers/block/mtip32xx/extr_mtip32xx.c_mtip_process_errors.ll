; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_process_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_process_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@PORT_IRQ_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Clearing PxSERR.DIAG.x\0A\00", align 1
@PORT_SCR_ERR = common dso_local global i64 0, align 8
@PORT_IRQ_PHYRDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Clearing PxSERR.DIAG.n\0A\00", align 1
@PORT_IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Port stat errors %x unhandled\0A\00", align 1
@PORT_IRQ_TF_ERR = common dso_local global i32 0, align 4
@PORT_IRQ_IF_ERR = common dso_local global i32 0, align 4
@MTIP_PF_EH_ACTIVE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*, i32)* @mtip_process_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_process_errors(%struct.driver_data* %0, i32 %1) #0 {
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @PORT_IRQ_CONNECT, align 4
  %7 = and i32 %5, %6
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %12 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_warn(i32* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %17 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PORT_SCR_ERR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 67108864, i64 %22)
  br label %24

24:                                               ; preds = %10, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PORT_IRQ_PHYRDY, align 4
  %27 = and i32 %25, %26
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %32 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_warn(i32* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %37 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PORT_SCR_ERR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 65536, i64 %42)
  br label %44

44:                                               ; preds = %30, %24
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @PORT_IRQ_HANDLED, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %53 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @PORT_IRQ_HANDLED, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = call i32 (i32*, i8*, ...) @dev_warn(i32* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %62 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = call i64 @mtip_check_surprise_removal(%struct.TYPE_4__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %88

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67, %44
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @PORT_IRQ_TF_ERR, align 4
  %71 = load i32, i32* @PORT_IRQ_IF_ERR, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = call i64 @likely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %68
  %77 = load i32, i32* @MTIP_PF_EH_ACTIVE_BIT, align 4
  %78 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %79 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = call i32 @set_bit(i32 %77, i32* %81)
  %83 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %84 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @wake_up_interruptible(i32* %86)
  br label %88

88:                                               ; preds = %66, %76, %68
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @mtip_check_surprise_removal(%struct.TYPE_4__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
