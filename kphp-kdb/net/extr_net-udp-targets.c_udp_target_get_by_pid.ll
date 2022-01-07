; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_get_by_pid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_get_by_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.process_id = type { i32, i32 }
%struct.udp_target_set = type { i32, i32, %struct.udp_target*, %struct.udp_target* }

@udp_target_set_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.udp_target* @udp_target_get_by_pid(%struct.process_id* %0) #0 {
  %2 = alloca %struct.udp_target*, align 8
  %3 = alloca %struct.process_id*, align 8
  %4 = alloca %struct.udp_target_set**, align 8
  %5 = alloca %struct.udp_target_set*, align 8
  %6 = alloca %struct.udp_target*, align 8
  %7 = alloca %struct.udp_target**, align 8
  store %struct.process_id* %0, %struct.process_id** %3, align 8
  %8 = load i32, i32* @udp_target_set_tree, align 4
  %9 = load %struct.process_id*, %struct.process_id** %3, align 8
  %10 = bitcast %struct.process_id* %9 to i8*
  %11 = call %struct.udp_target_set** @tree_lookup_value_udp_target_set(i32 %8, i8* %10)
  store %struct.udp_target_set** %11, %struct.udp_target_set*** %4, align 8
  %12 = load %struct.udp_target_set**, %struct.udp_target_set*** %4, align 8
  %13 = icmp ne %struct.udp_target_set** %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.udp_target* null, %struct.udp_target** %2, align 8
  br label %94

15:                                               ; preds = %1
  %16 = load %struct.udp_target_set**, %struct.udp_target_set*** %4, align 8
  %17 = load %struct.udp_target_set*, %struct.udp_target_set** %16, align 8
  store %struct.udp_target_set* %17, %struct.udp_target_set** %5, align 8
  %18 = load %struct.udp_target_set*, %struct.udp_target_set** %5, align 8
  %19 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %92 [
    i32 0, label %21
    i32 1, label %22
    i32 2, label %25
    i32 3, label %63
  ]

21:                                               ; preds = %15
  store %struct.udp_target* null, %struct.udp_target** %2, align 8
  br label %94

22:                                               ; preds = %15
  %23 = load %struct.udp_target_set*, %struct.udp_target_set** %5, align 8
  %24 = call i32 @udp_target_set_expand(%struct.udp_target_set* %23)
  br label %25

25:                                               ; preds = %15, %22
  %26 = load %struct.udp_target_set*, %struct.udp_target_set** %5, align 8
  %27 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %26, i32 0, i32 3
  %28 = load %struct.udp_target*, %struct.udp_target** %27, align 8
  store %struct.udp_target* %28, %struct.udp_target** %6, align 8
  %29 = load %struct.process_id*, %struct.process_id** %3, align 8
  %30 = getelementptr inbounds %struct.process_id, %struct.process_id* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = load %struct.process_id*, %struct.process_id** %3, align 8
  %35 = getelementptr inbounds %struct.process_id, %struct.process_id* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load %struct.udp_target*, %struct.udp_target** %6, align 8
  store %struct.udp_target* %39, %struct.udp_target** %2, align 8
  br label %94

40:                                               ; preds = %33, %25
  %41 = load %struct.udp_target*, %struct.udp_target** %6, align 8
  %42 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %40
  %47 = load %struct.udp_target*, %struct.udp_target** %6, align 8
  %48 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = load %struct.udp_target*, %struct.udp_target** %6, align 8
  store %struct.udp_target* %53, %struct.udp_target** %2, align 8
  br label %94

54:                                               ; preds = %46, %40
  %55 = load %struct.udp_target*, %struct.udp_target** %6, align 8
  %56 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %55, i32 0, i32 0
  %57 = load %struct.process_id*, %struct.process_id** %3, align 8
  %58 = call i32 @matches_pid(%struct.TYPE_2__* %56, %struct.process_id* %57)
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load %struct.udp_target*, %struct.udp_target** %6, align 8
  store %struct.udp_target* %61, %struct.udp_target** %2, align 8
  br label %94

62:                                               ; preds = %54
  store %struct.udp_target* null, %struct.udp_target** %2, align 8
  br label %94

63:                                               ; preds = %15
  %64 = load %struct.process_id*, %struct.process_id** %3, align 8
  %65 = getelementptr inbounds %struct.process_id, %struct.process_id* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %63
  %69 = load %struct.process_id*, %struct.process_id** %3, align 8
  %70 = getelementptr inbounds %struct.process_id, %struct.process_id* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load %struct.udp_target_set*, %struct.udp_target_set** %5, align 8
  %75 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %74, i32 0, i32 2
  %76 = load %struct.udp_target*, %struct.udp_target** %75, align 8
  store %struct.udp_target* %76, %struct.udp_target** %2, align 8
  br label %94

77:                                               ; preds = %68, %63
  %78 = load %struct.udp_target_set*, %struct.udp_target_set** %5, align 8
  %79 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.process_id*, %struct.process_id** %3, align 8
  %82 = bitcast %struct.process_id* %81 to i8*
  %83 = call %struct.udp_target** @tree_lookup_value_udp_target_by_fpid(i32 %80, i8* %82)
  store %struct.udp_target** %83, %struct.udp_target*** %7, align 8
  %84 = load %struct.udp_target**, %struct.udp_target*** %7, align 8
  %85 = icmp ne %struct.udp_target** %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load %struct.udp_target**, %struct.udp_target*** %7, align 8
  %88 = load %struct.udp_target*, %struct.udp_target** %87, align 8
  br label %90

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi %struct.udp_target* [ %88, %86 ], [ null, %89 ]
  store %struct.udp_target* %91, %struct.udp_target** %2, align 8
  br label %94

92:                                               ; preds = %15
  %93 = call i32 @assert(i32 0)
  store %struct.udp_target* null, %struct.udp_target** %2, align 8
  br label %94

94:                                               ; preds = %92, %90, %73, %62, %60, %52, %38, %21, %14
  %95 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  ret %struct.udp_target* %95
}

declare dso_local %struct.udp_target_set** @tree_lookup_value_udp_target_set(i32, i8*) #1

declare dso_local i32 @udp_target_set_expand(%struct.udp_target_set*) #1

declare dso_local i32 @matches_pid(%struct.TYPE_2__*, %struct.process_id*) #1

declare dso_local %struct.udp_target** @tree_lookup_value_udp_target_by_fpid(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
