; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_postpone.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_postpone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.lev_generic = type { i32 }

@Header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @postpone(i32 %0, %struct.lev_generic* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_generic*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.lev_generic* %1, %struct.lev_generic** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 0), align 4
  %10 = icmp slt i32 %8, %9
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ false, %2 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %17 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %18 = call i32 @log_event_size(%struct.lev_generic* %17)
  %19 = call i32 @insert_postponed(i32 %15, %struct.lev_generic* %16, i32 %18)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @insert_postponed(i32, %struct.lev_generic*, i32) #1

declare dso_local i32 @log_event_size(%struct.lev_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
