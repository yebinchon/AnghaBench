; ModuleID = '/home/carl/AnghaBench/i3/src/extr_log.c_store_log_markers.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_log.c_store_log_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8* }

@logwalk = common dso_local global i8* null, align 8
@logbuffer = common dso_local global i8* null, align 8
@header = common dso_local global %struct.TYPE_2__* null, align 8
@loglastwrap = common dso_local global i8* null, align 8
@logbuffer_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @store_log_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_log_markers() #0 {
  %1 = load i8*, i8** @logwalk, align 8
  %2 = load i8*, i8** @logbuffer, align 8
  %3 = ptrtoint i8* %1 to i64
  %4 = ptrtoint i8* %2 to i64
  %5 = sub i64 %3, %4
  %6 = inttoptr i64 %5 to i8*
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @header, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  store i8* %6, i8** %8, align 8
  %9 = load i8*, i8** @loglastwrap, align 8
  %10 = load i8*, i8** @logbuffer, align 8
  %11 = ptrtoint i8* %9 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @header, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @logbuffer_size, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @header, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
