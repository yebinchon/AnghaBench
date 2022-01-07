; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_do_loader_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_do_loader_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8* }

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"do_loader_command\00", align 1
@DMA_VALID = common dso_local global i64 0, align 8
@amb_mem = common dso_local global i32 0, align 4
@doorbell = common dso_local global i32 0, align 4
@onegigmask = common dso_local global i32 0, align 4
@command_timeouts = common dso_local global i32* null, align 8
@COMMAND_IN_PROGRESS = common dso_local global i64 0, align 8
@DBG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"command %d timed out\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@adapter_start = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"start command did not clear doorbell, res=%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i64)* @do_loader_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_loader_command(%struct.TYPE_5__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @DBG_FLOW, align 4
  %10 = load i32, i32* @DBG_LOAD, align 4
  %11 = or i32 %9, %10
  %12 = call i32 (i32, i8*, ...) @PRINTD(i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store volatile i8* null, i8** %14, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i8* @cpu_to_be32(i64 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store volatile i8* %16, i8** %18, align 8
  %19 = load i64, i64* @DMA_VALID, align 8
  %20 = call i8* @cpu_to_be32(i64 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store volatile i8* %20, i8** %22, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @amb_mem, align 4
  %25 = load i32, i32* @doorbell, align 4
  %26 = call i32 @offsetof(i32 %24, i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = call i32 @virt_to_bus(%struct.TYPE_5__* %27)
  %29 = load i32, i32* @onegigmask, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @wr_mem(i32* %23, i32 %26, i32 %31)
  %33 = load i32*, i32** @command_timeouts, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 10
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %71, %3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load volatile i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load volatile i8*, i8** %46, align 8
  %48 = load i64, i64* @COMMAND_IN_PROGRESS, align 8
  %49 = call i8* @cpu_to_be32(i64 %48)
  %50 = icmp eq i8* %47, %49
  br label %51

51:                                               ; preds = %44, %39
  %52 = phi i1 [ true, %39 ], [ %50, %44 ]
  br i1 %52, label %53, label %72

53:                                               ; preds = %51
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @msleep_interruptible(i64 %57)
  store i64 %58, i64* %8, align 8
  br label %71

59:                                               ; preds = %53
  %60 = load i32, i32* @DBG_LOAD, align 4
  %61 = load i32, i32* @DBG_ERR, align 4
  %62 = or i32 %60, %61
  %63 = load i64, i64* %7, align 8
  %64 = call i32 (i32, i8*, ...) @PRINTD(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @dump_registers(i32* %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = call i32 @dump_loader_block(%struct.TYPE_5__* %67)
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %112

71:                                               ; preds = %56
  br label %39

72:                                               ; preds = %51
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @adapter_start, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %72
  store i64 100, i64* %8, align 8
  br label %77

77:                                               ; preds = %103, %76
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @amb_mem, align 4
  %80 = load i32, i32* @doorbell, align 4
  %81 = call i32 @offsetof(i32 %79, i32 %80)
  %82 = call i64 @rd_plain(i32* %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %77
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @msleep_interruptible(i64 %88)
  store i64 %89, i64* %8, align 8
  br label %103

90:                                               ; preds = %84
  %91 = load i32, i32* @DBG_LOAD, align 4
  %92 = load i32, i32* @DBG_ERR, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load volatile i8*, i8** %95, align 8
  %97 = call i64 @be32_to_cpu(i8* %96)
  %98 = call i32 (i32, i8*, ...) @PRINTD(i32 %93, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @dump_registers(i32* %99)
  %101 = load i32, i32* @ETIMEDOUT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %112

103:                                              ; preds = %87
  br label %77

104:                                              ; preds = %77
  store i32 0, i32* %4, align 4
  br label %112

105:                                              ; preds = %72
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load volatile i8*, i8** %108, align 8
  %110 = call i64 @be32_to_cpu(i8* %109)
  %111 = call i32 @decode_loader_result(i64 %106, i64 %110)
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %105, %104, %90, %59
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @wr_mem(i32*, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @virt_to_bus(%struct.TYPE_5__*) #1

declare dso_local i64 @msleep_interruptible(i64) #1

declare dso_local i32 @dump_registers(i32*) #1

declare dso_local i32 @dump_loader_block(%struct.TYPE_5__*) #1

declare dso_local i64 @rd_plain(i32*, i32) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local i32 @decode_loader_result(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
