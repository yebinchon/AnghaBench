; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_set_general_stats.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_set_general_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32 }

@glog = common dso_local global %struct.TYPE_3__* null, align 8
@conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_general_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_general_stats() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @glog, align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i8* null, i8** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @glog, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i8* null, i8** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @glog, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i8* null, i8** %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @glog, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i8* null, i8** %8, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
