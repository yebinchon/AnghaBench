; ModuleID = '/home/carl/AnghaBench/git/extr_object.c_parsed_object_pool_clear.c'
source_filename = "/home/carl/AnghaBench/git/extr_object.c_parsed_object_pool_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_object_pool = type { i32, %struct.object**, %struct.object**, %struct.object**, %struct.object**, %struct.object**, %struct.object**, i32*, %struct.object** }
%struct.object = type { i64 }
%struct.tree = type { i32 }
%struct.commit = type { i32 }
%struct.tag = type { i32 }

@OBJ_TREE = common dso_local global i64 0, align 8
@OBJ_COMMIT = common dso_local global i64 0, align 8
@OBJ_TAG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parsed_object_pool_clear(%struct.parsed_object_pool* %0) #0 {
  %2 = alloca %struct.parsed_object_pool*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.object*, align 8
  store %struct.parsed_object_pool* %0, %struct.parsed_object_pool** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %56, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %8 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %59

11:                                               ; preds = %5
  %12 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %13 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %12, i32 0, i32 8
  %14 = load %struct.object**, %struct.object*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.object*, %struct.object** %14, i64 %16
  %18 = load %struct.object*, %struct.object** %17, align 8
  store %struct.object* %18, %struct.object** %4, align 8
  %19 = load %struct.object*, %struct.object** %4, align 8
  %20 = icmp ne %struct.object* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %56

22:                                               ; preds = %11
  %23 = load %struct.object*, %struct.object** %4, align 8
  %24 = getelementptr inbounds %struct.object, %struct.object* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OBJ_TREE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.object*, %struct.object** %4, align 8
  %30 = bitcast %struct.object* %29 to %struct.tree*
  %31 = call i32 @free_tree_buffer(%struct.tree* %30)
  br label %55

32:                                               ; preds = %22
  %33 = load %struct.object*, %struct.object** %4, align 8
  %34 = getelementptr inbounds %struct.object, %struct.object* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @OBJ_COMMIT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %40 = load %struct.object*, %struct.object** %4, align 8
  %41 = bitcast %struct.object* %40 to %struct.commit*
  %42 = call i32 @release_commit_memory(%struct.parsed_object_pool* %39, %struct.commit* %41)
  br label %54

43:                                               ; preds = %32
  %44 = load %struct.object*, %struct.object** %4, align 8
  %45 = getelementptr inbounds %struct.object, %struct.object* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @OBJ_TAG, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.object*, %struct.object** %4, align 8
  %51 = bitcast %struct.object* %50 to %struct.tag*
  %52 = call i32 @release_tag_memory(%struct.tag* %51)
  br label %53

53:                                               ; preds = %49, %43
  br label %54

54:                                               ; preds = %53, %38
  br label %55

55:                                               ; preds = %54, %28
  br label %56

56:                                               ; preds = %55, %21
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %5

59:                                               ; preds = %5
  %60 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %61 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %60, i32 0, i32 8
  %62 = load %struct.object**, %struct.object*** %61, align 8
  %63 = call i32 @FREE_AND_NULL(%struct.object** %62)
  %64 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %65 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %67 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %66, i32 0, i32 7
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @free_commit_buffer_slab(i32* %68)
  %70 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %71 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %70, i32 0, i32 7
  store i32* null, i32** %71, align 8
  %72 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %73 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %72, i32 0, i32 6
  %74 = load %struct.object**, %struct.object*** %73, align 8
  %75 = call i32 @clear_alloc_state(%struct.object** %74)
  %76 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %77 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %76, i32 0, i32 5
  %78 = load %struct.object**, %struct.object*** %77, align 8
  %79 = call i32 @clear_alloc_state(%struct.object** %78)
  %80 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %81 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %80, i32 0, i32 4
  %82 = load %struct.object**, %struct.object*** %81, align 8
  %83 = call i32 @clear_alloc_state(%struct.object** %82)
  %84 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %85 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %84, i32 0, i32 3
  %86 = load %struct.object**, %struct.object*** %85, align 8
  %87 = call i32 @clear_alloc_state(%struct.object** %86)
  %88 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %89 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %88, i32 0, i32 2
  %90 = load %struct.object**, %struct.object*** %89, align 8
  %91 = call i32 @clear_alloc_state(%struct.object** %90)
  %92 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %93 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %92, i32 0, i32 1
  %94 = load %struct.object**, %struct.object*** %93, align 8
  %95 = call i32 @stat_validity_clear(%struct.object** %94)
  %96 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %97 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %96, i32 0, i32 6
  %98 = load %struct.object**, %struct.object*** %97, align 8
  %99 = call i32 @FREE_AND_NULL(%struct.object** %98)
  %100 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %101 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %100, i32 0, i32 5
  %102 = load %struct.object**, %struct.object*** %101, align 8
  %103 = call i32 @FREE_AND_NULL(%struct.object** %102)
  %104 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %105 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %104, i32 0, i32 4
  %106 = load %struct.object**, %struct.object*** %105, align 8
  %107 = call i32 @FREE_AND_NULL(%struct.object** %106)
  %108 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %109 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %108, i32 0, i32 3
  %110 = load %struct.object**, %struct.object*** %109, align 8
  %111 = call i32 @FREE_AND_NULL(%struct.object** %110)
  %112 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %113 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %112, i32 0, i32 2
  %114 = load %struct.object**, %struct.object*** %113, align 8
  %115 = call i32 @FREE_AND_NULL(%struct.object** %114)
  %116 = load %struct.parsed_object_pool*, %struct.parsed_object_pool** %2, align 8
  %117 = getelementptr inbounds %struct.parsed_object_pool, %struct.parsed_object_pool* %116, i32 0, i32 1
  %118 = load %struct.object**, %struct.object*** %117, align 8
  %119 = call i32 @FREE_AND_NULL(%struct.object** %118)
  ret void
}

declare dso_local i32 @free_tree_buffer(%struct.tree*) #1

declare dso_local i32 @release_commit_memory(%struct.parsed_object_pool*, %struct.commit*) #1

declare dso_local i32 @release_tag_memory(%struct.tag*) #1

declare dso_local i32 @FREE_AND_NULL(%struct.object**) #1

declare dso_local i32 @free_commit_buffer_slab(i32*) #1

declare dso_local i32 @clear_alloc_state(%struct.object**) #1

declare dso_local i32 @stat_validity_clear(%struct.object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
