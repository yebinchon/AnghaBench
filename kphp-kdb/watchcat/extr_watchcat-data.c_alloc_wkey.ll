; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-data.c_alloc_wkey.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-data.c_alloc_wkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@keys_cnt = common dso_local global i32 0, align 4
@wkey_mem = common dso_local global %struct.TYPE_6__* null, align 8
@keys_memory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @alloc_wkey() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = load i32, i32* @keys_cnt, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @keys_cnt, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wkey_mem, align 8
  %5 = icmp ne %struct.TYPE_6__* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wkey_mem, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %1, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wkey_mem, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** @wkey_mem, align 8
  br label %17

11:                                               ; preds = %0
  %12 = load i32, i32* @keys_memory, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* @keys_memory, align 4
  %16 = call %struct.TYPE_6__* @dl_malloc(i32 8)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %1, align 8
  br label %17

17:                                               ; preds = %11, %6
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %19 = call i32 @memset(%struct.TYPE_6__* %18, i32 0, i32 8)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %20
}

declare dso_local %struct.TYPE_6__* @dl_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
