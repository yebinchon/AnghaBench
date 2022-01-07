; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_add_promisor_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_add_promisor_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.packed_git = type { i32 }
%struct.oidset = type { i32 }
%struct.object = type { i64 }
%struct.tree = type { i32, i32 }
%struct.tree_desc = type { i32 }
%struct.name_entry = type { %struct.object_id }
%struct.commit = type { %struct.commit_list* }
%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.object_id }
%struct.tag = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@OBJ_TREE = common dso_local global i64 0, align 8
@OBJ_COMMIT = common dso_local global i64 0, align 8
@OBJ_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.packed_git*, i32, i8*)* @add_promisor_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_promisor_object(%struct.object_id* %0, %struct.packed_git* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.packed_git*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.oidset*, align 8
  %11 = alloca %struct.object*, align 8
  %12 = alloca %struct.tree*, align 8
  %13 = alloca %struct.tree_desc, align 4
  %14 = alloca %struct.name_entry, align 4
  %15 = alloca %struct.commit*, align 8
  %16 = alloca %struct.commit_list*, align 8
  %17 = alloca %struct.tag*, align 8
  store %struct.object_id* %0, %struct.object_id** %6, align 8
  store %struct.packed_git* %1, %struct.packed_git** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.oidset*
  store %struct.oidset* %19, %struct.oidset** %10, align 8
  %20 = load i32, i32* @the_repository, align 4
  %21 = load %struct.object_id*, %struct.object_id** %6, align 8
  %22 = call %struct.object* @parse_object(i32 %20, %struct.object_id* %21)
  store %struct.object* %22, %struct.object** %11, align 8
  %23 = load %struct.object*, %struct.object** %11, align 8
  %24 = icmp ne %struct.object* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %104

26:                                               ; preds = %4
  %27 = load %struct.oidset*, %struct.oidset** %10, align 8
  %28 = load %struct.object_id*, %struct.object_id** %6, align 8
  %29 = call i32 @oidset_insert(%struct.oidset* %27, %struct.object_id* %28)
  %30 = load %struct.object*, %struct.object** %11, align 8
  %31 = getelementptr inbounds %struct.object, %struct.object* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OBJ_TREE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %26
  %36 = load %struct.object*, %struct.object** %11, align 8
  %37 = bitcast %struct.object* %36 to %struct.tree*
  store %struct.tree* %37, %struct.tree** %12, align 8
  %38 = load %struct.tree*, %struct.tree** %12, align 8
  %39 = getelementptr inbounds %struct.tree, %struct.tree* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tree*, %struct.tree** %12, align 8
  %42 = getelementptr inbounds %struct.tree, %struct.tree* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @init_tree_desc_gently(%struct.tree_desc* %13, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %104

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %51, %47
  %49 = call i64 @tree_entry_gently(%struct.tree_desc* %13, %struct.name_entry* %14)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.oidset*, %struct.oidset** %10, align 8
  %53 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %14, i32 0, i32 0
  %54 = call i32 @oidset_insert(%struct.oidset* %52, %struct.object_id* %53)
  br label %48

55:                                               ; preds = %48
  br label %103

56:                                               ; preds = %26
  %57 = load %struct.object*, %struct.object** %11, align 8
  %58 = getelementptr inbounds %struct.object, %struct.object* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @OBJ_COMMIT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %56
  %63 = load %struct.object*, %struct.object** %11, align 8
  %64 = bitcast %struct.object* %63 to %struct.commit*
  store %struct.commit* %64, %struct.commit** %15, align 8
  %65 = load %struct.commit*, %struct.commit** %15, align 8
  %66 = getelementptr inbounds %struct.commit, %struct.commit* %65, i32 0, i32 0
  %67 = load %struct.commit_list*, %struct.commit_list** %66, align 8
  store %struct.commit_list* %67, %struct.commit_list** %16, align 8
  %68 = load %struct.oidset*, %struct.oidset** %10, align 8
  %69 = load %struct.commit*, %struct.commit** %15, align 8
  %70 = call %struct.object_id* @get_commit_tree_oid(%struct.commit* %69)
  %71 = call i32 @oidset_insert(%struct.oidset* %68, %struct.object_id* %70)
  br label %72

72:                                               ; preds = %83, %62
  %73 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %74 = icmp ne %struct.commit_list* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load %struct.oidset*, %struct.oidset** %10, align 8
  %77 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %78 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = call i32 @oidset_insert(%struct.oidset* %76, %struct.object_id* %81)
  br label %83

83:                                               ; preds = %75
  %84 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %85 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %84, i32 0, i32 1
  %86 = load %struct.commit_list*, %struct.commit_list** %85, align 8
  store %struct.commit_list* %86, %struct.commit_list** %16, align 8
  br label %72

87:                                               ; preds = %72
  br label %102

88:                                               ; preds = %56
  %89 = load %struct.object*, %struct.object** %11, align 8
  %90 = getelementptr inbounds %struct.object, %struct.object* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @OBJ_TAG, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load %struct.object*, %struct.object** %11, align 8
  %96 = bitcast %struct.object* %95 to %struct.tag*
  store %struct.tag* %96, %struct.tag** %17, align 8
  %97 = load %struct.oidset*, %struct.oidset** %10, align 8
  %98 = load %struct.tag*, %struct.tag** %17, align 8
  %99 = call %struct.object_id* @get_tagged_oid(%struct.tag* %98)
  %100 = call i32 @oidset_insert(%struct.oidset* %97, %struct.object_id* %99)
  br label %101

101:                                              ; preds = %94, %88
  br label %102

102:                                              ; preds = %101, %87
  br label %103

103:                                              ; preds = %102, %55
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %46, %25
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @oidset_insert(%struct.oidset*, %struct.object_id*) #1

declare dso_local i64 @init_tree_desc_gently(%struct.tree_desc*, i32, i32) #1

declare dso_local i64 @tree_entry_gently(%struct.tree_desc*, %struct.name_entry*) #1

declare dso_local %struct.object_id* @get_commit_tree_oid(%struct.commit*) #1

declare dso_local %struct.object_id* @get_tagged_oid(%struct.tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
