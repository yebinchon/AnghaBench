; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_get_relative_by_id.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_get_relative_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.relative* }
%struct.relative = type { i32, %struct.relative*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@RELATIVES = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.relative* @get_relative_by_id(i64 %0) #0 {
  %2 = alloca %struct.relative*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.relative*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.relative*, %struct.relative** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @RELATIVES, i32 0, i32 0), align 8
  store %struct.relative* %5, %struct.relative** %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.relative*, %struct.relative** %4, align 8
  %8 = getelementptr inbounds %struct.relative, %struct.relative* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load %struct.relative*, %struct.relative** %4, align 8
  %13 = getelementptr inbounds %struct.relative, %struct.relative* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load %struct.relative*, %struct.relative** %4, align 8
  store %struct.relative* %19, %struct.relative** %2, align 8
  br label %25

20:                                               ; preds = %11
  %21 = load %struct.relative*, %struct.relative** %4, align 8
  %22 = getelementptr inbounds %struct.relative, %struct.relative* %21, i32 0, i32 1
  %23 = load %struct.relative*, %struct.relative** %22, align 8
  store %struct.relative* %23, %struct.relative** %4, align 8
  br label %6

24:                                               ; preds = %6
  store %struct.relative* null, %struct.relative** %2, align 8
  br label %25

25:                                               ; preds = %24, %18
  %26 = load %struct.relative*, %struct.relative** %2, align 8
  ret %struct.relative* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
