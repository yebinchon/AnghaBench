; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_get_relative_by_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_get_relative_by_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.relative* }
%struct.relative = type { i32, %struct.relative*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.connection* }
%struct.connection = type { i64 }
%struct.TYPE_9__ = type { i64, %struct.connection* }

@RELATIVES = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.relative* @get_relative_by_connection(%struct.connection* %0) #0 {
  %2 = alloca %struct.relative*, align 8
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.relative*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.relative*, %struct.relative** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @RELATIVES, i32 0, i32 0), align 8
  store %struct.relative* %5, %struct.relative** %4, align 8
  br label %6

6:                                                ; preds = %53, %1
  %7 = load %struct.relative*, %struct.relative** %4, align 8
  %8 = getelementptr inbounds %struct.relative, %struct.relative* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %57

11:                                               ; preds = %6
  %12 = load %struct.relative*, %struct.relative** %4, align 8
  %13 = getelementptr inbounds %struct.relative, %struct.relative* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = load %struct.relative*, %struct.relative** %4, align 8
  %18 = getelementptr inbounds %struct.relative, %struct.relative* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.connection*, %struct.connection** %20, align 8
  %22 = load %struct.connection*, %struct.connection** %3, align 8
  %23 = icmp eq %struct.connection* %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = load %struct.relative*, %struct.relative** %4, align 8
  %26 = getelementptr inbounds %struct.relative, %struct.relative* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.connection*, %struct.connection** %3, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load %struct.relative*, %struct.relative** %4, align 8
  store %struct.relative* %35, %struct.relative** %2, align 8
  br label %58

36:                                               ; preds = %24, %16, %11
  %37 = load %struct.relative*, %struct.relative** %4, align 8
  %38 = getelementptr inbounds %struct.relative, %struct.relative* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.relative*, %struct.relative** %4, align 8
  %43 = getelementptr inbounds %struct.relative, %struct.relative* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.connection*, %struct.connection** %47, align 8
  %49 = load %struct.connection*, %struct.connection** %3, align 8
  %50 = icmp eq %struct.connection* %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load %struct.relative*, %struct.relative** %4, align 8
  store %struct.relative* %52, %struct.relative** %2, align 8
  br label %58

53:                                               ; preds = %41, %36
  %54 = load %struct.relative*, %struct.relative** %4, align 8
  %55 = getelementptr inbounds %struct.relative, %struct.relative* %54, i32 0, i32 1
  %56 = load %struct.relative*, %struct.relative** %55, align 8
  store %struct.relative* %56, %struct.relative** %4, align 8
  br label %6

57:                                               ; preds = %6
  store %struct.relative* null, %struct.relative** %2, align 8
  br label %58

58:                                               ; preds = %57, %51, %34
  %59 = load %struct.relative*, %struct.relative** %2, align 8
  ret %struct.relative* %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
