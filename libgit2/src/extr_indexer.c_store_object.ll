; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_indexer.c_store_object.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_indexer.c_store_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32*, i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__, i64, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.entry = type { i32, i32, i32, i64, i64 }
%struct.git_pack_entry = type { i32, i32, i32, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@UINT31_MAX = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@GIT_ERROR_INDEXER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"duplicate object %s found in pack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @store_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_object(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca %struct.entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.git_pack_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = call %struct.git_pack_entry* @git__calloc(i32 1, i32 32)
  %16 = bitcast %struct.git_pack_entry* %15 to %struct.entry*
  store %struct.entry* %16, %struct.entry** %7, align 8
  %17 = load %struct.entry*, %struct.entry** %7, align 8
  %18 = bitcast %struct.entry* %17 to %struct.git_pack_entry*
  %19 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.git_pack_entry* %18)
  %20 = call %struct.git_pack_entry* @git__calloc(i32 1, i32 32)
  store %struct.git_pack_entry* %20, %struct.git_pack_entry** %9, align 8
  %21 = load %struct.git_pack_entry*, %struct.git_pack_entry** %9, align 8
  %22 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.git_pack_entry* %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 8
  %25 = call i32 @git_hash_final(%struct.TYPE_14__* %6, i32* %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @UINT31_MAX, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load i64, i64* @UINT32_MAX, align 8
  %36 = load %struct.entry*, %struct.entry** %7, align 8
  %37 = getelementptr inbounds %struct.entry, %struct.entry* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.entry*, %struct.entry** %7, align 8
  %40 = getelementptr inbounds %struct.entry, %struct.entry* %39, i32 0, i32 4
  store i64 %38, i64* %40, align 8
  br label %45

41:                                               ; preds = %1
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.entry*, %struct.entry** %7, align 8
  %44 = getelementptr inbounds %struct.entry, %struct.entry* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %51, align 4
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %56, align 4
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %61, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = call i32 @check_object_connectivity(%struct.TYPE_15__* %65, %struct.TYPE_13__* %11)
  store i32 %66, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %50
  br label %153

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %45
  %71 = load %struct.git_pack_entry*, %struct.git_pack_entry** %9, align 8
  %72 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %71, i32 0, i32 2
  %73 = call i32 @git_oid_cpy(i32* %72, %struct.TYPE_14__* %6)
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.git_pack_entry*, %struct.git_pack_entry** %9, align 8
  %76 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.git_pack_entry*, %struct.git_pack_entry** %9, align 8
  %83 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %82, i32 0, i32 2
  %84 = call i64 @git_oidmap_exists(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %70
  %87 = load i32, i32* @GIT_ERROR_INDEXER, align 4
  %88 = load %struct.git_pack_entry*, %struct.git_pack_entry** %9, align 8
  %89 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %88, i32 0, i32 2
  %90 = call i32 @git_oid_tostr_s(i32* %89)
  %91 = call i32 @git_error_set(i32 %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load %struct.git_pack_entry*, %struct.git_pack_entry** %9, align 8
  %93 = call i32 @git__free(%struct.git_pack_entry* %92)
  br label %153

94:                                               ; preds = %70
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.git_pack_entry*, %struct.git_pack_entry** %9, align 8
  %101 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %100, i32 0, i32 2
  %102 = load %struct.git_pack_entry*, %struct.git_pack_entry** %9, align 8
  %103 = call i32 @git_oidmap_set(i32 %99, i32* %101, %struct.git_pack_entry* %102)
  store i32 %103, i32* %5, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %94
  %106 = load %struct.git_pack_entry*, %struct.git_pack_entry** %9, align 8
  %107 = call i32 @git__free(%struct.git_pack_entry* %106)
  %108 = call i32 (...) @git_error_set_oom()
  br label %153

109:                                              ; preds = %94
  %110 = load %struct.entry*, %struct.entry** %7, align 8
  %111 = getelementptr inbounds %struct.entry, %struct.entry* %110, i32 0, i32 1
  %112 = call i32 @git_oid_cpy(i32* %111, %struct.TYPE_14__* %6)
  %113 = load %struct.entry*, %struct.entry** %7, align 8
  %114 = getelementptr inbounds %struct.entry, %struct.entry* %113, i32 0, i32 0
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* %8, align 8
  %121 = call i64 @crc_object(i32* %114, i32* %118, i64 %119, i64 %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %109
  br label %153

124:                                              ; preds = %109
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 3
  %127 = load %struct.entry*, %struct.entry** %7, align 8
  %128 = bitcast %struct.entry* %127 to %struct.git_pack_entry*
  %129 = call i64 @git_vector_insert(i32* %126, %struct.git_pack_entry* %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %153

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %149, %132
  %138 = load i32, i32* %4, align 4
  %139 = icmp slt i32 %138, 256
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %140
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %4, align 4
  br label %137

152:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %157

153:                                              ; preds = %131, %123, %105, %86, %68
  %154 = load %struct.entry*, %struct.entry** %7, align 8
  %155 = bitcast %struct.entry* %154 to %struct.git_pack_entry*
  %156 = call i32 @git__free(%struct.git_pack_entry* %155)
  store i32 -1, i32* %2, align 4
  br label %157

157:                                              ; preds = %153, %152
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.git_pack_entry* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.git_pack_entry*) #1

declare dso_local i32 @git_hash_final(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @check_object_connectivity(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @git_oid_cpy(i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @git_oidmap_exists(i32, i32*) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

declare dso_local i32 @git_oid_tostr_s(i32*) #1

declare dso_local i32 @git__free(%struct.git_pack_entry*) #1

declare dso_local i32 @git_oidmap_set(i32, i32*, %struct.git_pack_entry*) #1

declare dso_local i32 @git_error_set_oom(...) #1

declare dso_local i64 @crc_object(i32*, i32*, i64, i64) #1

declare dso_local i64 @git_vector_insert(i32*, %struct.git_pack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
