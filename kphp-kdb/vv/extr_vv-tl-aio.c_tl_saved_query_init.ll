; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_saved_query_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_saved_query_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.tl_saved_query = type { i32, i32, i32, i32, i32 }

@TL_IN_TYPE = common dso_local global i32 0, align 4
@tl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TL_IN_PID = common dso_local global i32* null, align 8
@tl_default_aio_fail = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_saved_query* @tl_saved_query_init() #0 {
  %1 = alloca %struct.tl_saved_query*, align 8
  %2 = call %struct.tl_saved_query* @zmalloc0(i32 20)
  store %struct.tl_saved_query* %2, %struct.tl_saved_query** %1, align 8
  %3 = load i32, i32* @TL_IN_TYPE, align 4
  %4 = load %struct.tl_saved_query*, %struct.tl_saved_query** %1, align 8
  %5 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tl, i32 0, i32 1), align 4
  %7 = load %struct.tl_saved_query*, %struct.tl_saved_query** %1, align 8
  %8 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load i32*, i32** @TL_IN_PID, align 8
  %10 = call i32 @assert(i32* %9)
  %11 = load i32*, i32** @TL_IN_PID, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.tl_saved_query*, %struct.tl_saved_query** %1, align 8
  %14 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tl, i32 0, i32 0), align 4
  %16 = load %struct.tl_saved_query*, %struct.tl_saved_query** %1, align 8
  %17 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @tl_default_aio_fail, align 4
  %19 = load %struct.tl_saved_query*, %struct.tl_saved_query** %1, align 8
  %20 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.tl_saved_query*, %struct.tl_saved_query** %1, align 8
  ret %struct.tl_saved_query* %21
}

declare dso_local %struct.tl_saved_query* @zmalloc0(i32) #1

declare dso_local i32 @assert(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
