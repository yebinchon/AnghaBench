; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_tree_get_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_tree_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_type = type { i32 }
%struct.tl_combinator_tree = type { i64, i64, %struct.tl_type*, %struct.tl_combinator_tree* }

@type_type = common dso_local global i64 0, align 8
@act_array = common dso_local global i64 0, align 8
@act_type = common dso_local global i64 0, align 8
@act_var = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_type* @tl_tree_get_type(%struct.tl_combinator_tree* %0) #0 {
  %2 = alloca %struct.tl_type*, align 8
  %3 = alloca %struct.tl_combinator_tree*, align 8
  store %struct.tl_combinator_tree* %0, %struct.tl_combinator_tree** %3, align 8
  %4 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %5 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @type_type, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %12 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @act_array, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.tl_type* null, %struct.tl_type** %2, align 8
  br label %75

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %33, %17
  %19 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %20 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %19, i32 0, i32 3
  %21 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %20, align 8
  %22 = icmp ne %struct.tl_combinator_tree* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %25 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %24, i32 0, i32 3
  %26 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %25, align 8
  store %struct.tl_combinator_tree* %26, %struct.tl_combinator_tree** %3, align 8
  %27 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %28 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @act_array, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store %struct.tl_type* null, %struct.tl_type** %2, align 8
  br label %75

33:                                               ; preds = %23
  %34 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %35 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @type_type, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  br label %18

41:                                               ; preds = %18
  %42 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %43 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @act_type, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %49 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @act_var, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %55 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @act_array, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %53, %47, %41
  %60 = phi i1 [ true, %47 ], [ true, %41 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %64 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @act_type, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %3, align 8
  %70 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %69, i32 0, i32 2
  %71 = load %struct.tl_type*, %struct.tl_type** %70, align 8
  br label %73

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %68
  %74 = phi %struct.tl_type* [ %71, %68 ], [ null, %72 ]
  store %struct.tl_type* %74, %struct.tl_type** %2, align 8
  br label %75

75:                                               ; preds = %73, %32, %16
  %76 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  ret %struct.tl_type* %76
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
