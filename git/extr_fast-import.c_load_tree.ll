; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_load_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_load_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.tree_entry = type { %struct.TYPE_4__*, %struct.TYPE_5__*, %struct.tree_content* }
%struct.TYPE_4__ = type { %struct.object_id, i32 }
%struct.object_id = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.tree_content = type { i64, i64, %struct.tree_entry**, i32 }
%struct.object_entry = type { i64, i64, i32 }

@MAX_PACK_ID = common dso_local global i64 0, align 8
@OBJ_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Not a tree: %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Can't load tree %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Corrupt mode in %s\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_entry*)* @load_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_tree(%struct.tree_entry* %0) #0 {
  %2 = alloca %struct.tree_entry*, align 8
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.object_entry*, align 8
  %5 = alloca %struct.tree_content*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tree_entry*, align 8
  store %struct.tree_entry* %0, %struct.tree_entry** %2, align 8
  %11 = load %struct.tree_entry*, %struct.tree_entry** %2, align 8
  %12 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.object_id* %15, %struct.object_id** %3, align 8
  %16 = call %struct.tree_content* @new_tree_content(i32 8)
  store %struct.tree_content* %16, %struct.tree_content** %5, align 8
  %17 = load %struct.tree_entry*, %struct.tree_entry** %2, align 8
  %18 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %17, i32 0, i32 2
  store %struct.tree_content* %16, %struct.tree_content** %18, align 8
  %19 = load %struct.object_id*, %struct.object_id** %3, align 8
  %20 = call i64 @is_null_oid(%struct.object_id* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %177

23:                                               ; preds = %1
  %24 = load %struct.object_id*, %struct.object_id** %3, align 8
  %25 = call %struct.object_entry* @find_object(%struct.object_id* %24)
  store %struct.object_entry* %25, %struct.object_entry** %4, align 8
  %26 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %27 = icmp ne %struct.object_entry* %26, null
  br i1 %27, label %28, label %59

28:                                               ; preds = %23
  %29 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %30 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MAX_PACK_ID, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %36 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @OBJ_TREE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.object_id*, %struct.object_id** %3, align 8
  %42 = call i32 @oid_to_hex(%struct.object_id* %41)
  %43 = call i32 @die(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %46 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.tree_content*, %struct.tree_content** %5, align 8
  %49 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %51 = call i8* @gfi_unpack_entry(%struct.object_entry* %50, i64* %6)
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %44
  %55 = load %struct.object_id*, %struct.object_id** %3, align 8
  %56 = call i32 @oid_to_hex(%struct.object_id* %55)
  %57 = call i32 @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %44
  br label %74

59:                                               ; preds = %28, %23
  %60 = load %struct.object_id*, %struct.object_id** %3, align 8
  %61 = call i8* @read_object_file(%struct.object_id* %60, i32* %9, i64* %6)
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* @OBJ_TREE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64, %59
  %70 = load %struct.object_id*, %struct.object_id** %3, align 8
  %71 = call i32 @oid_to_hex(%struct.object_id* %70)
  %72 = call i32 @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %73, %58
  %75 = load i8*, i8** %7, align 8
  store i8* %75, i8** %8, align 8
  br label %76

76:                                               ; preds = %124, %74
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = icmp ne i8* %77, %80
  br i1 %81, label %82, label %174

82:                                               ; preds = %76
  %83 = call %struct.tree_entry* (...) @new_tree_entry()
  store %struct.tree_entry* %83, %struct.tree_entry** %10, align 8
  %84 = load %struct.tree_content*, %struct.tree_content** %5, align 8
  %85 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.tree_content*, %struct.tree_content** %5, align 8
  %88 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %82
  %92 = load %struct.tree_content*, %struct.tree_content** %5, align 8
  %93 = load %struct.tree_content*, %struct.tree_content** %5, align 8
  %94 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call %struct.tree_content* @grow_tree_content(%struct.tree_content* %92, i64 %95)
  store %struct.tree_content* %96, %struct.tree_content** %5, align 8
  %97 = load %struct.tree_entry*, %struct.tree_entry** %2, align 8
  %98 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %97, i32 0, i32 2
  store %struct.tree_content* %96, %struct.tree_content** %98, align 8
  br label %99

99:                                               ; preds = %91, %82
  %100 = load %struct.tree_entry*, %struct.tree_entry** %10, align 8
  %101 = load %struct.tree_content*, %struct.tree_content** %5, align 8
  %102 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %101, i32 0, i32 2
  %103 = load %struct.tree_entry**, %struct.tree_entry*** %102, align 8
  %104 = load %struct.tree_content*, %struct.tree_content** %5, align 8
  %105 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %105, align 8
  %108 = getelementptr inbounds %struct.tree_entry*, %struct.tree_entry** %103, i64 %106
  store %struct.tree_entry* %100, %struct.tree_entry** %108, align 8
  %109 = load %struct.tree_entry*, %struct.tree_entry** %10, align 8
  %110 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %109, i32 0, i32 2
  store %struct.tree_content* null, %struct.tree_content** %110, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.tree_entry*, %struct.tree_entry** %10, align 8
  %113 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = call i8* @get_mode(i8* %111, i32* %116)
  store i8* %117, i8** %8, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %99
  %121 = load %struct.object_id*, %struct.object_id** %3, align 8
  %122 = call i32 @oid_to_hex(%struct.object_id* %121)
  %123 = call i32 @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %120, %99
  %125 = load %struct.tree_entry*, %struct.tree_entry** %10, align 8
  %126 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.tree_entry*, %struct.tree_entry** %10, align 8
  %132 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i32 %130, i32* %135, align 4
  %136 = load i8*, i8** %8, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @strlen(i8* %137)
  %139 = call %struct.TYPE_5__* @to_atom(i8* %136, i32 %138)
  %140 = load %struct.tree_entry*, %struct.tree_entry** %10, align 8
  %141 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %140, i32 0, i32 1
  store %struct.TYPE_5__* %139, %struct.TYPE_5__** %141, align 8
  %142 = load %struct.tree_entry*, %struct.tree_entry** %10, align 8
  %143 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %142, i32 0, i32 1
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  %148 = load i8*, i8** %8, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 %147
  store i8* %149, i8** %8, align 8
  %150 = load %struct.tree_entry*, %struct.tree_entry** %10, align 8
  %151 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.object_id, %struct.object_id* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i8*, i8** %8, align 8
  %158 = call i32 @hashcpy(i32 %156, i8* %157)
  %159 = load %struct.tree_entry*, %struct.tree_entry** %10, align 8
  %160 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.object_id, %struct.object_id* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @hashcpy(i32 %165, i8* %166)
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_hash_algo, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %8, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %8, align 8
  br label %76

174:                                              ; preds = %76
  %175 = load i8*, i8** %7, align 8
  %176 = call i32 @free(i8* %175)
  br label %177

177:                                              ; preds = %174, %22
  ret void
}

declare dso_local %struct.tree_content* @new_tree_content(i32) #1

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local %struct.object_entry* @find_object(%struct.object_id*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i8* @gfi_unpack_entry(%struct.object_entry*, i64*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local %struct.tree_entry* @new_tree_entry(...) #1

declare dso_local %struct.tree_content* @grow_tree_content(%struct.tree_content*, i64) #1

declare dso_local i8* @get_mode(i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @to_atom(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @hashcpy(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
