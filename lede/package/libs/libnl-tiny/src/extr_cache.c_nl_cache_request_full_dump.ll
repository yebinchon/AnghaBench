; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache.c_nl_cache_request_full_dump.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache.c_nl_cache_request_full_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32 }
%struct.nl_cache = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nl_cache*, %struct.nl_sock*)* }

@.str = private unnamed_addr constant [50 x i8] c"Requesting dump from kernel for cache %p <%s>...\0A\00", align 1
@NLE_OPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_cache_request_full_dump(%struct.nl_sock* %0, %struct.nl_cache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_sock*, align 8
  %5 = alloca %struct.nl_cache*, align 8
  store %struct.nl_sock* %0, %struct.nl_sock** %4, align 8
  store %struct.nl_cache* %1, %struct.nl_cache** %5, align 8
  %6 = load %struct.nl_cache*, %struct.nl_cache** %5, align 8
  %7 = load %struct.nl_cache*, %struct.nl_cache** %5, align 8
  %8 = call i32 @nl_cache_name(%struct.nl_cache* %7)
  %9 = call i32 @NL_DBG(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.nl_cache* %6, i32 %8)
  %10 = load %struct.nl_cache*, %struct.nl_cache** %5, align 8
  %11 = getelementptr inbounds %struct.nl_cache, %struct.nl_cache* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.nl_cache*, %struct.nl_sock*)*, i32 (%struct.nl_cache*, %struct.nl_sock*)** %13, align 8
  %15 = icmp eq i32 (%struct.nl_cache*, %struct.nl_sock*)* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @NLE_OPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.nl_cache*, %struct.nl_cache** %5, align 8
  %21 = getelementptr inbounds %struct.nl_cache, %struct.nl_cache* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.nl_cache*, %struct.nl_sock*)*, i32 (%struct.nl_cache*, %struct.nl_sock*)** %23, align 8
  %25 = load %struct.nl_cache*, %struct.nl_cache** %5, align 8
  %26 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %27 = call i32 %24(%struct.nl_cache* %25, %struct.nl_sock* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @NL_DBG(i32, i8*, %struct.nl_cache*, i32) #1

declare dso_local i32 @nl_cache_name(%struct.nl_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
