; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects.c_process_tree_contents.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects.c_process_tree_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traversal_context = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__*, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.tree = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.strbuf = type { i32 }
%struct.tree_desc = type { i32 }
%struct.name_entry = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.blob = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@all_entries_interesting = common dso_local global i32 0, align 4
@entry_not_interesting = common dso_local global i32 0, align 4
@all_entries_not_interesting = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"entry '%s' in tree %s has tree mode, but is not a tree\00", align 1
@NOT_USER_GIVEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"entry '%s' in tree %s has blob mode, but is not a blob\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.traversal_context*, %struct.tree*, %struct.strbuf*)* @process_tree_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_tree_contents(%struct.traversal_context* %0, %struct.tree* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.traversal_context*, align 8
  %5 = alloca %struct.tree*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.tree_desc, align 4
  %8 = alloca %struct.name_entry, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tree*, align 8
  %11 = alloca %struct.blob*, align 8
  store %struct.traversal_context* %0, %struct.traversal_context** %4, align 8
  store %struct.tree* %1, %struct.tree** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %12 = load %struct.traversal_context*, %struct.traversal_context** %4, align 8
  %13 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @all_entries_interesting, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @entry_not_interesting, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %9, align 4
  %26 = load %struct.tree*, %struct.tree** %5, align 8
  %27 = getelementptr inbounds %struct.tree, %struct.tree* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tree*, %struct.tree** %5, align 8
  %30 = getelementptr inbounds %struct.tree, %struct.tree* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @init_tree_desc(%struct.tree_desc* %7, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %149, %63, %24
  %34 = call i64 @tree_entry(%struct.tree_desc* %7, %struct.name_entry* %8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %150

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @all_entries_interesting, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load %struct.traversal_context*, %struct.traversal_context** %4, align 8
  %42 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %49 = load %struct.traversal_context*, %struct.traversal_context** %4, align 8
  %50 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = call i32 @tree_entry_interesting(i32 %47, %struct.name_entry* %8, %struct.strbuf* %48, i32 0, %struct.TYPE_14__* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @all_entries_not_interesting, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  br label %150

59:                                               ; preds = %40
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @entry_not_interesting, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %33

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %36
  %66 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @S_ISDIR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %65
  %71 = load %struct.traversal_context*, %struct.traversal_context** %4, align 8
  %72 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 1
  %77 = call %struct.tree* @lookup_tree(%struct.TYPE_15__* %75, %struct.TYPE_16__* %76)
  store %struct.tree* %77, %struct.tree** %10, align 8
  %78 = load %struct.tree*, %struct.tree** %10, align 8
  %79 = icmp ne %struct.tree* %78, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %70
  %81 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %82 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.tree*, %struct.tree** %5, align 8
  %85 = getelementptr inbounds %struct.tree, %struct.tree* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = call i32 @oid_to_hex(i32* %86)
  %88 = call i32 @die(i32 %81, i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %80, %70
  %90 = load i32, i32* @NOT_USER_GIVEN, align 4
  %91 = load %struct.tree*, %struct.tree** %10, align 8
  %92 = getelementptr inbounds %struct.tree, %struct.tree* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 4
  %96 = load %struct.traversal_context*, %struct.traversal_context** %4, align 8
  %97 = load %struct.tree*, %struct.tree** %10, align 8
  %98 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %99 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @process_tree(%struct.traversal_context* %96, %struct.tree* %97, %struct.strbuf* %98, i32 %100)
  br label %149

102:                                              ; preds = %65
  %103 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @S_ISGITLINK(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load %struct.traversal_context*, %struct.traversal_context** %4, align 8
  %109 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %113 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @process_gitlink(%struct.traversal_context* %108, i32 %111, %struct.strbuf* %112, i32 %114)
  br label %148

116:                                              ; preds = %102
  %117 = load %struct.traversal_context*, %struct.traversal_context** %4, align 8
  %118 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 1
  %123 = call %struct.blob* @lookup_blob(%struct.TYPE_15__* %121, %struct.TYPE_16__* %122)
  store %struct.blob* %123, %struct.blob** %11, align 8
  %124 = load %struct.blob*, %struct.blob** %11, align 8
  %125 = icmp ne %struct.blob* %124, null
  br i1 %125, label %135, label %126

126:                                              ; preds = %116
  %127 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %128 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.tree*, %struct.tree** %5, align 8
  %131 = getelementptr inbounds %struct.tree, %struct.tree* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = call i32 @oid_to_hex(i32* %132)
  %134 = call i32 @die(i32 %127, i32 %129, i32 %133)
  br label %135

135:                                              ; preds = %126, %116
  %136 = load i32, i32* @NOT_USER_GIVEN, align 4
  %137 = load %struct.blob*, %struct.blob** %11, align 8
  %138 = getelementptr inbounds %struct.blob, %struct.blob* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %136
  store i32 %141, i32* %139, align 4
  %142 = load %struct.traversal_context*, %struct.traversal_context** %4, align 8
  %143 = load %struct.blob*, %struct.blob** %11, align 8
  %144 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %145 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @process_blob(%struct.traversal_context* %142, %struct.blob* %143, %struct.strbuf* %144, i32 %146)
  br label %148

148:                                              ; preds = %135, %107
  br label %149

149:                                              ; preds = %148, %89
  br label %33

150:                                              ; preds = %58, %33
  ret void
}

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #1

declare dso_local i64 @tree_entry(%struct.tree_desc*, %struct.name_entry*) #1

declare dso_local i32 @tree_entry_interesting(i32, %struct.name_entry*, %struct.strbuf*, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.tree* @lookup_tree(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @die(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @process_tree(%struct.traversal_context*, %struct.tree*, %struct.strbuf*, i32) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @process_gitlink(%struct.traversal_context*, i32, %struct.strbuf*, i32) #1

declare dso_local %struct.blob* @lookup_blob(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @process_blob(%struct.traversal_context*, %struct.blob*, %struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
