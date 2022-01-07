; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_delete_before.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_delete_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_id = type { i32, i32 }
%struct.udp_target_set = type { i32, i32, i32, %struct.tree_udp_target_by_fpid*, %struct.TYPE_7__*, %struct.udp_target* }
%struct.tree_udp_target_by_fpid = type { %struct.udp_target* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.udp_target = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }

@udp_target_set_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_target_delete_before(%struct.process_id* %0, i32 %1) #0 {
  %3 = alloca %struct.process_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udp_target_set**, align 8
  %6 = alloca %struct.udp_target_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tree_udp_target_by_fpid*, align 8
  %9 = alloca %struct.tree_udp_target_by_fpid*, align 8
  %10 = alloca %struct.process_id, align 4
  %11 = alloca %struct.udp_target*, align 8
  store %struct.process_id* %0, %struct.process_id** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @udp_target_set_tree, align 4
  %13 = load %struct.process_id*, %struct.process_id** %3, align 8
  %14 = bitcast %struct.process_id* %13 to i8*
  %15 = call %struct.udp_target_set** @tree_lookup_value_udp_target_set(i32 %12, i8* %14)
  store %struct.udp_target_set** %15, %struct.udp_target_set*** %5, align 8
  %16 = load %struct.udp_target_set**, %struct.udp_target_set*** %5, align 8
  %17 = icmp ne %struct.udp_target_set** %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %142

19:                                               ; preds = %2
  %20 = load %struct.udp_target_set**, %struct.udp_target_set*** %5, align 8
  %21 = load %struct.udp_target_set*, %struct.udp_target_set** %20, align 8
  store %struct.udp_target_set* %21, %struct.udp_target_set** %6, align 8
  %22 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %23 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %140 [
    i32 0, label %25
    i32 1, label %26
    i32 2, label %36
    i32 3, label %61
  ]

25:                                               ; preds = %19
  br label %142

26:                                               ; preds = %19
  %27 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %28 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %34 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %26
  br label %142

36:                                               ; preds = %19
  %37 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %38 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %37, i32 0, i32 5
  %39 = load %struct.udp_target*, %struct.udp_target** %38, align 8
  %40 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %36
  %46 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %47 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %46, i32 0, i32 5
  %48 = load %struct.udp_target*, %struct.udp_target** %47, align 8
  %49 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %55 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %54, i32 0, i32 5
  %56 = load %struct.udp_target*, %struct.udp_target** %55, align 8
  %57 = call i32 @udp_target_free(%struct.udp_target* %56)
  %58 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %59 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %53, %45, %36
  br label %142

61:                                               ; preds = %19
  %62 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %63 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %62, i32 0, i32 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %4, align 4
  %72 = getelementptr inbounds %struct.process_id, %struct.process_id* %10, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.process_id, %struct.process_id* %10, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %75 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %74, i32 0, i32 3
  %76 = load %struct.tree_udp_target_by_fpid*, %struct.tree_udp_target_by_fpid** %75, align 8
  %77 = bitcast %struct.process_id* %10 to i8*
  %78 = call i32 @tree_split_udp_target_by_fpid(%struct.tree_udp_target_by_fpid** %8, %struct.tree_udp_target_by_fpid** %9, %struct.tree_udp_target_by_fpid* %76, i8* %77)
  %79 = load %struct.tree_udp_target_by_fpid*, %struct.tree_udp_target_by_fpid** %9, align 8
  %80 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %81 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %80, i32 0, i32 3
  store %struct.tree_udp_target_by_fpid* %79, %struct.tree_udp_target_by_fpid** %81, align 8
  %82 = load %struct.tree_udp_target_by_fpid*, %struct.tree_udp_target_by_fpid** %8, align 8
  %83 = call i32 @tree_count_udp_target_by_fpid(%struct.tree_udp_target_by_fpid* %82)
  %84 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %85 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.tree_udp_target_by_fpid*, %struct.tree_udp_target_by_fpid** %8, align 8
  %89 = call i32 @tree_act_udp_target_by_fpid(%struct.tree_udp_target_by_fpid* %88, i32 (%struct.udp_target*)* @udp_target_free)
  %90 = load %struct.tree_udp_target_by_fpid*, %struct.tree_udp_target_by_fpid** %8, align 8
  %91 = call i32 @tree_clear_udp_target_by_fpid(%struct.tree_udp_target_by_fpid* %90)
  %92 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %93 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp sge i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %99 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %61
  %103 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %104 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  br label %139

105:                                              ; preds = %61
  %106 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %107 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %125

110:                                              ; preds = %105
  %111 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %112 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %111, i32 0, i32 3
  %113 = load %struct.tree_udp_target_by_fpid*, %struct.tree_udp_target_by_fpid** %112, align 8
  %114 = getelementptr inbounds %struct.tree_udp_target_by_fpid, %struct.tree_udp_target_by_fpid* %113, i32 0, i32 0
  %115 = load %struct.udp_target*, %struct.udp_target** %114, align 8
  store %struct.udp_target* %115, %struct.udp_target** %11, align 8
  %116 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %117 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %116, i32 0, i32 3
  %118 = load %struct.tree_udp_target_by_fpid*, %struct.tree_udp_target_by_fpid** %117, align 8
  %119 = call i32 @tree_clear_udp_target_by_fpid(%struct.tree_udp_target_by_fpid* %118)
  %120 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %121 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %120, i32 0, i32 0
  store i32 2, i32* %121, align 8
  %122 = load %struct.udp_target*, %struct.udp_target** %11, align 8
  %123 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %124 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %123, i32 0, i32 5
  store %struct.udp_target* %122, %struct.udp_target** %124, align 8
  br label %138

125:                                              ; preds = %105
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %130 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %129, i32 0, i32 3
  %131 = load %struct.tree_udp_target_by_fpid*, %struct.tree_udp_target_by_fpid** %130, align 8
  %132 = call %struct.TYPE_8__* @tree_get_min_udp_target_by_fpid(%struct.tree_udp_target_by_fpid* %131)
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load %struct.udp_target_set*, %struct.udp_target_set** %6, align 8
  %136 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %135, i32 0, i32 4
  store %struct.TYPE_7__* %134, %struct.TYPE_7__** %136, align 8
  br label %137

137:                                              ; preds = %128, %125
  br label %138

138:                                              ; preds = %137, %110
  br label %139

139:                                              ; preds = %138, %102
  br label %142

140:                                              ; preds = %19
  %141 = call i32 @assert(i32 0)
  br label %142

142:                                              ; preds = %140, %139, %60, %35, %25, %18
  ret void
}

declare dso_local %struct.udp_target_set** @tree_lookup_value_udp_target_set(i32, i8*) #1

declare dso_local i32 @udp_target_free(%struct.udp_target*) #1

declare dso_local i32 @tree_split_udp_target_by_fpid(%struct.tree_udp_target_by_fpid**, %struct.tree_udp_target_by_fpid**, %struct.tree_udp_target_by_fpid*, i8*) #1

declare dso_local i32 @tree_count_udp_target_by_fpid(%struct.tree_udp_target_by_fpid*) #1

declare dso_local i32 @tree_act_udp_target_by_fpid(%struct.tree_udp_target_by_fpid*, i32 (%struct.udp_target*)*) #1

declare dso_local i32 @tree_clear_udp_target_by_fpid(%struct.tree_udp_target_by_fpid*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @tree_get_min_udp_target_by_fpid(%struct.tree_udp_target_by_fpid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
