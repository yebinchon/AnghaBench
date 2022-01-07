; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_delete_dead_connections.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_delete_dead_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.relative* }
%struct.relative = type { i32, %struct.TYPE_9__*, %struct.relative* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }

@RELATIVES = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cr_ok = common dso_local global i64 0, align 8
@IDLE_LIMIT = common dso_local global i64 0, align 8
@precise_now = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_dead_connections() #0 {
  %1 = alloca %struct.relative*, align 8
  %2 = load %struct.relative*, %struct.relative** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @RELATIVES, i32 0, i32 0), align 8
  store %struct.relative* %2, %struct.relative** %1, align 8
  br label %3

3:                                                ; preds = %67, %0
  %4 = load %struct.relative*, %struct.relative** %1, align 8
  %5 = getelementptr inbounds %struct.relative, %struct.relative* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %68

8:                                                ; preds = %3
  %9 = load %struct.relative*, %struct.relative** %1, align 8
  %10 = getelementptr inbounds %struct.relative, %struct.relative* %9, i32 0, i32 2
  %11 = load %struct.relative*, %struct.relative** %10, align 8
  store %struct.relative* %11, %struct.relative** %1, align 8
  %12 = load %struct.relative*, %struct.relative** %1, align 8
  %13 = getelementptr inbounds %struct.relative, %struct.relative* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %67

18:                                               ; preds = %8
  %19 = load %struct.relative*, %struct.relative** %1, align 8
  %20 = getelementptr inbounds %struct.relative, %struct.relative* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.relative*, %struct.relative** %1, align 8
  %29 = getelementptr inbounds %struct.relative, %struct.relative* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %27, %34
  br i1 %35, label %61, label %36

36:                                               ; preds = %18
  %37 = load %struct.relative*, %struct.relative** %1, align 8
  %38 = getelementptr inbounds %struct.relative, %struct.relative* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = call i64 @server_check_ready(%struct.TYPE_8__* %43)
  %45 = load i64, i64* @cr_ok, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %61, label %47

47:                                               ; preds = %36
  %48 = load %struct.relative*, %struct.relative** %1, align 8
  %49 = getelementptr inbounds %struct.relative, %struct.relative* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IDLE_LIMIT, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* @precise_now, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %47, %36, %18
  %62 = load %struct.relative*, %struct.relative** %1, align 8
  %63 = getelementptr inbounds %struct.relative, %struct.relative* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = call i32 @delete_relative(%struct.TYPE_9__* %64, i32 1)
  br label %66

66:                                               ; preds = %61, %47
  br label %67

67:                                               ; preds = %66, %8
  br label %3

68:                                               ; preds = %3
  ret void
}

declare dso_local i64 @server_check_ready(%struct.TYPE_8__*) #1

declare dso_local i32 @delete_relative(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
