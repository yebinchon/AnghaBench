; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_delete_by_pid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_delete_by_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_id = type { i32, i32 }
%struct.udp_target_set = type { i32, i32, %struct.udp_target*, %struct.udp_target*, i32, i32, i32 }
%struct.udp_target = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.udp_target* }

@udp_target_set_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_target_delete_by_pid(%struct.process_id* %0) #0 {
  %2 = alloca %struct.process_id*, align 8
  %3 = alloca %struct.udp_target_set**, align 8
  %4 = alloca %struct.udp_target_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.udp_target**, align 8
  %7 = alloca %struct.udp_target*, align 8
  store %struct.process_id* %0, %struct.process_id** %2, align 8
  %8 = load i32, i32* @udp_target_set_tree, align 4
  %9 = load %struct.process_id*, %struct.process_id** %2, align 8
  %10 = bitcast %struct.process_id* %9 to i8*
  %11 = call %struct.udp_target_set** @tree_lookup_value_udp_target_set(i32 %8, i8* %10)
  store %struct.udp_target_set** %11, %struct.udp_target_set*** %3, align 8
  %12 = load %struct.udp_target_set**, %struct.udp_target_set*** %3, align 8
  %13 = icmp ne %struct.udp_target_set** %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %159

15:                                               ; preds = %1
  %16 = load %struct.udp_target_set**, %struct.udp_target_set*** %3, align 8
  %17 = load %struct.udp_target_set*, %struct.udp_target_set** %16, align 8
  store %struct.udp_target_set* %17, %struct.udp_target_set** %4, align 8
  %18 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %19 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %157 [
    i32 0, label %21
    i32 1, label %22
    i32 2, label %42
    i32 3, label %72
  ]

21:                                               ; preds = %15
  br label %159

22:                                               ; preds = %15
  %23 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %24 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.process_id*, %struct.process_id** %2, align 8
  %27 = getelementptr inbounds %struct.process_id, %struct.process_id* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %32 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.process_id*, %struct.process_id** %2, align 8
  %35 = getelementptr inbounds %struct.process_id, %struct.process_id* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %40 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %30, %22
  br label %159

42:                                               ; preds = %15
  %43 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %44 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %43, i32 0, i32 3
  %45 = load %struct.udp_target*, %struct.udp_target** %44, align 8
  %46 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.process_id*, %struct.process_id** %2, align 8
  %50 = getelementptr inbounds %struct.process_id, %struct.process_id* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %42
  %54 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %55 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %54, i32 0, i32 3
  %56 = load %struct.udp_target*, %struct.udp_target** %55, align 8
  %57 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.process_id*, %struct.process_id** %2, align 8
  %61 = getelementptr inbounds %struct.process_id, %struct.process_id* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %53
  %65 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %66 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %65, i32 0, i32 3
  %67 = load %struct.udp_target*, %struct.udp_target** %66, align 8
  %68 = call i32 @udp_target_free(%struct.udp_target* %67)
  %69 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %70 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %64, %53, %42
  br label %159

72:                                               ; preds = %15
  %73 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %74 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %73, i32 0, i32 2
  %75 = load %struct.udp_target*, %struct.udp_target** %74, align 8
  %76 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.process_id*, %struct.process_id** %2, align 8
  %80 = getelementptr inbounds %struct.process_id, %struct.process_id* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %94, label %83

83:                                               ; preds = %72
  %84 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %85 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %84, i32 0, i32 2
  %86 = load %struct.udp_target*, %struct.udp_target** %85, align 8
  %87 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.process_id*, %struct.process_id** %2, align 8
  %91 = getelementptr inbounds %struct.process_id, %struct.process_id* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %89, %92
  br label %94

94:                                               ; preds = %83, %72
  %95 = phi i1 [ true, %72 ], [ %93, %83 ]
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %5, align 4
  %97 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %98 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.process_id*, %struct.process_id** %2, align 8
  %101 = bitcast %struct.process_id* %100 to i8*
  %102 = call %struct.udp_target** @tree_lookup_value_udp_target_by_fpid(i32 %99, i8* %101)
  store %struct.udp_target** %102, %struct.udp_target*** %6, align 8
  %103 = load %struct.udp_target**, %struct.udp_target*** %6, align 8
  %104 = icmp ne %struct.udp_target** %103, null
  br i1 %104, label %105, label %156

105:                                              ; preds = %94
  %106 = load %struct.udp_target**, %struct.udp_target*** %6, align 8
  %107 = load %struct.udp_target*, %struct.udp_target** %106, align 8
  store %struct.udp_target* %107, %struct.udp_target** %7, align 8
  %108 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %109 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sge i32 %110, 2
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %115 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.udp_target*, %struct.udp_target** %7, align 8
  %118 = call i32 @tree_delete_udp_target_by_fpid(i32 %116, %struct.udp_target* %117)
  %119 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %120 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %122 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %122, align 4
  %125 = load %struct.udp_target*, %struct.udp_target** %7, align 8
  %126 = call i32 @udp_target_free(%struct.udp_target* %125)
  %127 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %128 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.TYPE_4__* @tree_get_min_udp_target_by_fpid(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load %struct.udp_target*, %struct.udp_target** %131, align 8
  store %struct.udp_target* %132, %struct.udp_target** %7, align 8
  %133 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %134 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %147

137:                                              ; preds = %105
  %138 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %139 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @tree_clear_udp_target_by_fpid(i32 %140)
  %142 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %143 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %142, i32 0, i32 0
  store i32 2, i32* %143, align 8
  %144 = load %struct.udp_target*, %struct.udp_target** %7, align 8
  %145 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %146 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %145, i32 0, i32 3
  store %struct.udp_target* %144, %struct.udp_target** %146, align 8
  br label %155

147:                                              ; preds = %105
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = load %struct.udp_target*, %struct.udp_target** %7, align 8
  %152 = load %struct.udp_target_set*, %struct.udp_target_set** %4, align 8
  %153 = getelementptr inbounds %struct.udp_target_set, %struct.udp_target_set* %152, i32 0, i32 2
  store %struct.udp_target* %151, %struct.udp_target** %153, align 8
  br label %154

154:                                              ; preds = %150, %147
  br label %155

155:                                              ; preds = %154, %137
  br label %156

156:                                              ; preds = %155, %94
  br label %159

157:                                              ; preds = %15
  %158 = call i32 @assert(i32 0)
  br label %159

159:                                              ; preds = %157, %156, %71, %41, %21, %14
  ret void
}

declare dso_local %struct.udp_target_set** @tree_lookup_value_udp_target_set(i32, i8*) #1

declare dso_local i32 @udp_target_free(%struct.udp_target*) #1

declare dso_local %struct.udp_target** @tree_lookup_value_udp_target_by_fpid(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tree_delete_udp_target_by_fpid(i32, %struct.udp_target*) #1

declare dso_local %struct.TYPE_4__* @tree_get_min_udp_target_by_fpid(i32) #1

declare dso_local i32 @tree_clear_udp_target_by_fpid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
