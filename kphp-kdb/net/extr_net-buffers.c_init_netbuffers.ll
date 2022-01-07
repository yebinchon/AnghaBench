; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_init_netbuffers.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_init_netbuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.TYPE_2__*, i32 }

@NET_BUFFERS = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@NB_MAGIC_ALLOCA = common dso_local global i32 0, align 4
@NB_Head = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NetBufferSpace = common dso_local global i32* null, align 8
@NET_BUFFER_ALIGN = common dso_local global i64 0, align 8
@NB_Alloc = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_netbuffers() #0 {
  %1 = load i32, i32* @NET_BUFFERS, align 4
  store i32 %1, i32* @NB_max, align 4
  %2 = load i32, i32* @NB_MAGIC_ALLOCA, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NB_Head, i32 0, i32 2), align 8
  store %struct.TYPE_2__* @NB_Head, %struct.TYPE_2__** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NB_Head, i32 0, i32 0), align 8
  store %struct.TYPE_2__* @NB_Head, %struct.TYPE_2__** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @NB_Head, i32 0, i32 1), align 8
  %3 = load i32*, i32** @NetBufferSpace, align 8
  %4 = load i64, i64* @NET_BUFFER_ALIGN, align 8
  %5 = load i32*, i32** @NetBufferSpace, align 8
  %6 = ptrtoint i32* %5 to i64
  %7 = sub nsw i64 %4, %6
  %8 = load i64, i64* @NET_BUFFER_ALIGN, align 8
  %9 = sub nsw i64 %8, 1
  %10 = and i64 %7, %9
  %11 = getelementptr inbounds i32, i32* %3, i64 %10
  store i32* %11, i32** @NB_Alloc, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
