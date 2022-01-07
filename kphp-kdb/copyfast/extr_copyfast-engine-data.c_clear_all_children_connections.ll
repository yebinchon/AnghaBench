; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_clear_all_children_connections.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_clear_all_children_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.relative* }
%struct.relative = type { i32, %struct.TYPE_3__*, %struct.relative* }
%struct.TYPE_3__ = type { i64 }

@RELATIVES = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_all_children_connections() #0 {
  %1 = alloca %struct.relative*, align 8
  %2 = load %struct.relative*, %struct.relative** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @RELATIVES, i32 0, i32 0), align 8
  store %struct.relative* %2, %struct.relative** %1, align 8
  br label %3

3:                                                ; preds = %23, %0
  %4 = load %struct.relative*, %struct.relative** %1, align 8
  %5 = getelementptr inbounds %struct.relative, %struct.relative* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = load %struct.relative*, %struct.relative** %1, align 8
  %10 = getelementptr inbounds %struct.relative, %struct.relative* %9, i32 0, i32 2
  %11 = load %struct.relative*, %struct.relative** %10, align 8
  store %struct.relative* %11, %struct.relative** %1, align 8
  %12 = load %struct.relative*, %struct.relative** %1, align 8
  %13 = getelementptr inbounds %struct.relative, %struct.relative* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %8
  %19 = load %struct.relative*, %struct.relative** %1, align 8
  %20 = getelementptr inbounds %struct.relative, %struct.relative* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @delete_relative(%struct.TYPE_3__* %21, i32 1)
  br label %23

23:                                               ; preds = %18, %8
  br label %3

24:                                               ; preds = %3
  ret void
}

declare dso_local i32 @delete_relative(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
