; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_hash_table.c_htbl_get_entry.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_hash_table.c_htbl_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@htbl_free_entries = common dso_local global %struct.TYPE_5__* null, align 8
@htbl_allocated_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @htbl_get_entry() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @htbl_free_entries, align 8
  %3 = icmp eq %struct.TYPE_5__* %2, null
  br i1 %3, label %4, label %16

4:                                                ; preds = %0
  %5 = load i32, i32* @htbl_allocated_cnt, align 4
  %6 = icmp sle i32 1, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load i32, i32* @htbl_allocated_cnt, align 4
  %9 = icmp slt i32 %8, 10000
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @htbl_allocated_cnt, align 4
  %12 = call i32 @htbl_init_mem(i32 %11)
  br label %15

13:                                               ; preds = %7, %4
  %14 = call i32 @htbl_init_mem(i32 10000)
  br label %15

15:                                               ; preds = %13, %10
  br label %16

16:                                               ; preds = %15, %0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @htbl_free_entries, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @htbl_free_entries, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %1, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @htbl_free_entries, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** @htbl_free_entries, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %27
}

declare dso_local i32 @htbl_init_mem(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
