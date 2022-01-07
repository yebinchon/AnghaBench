; ModuleID = '/home/carl/AnghaBench/git/negotiator/extr_skipping.c_rev_list_push.c'
source_filename = "/home/carl/AnghaBench/git/negotiator/extr_skipping.c_rev_list_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { %struct.commit* }
%struct.data = type { i32, i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SEEN = common dso_local global i32 0, align 4
@COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* (%struct.data*, %struct.commit*, i32)* @rev_list_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @rev_list_push(%struct.data* %0, %struct.commit* %1, i32 %2) #0 {
  %4 = alloca %struct.data*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.entry*, align 8
  store %struct.data* %0, %struct.data** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @SEEN, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.commit*, %struct.commit** %5, align 8
  %12 = getelementptr inbounds %struct.commit, %struct.commit* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %10
  store i32 %15, i32* %13, align 4
  %16 = call %struct.entry* @xcalloc(i32 1, i32 8)
  store %struct.entry* %16, %struct.entry** %7, align 8
  %17 = load %struct.commit*, %struct.commit** %5, align 8
  %18 = load %struct.entry*, %struct.entry** %7, align 8
  %19 = getelementptr inbounds %struct.entry, %struct.entry* %18, i32 0, i32 0
  store %struct.commit* %17, %struct.commit** %19, align 8
  %20 = load %struct.data*, %struct.data** %4, align 8
  %21 = getelementptr inbounds %struct.data, %struct.data* %20, i32 0, i32 1
  %22 = load %struct.entry*, %struct.entry** %7, align 8
  %23 = call i32 @prio_queue_put(i32* %21, %struct.entry* %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @COMMON, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load %struct.data*, %struct.data** %4, align 8
  %30 = getelementptr inbounds %struct.data, %struct.data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.entry*, %struct.entry** %7, align 8
  ret %struct.entry* %34
}

declare dso_local %struct.entry* @xcalloc(i32, i32) #1

declare dso_local i32 @prio_queue_put(i32*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
