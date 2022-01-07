; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_get_relative_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_get_relative_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64 }
%struct.relative = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, %struct.connection* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.connection* @get_relative_connection(%struct.relative* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.relative*, align 8
  %4 = alloca %struct.connection*, align 8
  store %struct.relative* %0, %struct.relative** %3, align 8
  %5 = load %struct.relative*, %struct.relative** %3, align 8
  %6 = icmp ne %struct.relative* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.connection* null, %struct.connection** %2, align 8
  br label %50

8:                                                ; preds = %1
  %9 = load %struct.relative*, %struct.relative** %3, align 8
  %10 = getelementptr inbounds %struct.relative, %struct.relative* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.relative*, %struct.relative** %3, align 8
  %15 = getelementptr inbounds %struct.relative, %struct.relative* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.connection* @get_target_connection(i32 %18)
  store %struct.connection* %19, %struct.connection** %4, align 8
  br label %48

20:                                               ; preds = %8
  %21 = load %struct.relative*, %struct.relative** %3, align 8
  %22 = getelementptr inbounds %struct.relative, %struct.relative* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load %struct.relative*, %struct.relative** %3, align 8
  %27 = getelementptr inbounds %struct.relative, %struct.relative* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.connection*, %struct.connection** %29, align 8
  store %struct.connection* %30, %struct.connection** %4, align 8
  %31 = load %struct.connection*, %struct.connection** %4, align 8
  %32 = icmp ne %struct.connection* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load %struct.connection*, %struct.connection** %4, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.relative*, %struct.relative** %3, align 8
  %38 = getelementptr inbounds %struct.relative, %struct.relative* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %36, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store %struct.connection* null, %struct.connection** %4, align 8
  br label %44

44:                                               ; preds = %43, %33, %25
  br label %47

45:                                               ; preds = %20
  %46 = call i32 @assert(i32 0)
  br label %47

47:                                               ; preds = %45, %44
  br label %48

48:                                               ; preds = %47, %13
  %49 = load %struct.connection*, %struct.connection** %4, align 8
  store %struct.connection* %49, %struct.connection** %2, align 8
  br label %50

50:                                               ; preds = %48, %7
  %51 = load %struct.connection*, %struct.connection** %2, align 8
  ret %struct.connection* %51
}

declare dso_local %struct.connection* @get_target_connection(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
