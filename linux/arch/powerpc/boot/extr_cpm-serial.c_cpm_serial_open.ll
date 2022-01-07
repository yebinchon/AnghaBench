; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_cpm-serial.c_cpm_serial_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_cpm-serial.c_cpm_serial_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }

@param = common dso_local global %struct.TYPE_6__* null, align 8
@cbd_addr = common dso_local global %struct.TYPE_5__* null, align 8
@rbdf = common dso_local global %struct.TYPE_5__* null, align 8
@tbdf = common dso_local global %struct.TYPE_5__* null, align 8
@cbd_offset = common dso_local global i32 0, align 4
@CPM_CMD_INIT_RX_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpm_serial_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpm_serial_open() #0 {
  %1 = call i32 (...) @disable_port()
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @param, align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 8
  %4 = call i32 @out_8(i32* %3, i32 16)
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @param, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 7
  %7 = call i32 @out_8(i32* %6, i32 16)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @param, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 6
  %10 = call i32 @out_be16(i32* %9, i32 1)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @param, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 5
  %13 = call i32 @out_be16(i32* %12, i32 0)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @param, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = call i32 @out_be16(i32* %15, i32 0)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @param, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = call i32 @out_be16(i32* %18, i32 0)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @param, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = call i32 @out_be16(i32* %21, i32 0)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cbd_addr, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** @rbdf, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rbdf, align 8
  %25 = bitcast %struct.TYPE_5__* %24 to i32*
  %26 = getelementptr inbounds i32, i32* %25, i64 -1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rbdf, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rbdf, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 40960, i32* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rbdf, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rbdf, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 1
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** @tbdf, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rbdf, align 8
  %36 = bitcast %struct.TYPE_5__* %35 to i32*
  %37 = getelementptr inbounds i32, i32* %36, i64 -2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tbdf, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tbdf, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 8192, i32* %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tbdf, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = call i32 (...) @sync()
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @param, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* @cbd_offset, align 4
  %48 = call i32 @out_be16(i32* %46, i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @param, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* @cbd_offset, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32 @out_be16(i32* %50, i32 %54)
  %56 = load i32, i32* @CPM_CMD_INIT_RX_TX, align 4
  %57 = call i32 @do_cmd(i32 %56)
  %58 = call i32 (...) @enable_port()
  ret i32 0
}

declare dso_local i32 @disable_port(...) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @sync(...) #1

declare dso_local i32 @do_cmd(i32) #1

declare dso_local i32 @enable_port(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
