; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_process_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_process_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, i32, %struct.object }
%struct.object = type { i32, i32 }
%struct.object_list = type { i32 }
%struct.tree_desc = type { i32 }
%struct.name_entry = type { i32, i32 }

@LOCAL = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"bad tree object %s\00", align 1
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_list** (%struct.tree*, %struct.object_list**)* @process_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_list** @process_tree(%struct.tree* %0, %struct.object_list** %1) #0 {
  %3 = alloca %struct.object_list**, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca %struct.object_list**, align 8
  %6 = alloca %struct.object*, align 8
  %7 = alloca %struct.tree_desc, align 4
  %8 = alloca %struct.name_entry, align 4
  store %struct.tree* %0, %struct.tree** %4, align 8
  store %struct.object_list** %1, %struct.object_list*** %5, align 8
  %9 = load %struct.tree*, %struct.tree** %4, align 8
  %10 = getelementptr inbounds %struct.tree, %struct.tree* %9, i32 0, i32 2
  store %struct.object* %10, %struct.object** %6, align 8
  %11 = load i32, i32* @LOCAL, align 4
  %12 = load %struct.object*, %struct.object** %6, align 8
  %13 = getelementptr inbounds %struct.object, %struct.object* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.object*, %struct.object** %6, align 8
  %17 = getelementptr inbounds %struct.object, %struct.object* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UNINTERESTING, align 4
  %20 = load i32, i32* @SEEN, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load %struct.object_list**, %struct.object_list*** %5, align 8
  store %struct.object_list** %25, %struct.object_list*** %3, align 8
  br label %76

26:                                               ; preds = %2
  %27 = load %struct.tree*, %struct.tree** %4, align 8
  %28 = call i64 @parse_tree(%struct.tree* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.object*, %struct.object** %6, align 8
  %32 = getelementptr inbounds %struct.object, %struct.object* %31, i32 0, i32 1
  %33 = call i32 @oid_to_hex(i32* %32)
  %34 = call i32 @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* @SEEN, align 4
  %37 = load %struct.object*, %struct.object** %6, align 8
  %38 = getelementptr inbounds %struct.object, %struct.object* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.object*, %struct.object** %6, align 8
  %42 = load %struct.object_list**, %struct.object_list*** %5, align 8
  %43 = call %struct.object_list** @add_one_object(%struct.object* %41, %struct.object_list** %42)
  store %struct.object_list** %43, %struct.object_list*** %5, align 8
  %44 = load %struct.tree*, %struct.tree** %4, align 8
  %45 = getelementptr inbounds %struct.tree, %struct.tree* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tree*, %struct.tree** %4, align 8
  %48 = getelementptr inbounds %struct.tree, %struct.tree* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @init_tree_desc(%struct.tree_desc* %7, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %71, %35
  %52 = call i64 @tree_entry(%struct.tree_desc* %7, %struct.name_entry* %8)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @object_type(i32 %56)
  switch i32 %57, label %70 [
    i32 128, label %58
    i32 129, label %64
  ]

58:                                               ; preds = %54
  %59 = load i32, i32* @the_repository, align 4
  %60 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 0
  %61 = call %struct.tree* @lookup_tree(i32 %59, i32* %60)
  %62 = load %struct.object_list**, %struct.object_list*** %5, align 8
  %63 = call %struct.object_list** @process_tree(%struct.tree* %61, %struct.object_list** %62)
  store %struct.object_list** %63, %struct.object_list*** %5, align 8
  br label %71

64:                                               ; preds = %54
  %65 = load i32, i32* @the_repository, align 4
  %66 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 0
  %67 = call i32 @lookup_blob(i32 %65, i32* %66)
  %68 = load %struct.object_list**, %struct.object_list*** %5, align 8
  %69 = call %struct.object_list** @process_blob(i32 %67, %struct.object_list** %68)
  store %struct.object_list** %69, %struct.object_list*** %5, align 8
  br label %71

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70, %64, %58
  br label %51

72:                                               ; preds = %51
  %73 = load %struct.tree*, %struct.tree** %4, align 8
  %74 = call i32 @free_tree_buffer(%struct.tree* %73)
  %75 = load %struct.object_list**, %struct.object_list*** %5, align 8
  store %struct.object_list** %75, %struct.object_list*** %3, align 8
  br label %76

76:                                               ; preds = %72, %24
  %77 = load %struct.object_list**, %struct.object_list*** %3, align 8
  ret %struct.object_list** %77
}

declare dso_local i64 @parse_tree(%struct.tree*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local %struct.object_list** @add_one_object(%struct.object*, %struct.object_list**) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #1

declare dso_local i64 @tree_entry(%struct.tree_desc*, %struct.name_entry*) #1

declare dso_local i32 @object_type(i32) #1

declare dso_local %struct.tree* @lookup_tree(i32, i32*) #1

declare dso_local %struct.object_list** @process_blob(i32, %struct.object_list**) #1

declare dso_local i32 @lookup_blob(i32, i32*) #1

declare dso_local i32 @free_tree_buffer(%struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
