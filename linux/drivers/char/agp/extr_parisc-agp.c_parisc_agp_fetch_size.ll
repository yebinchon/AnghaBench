; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_parisc-agp.c_parisc_agp_fetch_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_parisc-agp.c_parisc_agp_fetch_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i8* }

@parisc_agp_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@parisc_agp_sizes = common dso_local global %struct.TYPE_4__* null, align 8
@agp_bridge = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @parisc_agp_fetch_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parisc_agp_fetch_size() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parisc_agp_info, i32 0, i32 0), align 4
  %3 = call i32 @MB(i32 1)
  %4 = sdiv i32 %2, %3
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @parisc_agp_sizes, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %5, i32* %8, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @parisc_agp_sizes, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 0
  %11 = bitcast %struct.TYPE_4__* %10 to i8*
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i32 @MB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
