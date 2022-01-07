; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_get_id_by_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_get_id_by_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.relative* }
%struct.relative = type { i32, %struct.relative*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.connection* }
%struct.connection = type { i32 }

@RELATIVES = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_id_by_connection(%struct.connection* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.relative*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.relative*, %struct.relative** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @RELATIVES, i32 0, i32 0), align 8
  store %struct.relative* %5, %struct.relative** %4, align 8
  br label %6

6:                                                ; preds = %31, %1
  %7 = load %struct.relative*, %struct.relative** %4, align 8
  %8 = getelementptr inbounds %struct.relative, %struct.relative* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = load %struct.relative*, %struct.relative** %4, align 8
  %13 = getelementptr inbounds %struct.relative, %struct.relative* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load %struct.relative*, %struct.relative** %4, align 8
  %18 = getelementptr inbounds %struct.relative, %struct.relative* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.connection*, %struct.connection** %22, align 8
  %24 = load %struct.connection*, %struct.connection** %3, align 8
  %25 = icmp eq %struct.connection* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.relative*, %struct.relative** %4, align 8
  %28 = getelementptr inbounds %struct.relative, %struct.relative* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %2, align 8
  br label %36

31:                                               ; preds = %16, %11
  %32 = load %struct.relative*, %struct.relative** %4, align 8
  %33 = getelementptr inbounds %struct.relative, %struct.relative* %32, i32 0, i32 1
  %34 = load %struct.relative*, %struct.relative** %33, align 8
  store %struct.relative* %34, %struct.relative** %4, align 8
  br label %6

35:                                               ; preds = %6
  store i64 0, i64* %2, align 8
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
