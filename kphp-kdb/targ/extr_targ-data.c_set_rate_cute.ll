; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_rate_cute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_rate_cute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_ratecute = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@LEV_TARG_RATECUTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_rate_cute(%struct.lev_ratecute* %0) #0 {
  %2 = alloca %struct.lev_ratecute*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.lev_ratecute* %0, %struct.lev_ratecute** %2, align 8
  %4 = load %struct.lev_ratecute*, %struct.lev_ratecute** %2, align 8
  %5 = getelementptr inbounds %struct.lev_ratecute, %struct.lev_ratecute* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LEV_TARG_RATECUTE, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.lev_ratecute*, %struct.lev_ratecute** %2, align 8
  %12 = getelementptr inbounds %struct.lev_ratecute, %struct.lev_ratecute* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_4__* @get_user(i32 %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %3, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.lev_ratecute*, %struct.lev_ratecute** %2, align 8
  %19 = getelementptr inbounds %struct.lev_ratecute, %struct.lev_ratecute* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = load %struct.lev_ratecute*, %struct.lev_ratecute** %2, align 8
  %25 = getelementptr inbounds %struct.lev_ratecute, %struct.lev_ratecute* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @rate_change(%struct.TYPE_4__* %23, i32 %26)
  br label %28

28:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_4__* @get_user(i32) #1

declare dso_local i32 @rate_change(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
