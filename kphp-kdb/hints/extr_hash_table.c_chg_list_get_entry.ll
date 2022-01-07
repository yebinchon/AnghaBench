; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hash_table.c_chg_list_get_entry.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hash_table.c_chg_list_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@chg_list_free = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @chg_list_get_entry() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @chg_list_free, align 8
  %3 = icmp eq %struct.TYPE_4__* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @chg_list_init_mem(i32 10000)
  br label %6

6:                                                ; preds = %4, %0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @chg_list_free, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @chg_list_free, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %1, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @chg_list_free, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** @chg_list_free, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %17
}

declare dso_local i32 @chg_list_init_mem(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
