; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_raw_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_raw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@wait_fd_block = common dso_local global i32 0, align 4
@block_flag = common dso_local global i32 0, align 4
@ADK_MSBSYNC = common dso_local global i32 0, align 4
@custom = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ADK_SETCLR = common dso_local global i32 0, align 4
@ADK_WORDSYNC = common dso_local global i32 0, align 4
@ADK_FAST = common dso_local global i32 0, align 4
@MFM_SYNC = common dso_local global i32 0, align 4
@raw_buf = common dso_local global i64 0, align 8
@unit = common dso_local global %struct.TYPE_5__* null, align 8
@DSKLEN_DMAEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @raw_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_read(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 3
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @get_fdc(i32 %5)
  %7 = load i32, i32* @wait_fd_block, align 4
  %8 = load i32, i32* @block_flag, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @wait_event(i32 %7, i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @fd_select(i32 %13)
  %15 = load i32, i32* @ADK_MSBSYNC, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @custom, i32 0, i32 0), align 8
  %16 = load i32, i32* @ADK_SETCLR, align 4
  %17 = load i32, i32* @ADK_WORDSYNC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ADK_FAST, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @custom, i32 0, i32 0), align 8
  %21 = load i32, i32* @MFM_SYNC, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @custom, i32 0, i32 3), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @custom, i32 0, i32 1), align 4
  %22 = load i64, i64* @raw_buf, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = call i64 @ZTWO_PADDR(i32* %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @custom, i32 0, i32 2), align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unit, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 2
  %36 = load i32, i32* @DSKLEN_DMAEN, align 4
  %37 = sext i32 %36 to i64
  %38 = or i64 %35, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @custom, i32 0, i32 1), align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unit, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 2
  %50 = load i32, i32* @DSKLEN_DMAEN, align 4
  %51 = sext i32 %50 to i64
  %52 = or i64 %49, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @custom, i32 0, i32 1), align 4
  store i32 1, i32* @block_flag, align 4
  %54 = load i32, i32* @wait_fd_block, align 4
  %55 = load i32, i32* @block_flag, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @wait_event(i32 %54, i32 %58)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @custom, i32 0, i32 1), align 4
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @fd_deselect(i32 %60)
  %62 = call i32 (...) @rel_fdc()
  ret void
}

declare dso_local i32 @get_fdc(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @fd_select(i32) #1

declare dso_local i64 @ZTWO_PADDR(i32*) #1

declare dso_local i32 @fd_deselect(i32) #1

declare dso_local i32 @rel_fdc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
