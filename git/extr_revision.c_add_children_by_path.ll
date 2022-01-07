; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_add_children_by_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_add_children_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.tree = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hashmap = type { i32 }
%struct.tree_desc = type { i32 }
%struct.name_entry = type { i32, i32, i32 }
%struct.blob = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.tree*, %struct.hashmap*)* @add_children_by_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_children_by_path(%struct.repository* %0, %struct.tree* %1, %struct.hashmap* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.tree*, align 8
  %6 = alloca %struct.hashmap*, align 8
  %7 = alloca %struct.tree_desc, align 4
  %8 = alloca %struct.name_entry, align 4
  %9 = alloca %struct.tree*, align 8
  %10 = alloca %struct.blob*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.tree* %1, %struct.tree** %5, align 8
  store %struct.hashmap* %2, %struct.hashmap** %6, align 8
  %11 = load %struct.tree*, %struct.tree** %5, align 8
  %12 = icmp ne %struct.tree* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %90

14:                                               ; preds = %3
  %15 = load %struct.tree*, %struct.tree** %5, align 8
  %16 = call i64 @parse_tree_gently(%struct.tree* %15, i32 1)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %90

19:                                               ; preds = %14
  %20 = load %struct.tree*, %struct.tree** %5, align 8
  %21 = getelementptr inbounds %struct.tree, %struct.tree* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tree*, %struct.tree** %5, align 8
  %24 = getelementptr inbounds %struct.tree, %struct.tree* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @init_tree_desc(%struct.tree_desc* %7, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %86, %19
  %28 = call i64 @tree_entry(%struct.tree_desc* %7, %struct.name_entry* %8)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @object_type(i32 %32)
  switch i32 %33, label %85 [
    i32 128, label %34
    i32 129, label %62
  ]

34:                                               ; preds = %30
  %35 = load %struct.hashmap*, %struct.hashmap** %6, align 8
  %36 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 0
  %39 = call i32 @paths_and_oids_insert(%struct.hashmap* %35, i32 %37, i32* %38)
  %40 = load %struct.tree*, %struct.tree** %5, align 8
  %41 = getelementptr inbounds %struct.tree, %struct.tree* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UNINTERESTING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %34
  %48 = load %struct.repository*, %struct.repository** %4, align 8
  %49 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 0
  %50 = call %struct.tree* @lookup_tree(%struct.repository* %48, i32* %49)
  store %struct.tree* %50, %struct.tree** %9, align 8
  %51 = load %struct.tree*, %struct.tree** %9, align 8
  %52 = icmp ne %struct.tree* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32, i32* @UNINTERESTING, align 4
  %55 = load %struct.tree*, %struct.tree** %9, align 8
  %56 = getelementptr inbounds %struct.tree, %struct.tree* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %53, %47
  br label %61

61:                                               ; preds = %60, %34
  br label %86

62:                                               ; preds = %30
  %63 = load %struct.tree*, %struct.tree** %5, align 8
  %64 = getelementptr inbounds %struct.tree, %struct.tree* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @UNINTERESTING, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %62
  %71 = load %struct.repository*, %struct.repository** %4, align 8
  %72 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 0
  %73 = call %struct.blob* @lookup_blob(%struct.repository* %71, i32* %72)
  store %struct.blob* %73, %struct.blob** %10, align 8
  %74 = load %struct.blob*, %struct.blob** %10, align 8
  %75 = icmp ne %struct.blob* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i32, i32* @UNINTERESTING, align 4
  %78 = load %struct.blob*, %struct.blob** %10, align 8
  %79 = getelementptr inbounds %struct.blob, %struct.blob* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %76, %70
  br label %84

84:                                               ; preds = %83, %62
  br label %86

85:                                               ; preds = %30
  br label %86

86:                                               ; preds = %85, %84, %61
  br label %27

87:                                               ; preds = %27
  %88 = load %struct.tree*, %struct.tree** %5, align 8
  %89 = call i32 @free_tree_buffer(%struct.tree* %88)
  br label %90

90:                                               ; preds = %87, %18, %13
  ret void
}

declare dso_local i64 @parse_tree_gently(%struct.tree*, i32) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #1

declare dso_local i64 @tree_entry(%struct.tree_desc*, %struct.name_entry*) #1

declare dso_local i32 @object_type(i32) #1

declare dso_local i32 @paths_and_oids_insert(%struct.hashmap*, i32, i32*) #1

declare dso_local %struct.tree* @lookup_tree(%struct.repository*, i32*) #1

declare dso_local %struct.blob* @lookup_blob(%struct.repository*, i32*) #1

declare dso_local i32 @free_tree_buffer(%struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
