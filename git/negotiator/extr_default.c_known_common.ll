; ModuleID = '/home/carl/AnghaBench/git/negotiator/extr_default.c_known_common.c'
source_filename = "/home/carl/AnghaBench/git/negotiator/extr_default.c_known_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_negotiator = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SEEN = common dso_local global i32 0, align 4
@COMMON_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fetch_negotiator*, %struct.commit*)* @known_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @known_common(%struct.fetch_negotiator* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.fetch_negotiator*, align 8
  %4 = alloca %struct.commit*, align 8
  store %struct.fetch_negotiator* %0, %struct.fetch_negotiator** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %5 = load %struct.commit*, %struct.commit** %4, align 8
  %6 = getelementptr inbounds %struct.commit, %struct.commit* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SEEN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %3, align 8
  %14 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.commit*, %struct.commit** %4, align 8
  %17 = load i32, i32* @COMMON_REF, align 4
  %18 = load i32, i32* @SEEN, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @rev_list_push(i32 %15, %struct.commit* %16, i32 %19)
  %21 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %3, align 8
  %22 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.commit*, %struct.commit** %4, align 8
  %25 = call i32 @mark_common(i32 %23, %struct.commit* %24, i32 1, i32 1)
  br label %26

26:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @rev_list_push(i32, %struct.commit*, i32) #1

declare dso_local i32 @mark_common(i32, %struct.commit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
