; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_fs_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_fs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.atm_trafprm, %struct.atm_trafprm }
%struct.atm_trafprm = type { i32 }
%struct.fs_dev = type { i32, i32**, i32*, %struct.fs_vcc* }
%struct.fs_vcc = type { i32, %struct.fs_vcc*, i32 }

@ATM_VF_READY = common dso_local global i32 0, align 4
@FS_DEBUG_QSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"--==**[%d]**==--\00", align 1
@FS_DEBUG_QUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Waiting for skb %p to be sent.\0A\00", align 1
@QE_CMD_TX_PURGE_INH = common dso_local global i32 0, align 4
@QE_CMD_RX_PURGE_INH = common dso_local global i32 0, align 4
@QE_CMD_IMM_INQ = common dso_local global i32 0, align 4
@QE_CMD_REG_WR = common dso_local global i32 0, align 4
@FS_DEBUG_ALLOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Free vcc: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @fs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_close(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca %struct.fs_dev*, align 8
  %4 = alloca %struct.fs_vcc*, align 8
  %5 = alloca %struct.atm_trafprm*, align 8
  %6 = alloca %struct.atm_trafprm*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %7 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %8 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.fs_dev* @FS_DEV(i32 %9)
  store %struct.fs_dev* %10, %struct.fs_dev** %3, align 8
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %12 = call %struct.fs_vcc* @FS_VCC(%struct.atm_vcc* %11)
  store %struct.fs_vcc* %12, %struct.fs_vcc** %4, align 8
  %13 = call i32 (...) @func_enter()
  %14 = load i32, i32* @ATM_VF_READY, align 4
  %15 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %16 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %15, i32 0, i32 1
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  %18 = load i32, i32* @FS_DEBUG_QSIZE, align 4
  %19 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %20 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %19, i32 0, i32 3
  %21 = load %struct.fs_vcc*, %struct.fs_vcc** %20, align 8
  %22 = call i32 @fs_dprintk(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.fs_vcc* %21)
  %23 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %24 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %23, i32 0, i32 1
  %25 = load %struct.fs_vcc*, %struct.fs_vcc** %24, align 8
  %26 = icmp ne %struct.fs_vcc* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %1
  %28 = load i32, i32* @FS_DEBUG_QUEUE, align 4
  %29 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %30 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %29, i32 0, i32 1
  %31 = load %struct.fs_vcc*, %struct.fs_vcc** %30, align 8
  %32 = call i32 @fs_dprintk(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.fs_vcc* %31)
  %33 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %34 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %37 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %36, i32 0, i32 1
  %38 = load %struct.fs_vcc*, %struct.fs_vcc** %37, align 8
  %39 = icmp ne %struct.fs_vcc* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @wait_event_interruptible(i32 %35, i32 %41)
  br label %43

43:                                               ; preds = %27, %1
  %44 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %45 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store %struct.atm_trafprm* %46, %struct.atm_trafprm** %5, align 8
  %47 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %48 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store %struct.atm_trafprm* %49, %struct.atm_trafprm** %6, align 8
  %50 = load %struct.atm_trafprm*, %struct.atm_trafprm** %5, align 8
  %51 = call i64 @DO_DIRECTION(%struct.atm_trafprm* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %43
  %54 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %55 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %56 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %55, i32 0, i32 0
  %57 = load i32, i32* @QE_CMD_TX_PURGE_INH, align 4
  %58 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %59 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %57, %60
  %62 = call i32 @submit_command(%struct.fs_dev* %54, i32* %56, i32 %61, i32 0, i32 0, i32 0)
  %63 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %64 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %67 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @clear_bit(i32 %65, i32* %68)
  br label %70

70:                                               ; preds = %53, %43
  %71 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %72 = call i64 @DO_DIRECTION(%struct.atm_trafprm* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %110

74:                                               ; preds = %70
  %75 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %76 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %77 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %76, i32 0, i32 0
  %78 = load i32, i32* @QE_CMD_RX_PURGE_INH, align 4
  %79 = load i32, i32* @QE_CMD_IMM_INQ, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %82 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %80, %83
  %85 = call i32 @submit_command(%struct.fs_dev* %75, i32* %77, i32 %84, i32 0, i32 0, i32 0)
  %86 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %87 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %86, i32 0, i32 1
  %88 = load i32**, i32*** %87, align 8
  %89 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %90 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %88, i64 %92
  store i32* null, i32** %93, align 8
  %94 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %95 = call i64 @IS_FS50(%struct.fs_dev* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %74
  %98 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %99 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %100 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %99, i32 0, i32 0
  %101 = load i32, i32* @QE_CMD_REG_WR, align 4
  %102 = load i32, i32* @QE_CMD_IMM_INQ, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %105 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 128, %106
  %108 = call i32 @submit_command(%struct.fs_dev* %98, i32* %100, i32 %103, i32 %107, i32 -1, i32 0)
  br label %109

109:                                              ; preds = %97, %74
  br label %110

110:                                              ; preds = %109, %70
  %111 = load i32, i32* @FS_DEBUG_ALLOC, align 4
  %112 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %113 = call i32 @fs_dprintk(i32 %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.fs_vcc* %112)
  %114 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %115 = call i32 @kfree(%struct.fs_vcc* %114)
  %116 = call i32 (...) @func_exit()
  ret void
}

declare dso_local %struct.fs_dev* @FS_DEV(i32) #1

declare dso_local %struct.fs_vcc* @FS_VCC(%struct.atm_vcc*) #1

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @fs_dprintk(i32, i8*, %struct.fs_vcc*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @DO_DIRECTION(%struct.atm_trafprm*) #1

declare dso_local i32 @submit_command(%struct.fs_dev*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_FS50(%struct.fs_dev*) #1

declare dso_local i32 @kfree(%struct.fs_vcc*) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
