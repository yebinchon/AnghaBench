; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects.c_traverse_trees_and_blobs.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects.c_traverse_trees_and_blobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traversal_context = type { %struct.TYPE_3__*, i32, i32 (%struct.object.0*, i8*, i32)* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.object_array_entry* }
%struct.object_array_entry = type { i8*, i8*, %struct.object* }
%struct.object = type { i32, i64, i32 }
%struct.object.0 = type opaque
%struct.strbuf = type { i64 }
%struct.tree = type { i32 }
%struct.blob = type { i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@OBJ_TAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OBJ_TREE = common dso_local global i64 0, align 8
@OBJ_BLOB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"unknown pending object %s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.traversal_context*, %struct.strbuf*)* @traverse_trees_and_blobs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @traverse_trees_and_blobs(%struct.traversal_context* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.traversal_context*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_array_entry*, align 8
  %7 = alloca %struct.object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.traversal_context* %0, %struct.traversal_context** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %10 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %111, %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.traversal_context*, %struct.traversal_context** %3, align 8
  %19 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %17, %23
  br i1 %24, label %25, label %114

25:                                               ; preds = %16
  %26 = load %struct.traversal_context*, %struct.traversal_context** %3, align 8
  %27 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.object_array_entry*, %struct.object_array_entry** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %31, i64 %33
  store %struct.object_array_entry* %34, %struct.object_array_entry** %6, align 8
  %35 = load %struct.object_array_entry*, %struct.object_array_entry** %6, align 8
  %36 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %35, i32 0, i32 2
  %37 = load %struct.object*, %struct.object** %36, align 8
  store %struct.object* %37, %struct.object** %7, align 8
  %38 = load %struct.object_array_entry*, %struct.object_array_entry** %6, align 8
  %39 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %8, align 8
  %41 = load %struct.object_array_entry*, %struct.object_array_entry** %6, align 8
  %42 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %9, align 8
  %44 = load %struct.object*, %struct.object** %7, align 8
  %45 = getelementptr inbounds %struct.object, %struct.object* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @UNINTERESTING, align 4
  %48 = load i32, i32* @SEEN, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %25
  br label %111

53:                                               ; preds = %25
  %54 = load %struct.object*, %struct.object** %7, align 8
  %55 = getelementptr inbounds %struct.object, %struct.object* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @OBJ_TAG, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = load i32, i32* @SEEN, align 4
  %61 = load %struct.object*, %struct.object** %7, align 8
  %62 = getelementptr inbounds %struct.object, %struct.object* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.traversal_context*, %struct.traversal_context** %3, align 8
  %66 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %65, i32 0, i32 2
  %67 = load i32 (%struct.object.0*, i8*, i32)*, i32 (%struct.object.0*, i8*, i32)** %66, align 8
  %68 = load %struct.object*, %struct.object** %7, align 8
  %69 = bitcast %struct.object* %68 to %struct.object.0*
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.traversal_context*, %struct.traversal_context** %3, align 8
  %72 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %67(%struct.object.0* %69, i8* %70, i32 %73)
  br label %111

75:                                               ; preds = %53
  %76 = load i8*, i8** %9, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %79

79:                                               ; preds = %78, %75
  %80 = load %struct.object*, %struct.object** %7, align 8
  %81 = getelementptr inbounds %struct.object, %struct.object* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @OBJ_TREE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.traversal_context*, %struct.traversal_context** %3, align 8
  %87 = load %struct.object*, %struct.object** %7, align 8
  %88 = bitcast %struct.object* %87 to %struct.tree*
  %89 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @process_tree(%struct.traversal_context* %86, %struct.tree* %88, %struct.strbuf* %89, i8* %90)
  br label %111

92:                                               ; preds = %79
  %93 = load %struct.object*, %struct.object** %7, align 8
  %94 = getelementptr inbounds %struct.object, %struct.object* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @OBJ_BLOB, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load %struct.traversal_context*, %struct.traversal_context** %3, align 8
  %100 = load %struct.object*, %struct.object** %7, align 8
  %101 = bitcast %struct.object* %100 to %struct.blob*
  %102 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @process_blob(%struct.traversal_context* %99, %struct.blob* %101, %struct.strbuf* %102, i8* %103)
  br label %111

105:                                              ; preds = %92
  %106 = load %struct.object*, %struct.object** %7, align 8
  %107 = getelementptr inbounds %struct.object, %struct.object* %106, i32 0, i32 2
  %108 = call i32 @oid_to_hex(i32* %107)
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %108, i8* %109)
  br label %111

111:                                              ; preds = %105, %98, %85, %59, %52
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %16

114:                                              ; preds = %16
  %115 = load %struct.traversal_context*, %struct.traversal_context** %3, align 8
  %116 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = call i32 @object_array_clear(%struct.TYPE_4__* %118)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @process_tree(%struct.traversal_context*, %struct.tree*, %struct.strbuf*, i8*) #1

declare dso_local i32 @process_blob(%struct.traversal_context*, %struct.blob*, %struct.strbuf*, i8*) #1

declare dso_local i32 @die(i8*, i32, i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @object_array_clear(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
