; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_measure_tcnt_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_measure_tcnt_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_cprman = type { i32, i32 }

@CM_TCNTCTL = common dso_local global i32 0, align 4
@CM_KILL = common dso_local global i32 0, align 4
@CM_SRC_MASK = common dso_local global i32 0, align 4
@CM_SRC_BITS = common dso_local global i32 0, align 4
@CM_TCNT_SRC1_SHIFT = common dso_local global i32 0, align 4
@CM_OSCCOUNT = common dso_local global i32 0, align 4
@LOCK_TIMEOUT_NS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"timeout waiting for OSCCOUNT\0A\00", align 1
@CM_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"timeout waiting for !BUSY\0A\00", align 1
@CM_TCNTCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bcm2835_cprman*, i32)* @bcm2835_measure_tcnt_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bcm2835_measure_tcnt_mux(%struct.bcm2835_cprman* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm2835_cprman*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcm2835_cprman* %0, %struct.bcm2835_cprman** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 19200, i32* %5, align 4
  %8 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %9 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %12 = load i32, i32* @CM_TCNTCTL, align 4
  %13 = load i32, i32* @CM_KILL, align 4
  %14 = call i32 @cprman_write(%struct.bcm2835_cprman* %11, i32 %12, i32 %13)
  %15 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %16 = load i32, i32* @CM_TCNTCTL, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @CM_SRC_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CM_SRC_BITS, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @CM_TCNT_SRC1_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %19, %24
  %26 = call i32 @cprman_write(%struct.bcm2835_cprman* %15, i32 %16, i32 %25)
  %27 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %28 = load i32, i32* @CM_OSCCOUNT, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @cprman_write(%struct.bcm2835_cprman* %27, i32 %28, i32 %29)
  %31 = call i32 @mdelay(i32 1)
  %32 = call i32 (...) @ktime_get()
  %33 = load i32, i32* @LOCK_TIMEOUT_NS, align 4
  %34 = call i32 @ktime_add_ns(i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %50, %2
  %36 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %37 = load i32, i32* @CM_OSCCOUNT, align 4
  %38 = call i32 @cprman_read(%struct.bcm2835_cprman* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = call i32 (...) @ktime_get()
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @ktime_after(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %47 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %82

50:                                               ; preds = %40
  %51 = call i32 (...) @cpu_relax()
  br label %35

52:                                               ; preds = %35
  %53 = call i32 (...) @ktime_get()
  %54 = load i32, i32* @LOCK_TIMEOUT_NS, align 4
  %55 = call i32 @ktime_add_ns(i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %73, %52
  %57 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %58 = load i32, i32* @CM_TCNTCTL, align 4
  %59 = call i32 @cprman_read(%struct.bcm2835_cprman* %57, i32 %58)
  %60 = load i32, i32* @CM_BUSY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = call i32 (...) @ktime_get()
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @ktime_after(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %70 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %82

73:                                               ; preds = %63
  %74 = call i32 (...) @cpu_relax()
  br label %56

75:                                               ; preds = %56
  %76 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %77 = load i32, i32* @CM_TCNTCNT, align 4
  %78 = call i32 @cprman_read(%struct.bcm2835_cprman* %76, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %80 = load i32, i32* @CM_TCNTCTL, align 4
  %81 = call i32 @cprman_write(%struct.bcm2835_cprman* %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %75, %68, %45
  %83 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %84 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load i32, i32* %6, align 4
  %87 = mul nsw i32 %86, 1000
  %88 = sext i32 %87 to i64
  ret i64 %88
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cprman_write(%struct.bcm2835_cprman*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @cprman_read(%struct.bcm2835_cprman*, i32) #1

declare dso_local i64 @ktime_after(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
