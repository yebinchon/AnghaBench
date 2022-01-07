; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_free_gather.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_free_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@GD_MAGIC_MASK = common dso_local global i32 0, align 4
@GD_MAGIC = common dso_local global i32 0, align 4
@active_gathers = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gather_data*)* @free_gather to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_gather(%struct.gather_data* %0) #0 {
  %2 = alloca %struct.gather_data*, align 8
  store %struct.gather_data* %0, %struct.gather_data** %2, align 8
  %3 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %4 = icmp ne %struct.gather_data* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %38

6:                                                ; preds = %1
  %7 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %8 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GD_MAGIC_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @GD_MAGIC, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %17 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load i64, i64* @active_gathers, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %23 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %26 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %28, align 8
  %29 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %30 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %33 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %35, align 8
  %36 = load i64, i64* @active_gathers, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* @active_gathers, align 8
  br label %38

38:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
