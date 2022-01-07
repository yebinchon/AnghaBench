; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_insert_postponed_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_insert_postponed_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insert_postponed_list(i32 %0, %struct.lev_generic* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_generic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.lev_generic* %1, %struct.lev_generic** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @find_metafile(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %14 = call i32 @log_event_size(%struct.lev_generic* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @insert_postponed(i32 %15, %struct.lev_generic* %16, i32 %17)
  ret i32 1
}

declare dso_local i32 @find_metafile(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @log_event_size(%struct.lev_generic*) #1

declare dso_local i32 @insert_postponed(i32, %struct.lev_generic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
