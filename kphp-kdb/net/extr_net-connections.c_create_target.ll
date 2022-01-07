; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_create_target.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_create_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { i32, %struct.conn_query*, %struct.conn_query*, %struct.connection*, %struct.connection*, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.conn_query = type { i32 }
%struct.connection = type { i32 }
%struct.TYPE_2__ = type { i64 }

@allocated_targets = common dso_local global i64 0, align 8
@MAX_TARGETS = common dso_local global i64 0, align 8
@Targets = common dso_local global %struct.conn_target* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conn_target* @create_target(%struct.conn_target* %0, i32* %1) #0 {
  %3 = alloca %struct.conn_target*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.conn_target**, align 8
  %6 = alloca %struct.conn_target*, align 8
  store %struct.conn_target* %0, %struct.conn_target** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %8 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %7, i32 0, i32 11
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %14 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %13, i32 0, i32 11
  %15 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %16 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %19 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.conn_target** @find_target(i64 %22, i32 %17, i32 %20)
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %26 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %29 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %32 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.conn_target** @find_target_ipv6(i32 %27, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %24, %12
  %36 = phi %struct.conn_target** [ %23, %12 ], [ %34, %24 ]
  store %struct.conn_target** %36, %struct.conn_target*** %5, align 8
  %37 = load %struct.conn_target**, %struct.conn_target*** %5, align 8
  %38 = load %struct.conn_target*, %struct.conn_target** %37, align 8
  store %struct.conn_target* %38, %struct.conn_target** %6, align 8
  %39 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %40 = icmp ne %struct.conn_target* %39, null
  br i1 %40, label %41, label %72

41:                                               ; preds = %35
  %42 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %43 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %49 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %52 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %54 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %57 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %59 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %62 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %64 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %41
  %70 = load i32*, i32** %4, align 8
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %69, %41
  br label %105

72:                                               ; preds = %35
  %73 = load i64, i64* @allocated_targets, align 8
  %74 = load i64, i64* @MAX_TARGETS, align 8
  %75 = icmp slt i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.conn_target*, %struct.conn_target** @Targets, align 8
  %79 = load i64, i64* @allocated_targets, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* @allocated_targets, align 8
  %81 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %78, i64 %79
  %82 = load %struct.conn_target**, %struct.conn_target*** %5, align 8
  store %struct.conn_target* %81, %struct.conn_target** %82, align 8
  store %struct.conn_target* %81, %struct.conn_target** %6, align 8
  %83 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %84 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %85 = call i32 @memcpy(%struct.conn_target* %83, %struct.conn_target* %84, i32 72)
  %86 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %87 = bitcast %struct.conn_target* %86 to %struct.connection*
  %88 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %89 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %88, i32 0, i32 3
  store %struct.connection* %87, %struct.connection** %89, align 8
  %90 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %91 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %90, i32 0, i32 4
  store %struct.connection* %87, %struct.connection** %91, align 8
  %92 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %93 = bitcast %struct.conn_target* %92 to %struct.conn_query*
  %94 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %95 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %94, i32 0, i32 1
  store %struct.conn_query* %93, %struct.conn_query** %95, align 8
  %96 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %97 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %96, i32 0, i32 2
  store %struct.conn_query* %93, %struct.conn_query** %97, align 8
  %98 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %99 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %72
  %103 = load i32*, i32** %4, align 8
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %102, %72
  br label %105

105:                                              ; preds = %104, %71
  %106 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  ret %struct.conn_target* %106
}

declare dso_local %struct.conn_target** @find_target(i64, i32, i32) #1

declare dso_local %struct.conn_target** @find_target_ipv6(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(%struct.conn_target*, %struct.conn_target*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
