; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_traverse_trees_recursive.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_traverse_trees_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_entry = type { %struct.object_id, i64, i32, i32 }
%struct.object_id = type { i32 }
%struct.traverse_info = type { i64, i32, i64, i32, i32, i32, %struct.traverse_info*, %struct.unpack_trees_options* }
%struct.unpack_trees_options = type { i32, i32, i32 }
%struct.tree_desc = type { i32 }

@MAX_UNPACK_TREES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Wrong condition to get here buddy\00", align 1
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, %struct.name_entry*, %struct.traverse_info*)* @traverse_trees_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverse_trees_recursive(i32 %0, i64 %1, i64 %2, %struct.name_entry* %3, %struct.traverse_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.name_entry*, align 8
  %11 = alloca %struct.traverse_info*, align 8
  %12 = alloca %struct.unpack_trees_options*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.traverse_info, align 8
  %21 = alloca %struct.name_entry*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.object_id*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.name_entry* %3, %struct.name_entry** %10, align 8
  store %struct.traverse_info* %4, %struct.traverse_info** %11, align 8
  %26 = load %struct.traverse_info*, %struct.traverse_info** %11, align 8
  %27 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %26, i32 0, i32 7
  %28 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %27, align 8
  store %struct.unpack_trees_options* %28, %struct.unpack_trees_options** %12, align 8
  store i32 0, i32* %16, align 4
  %29 = load i32, i32* @MAX_UNPACK_TREES, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %17, align 8
  %32 = alloca %struct.tree_desc, i64 %30, align 16
  store i64 %30, i64* %18, align 8
  %33 = load i32, i32* @MAX_UNPACK_TREES, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8*, i64 %34, align 16
  store i64 %34, i64* %19, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %39 = load %struct.traverse_info*, %struct.traverse_info** %11, align 8
  %40 = call i32 @all_trees_same_as_cache_tree(i32 %36, i64 %37, %struct.name_entry* %38, %struct.traverse_info* %39)
  store i32 %40, i32* %22, align 4
  %41 = load i32, i32* %22, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %5
  %44 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %45 = load %struct.traverse_info*, %struct.traverse_info** %11, align 8
  %46 = call i32 @index_pos_by_traverse_info(%struct.name_entry* %44, %struct.traverse_info* %45)
  store i32 %46, i32* %23, align 4
  %47 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %12, align 8
  %48 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %43
  %55 = call i32 @BUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  %57 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %12, align 8
  %58 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %23, align 4
  %61 = load i32, i32* %22, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.traverse_info*, %struct.traverse_info** %11, align 8
  %64 = call i32 @traverse_by_cache_tree(i32 %60, i32 %61, i32 %62, %struct.traverse_info* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %12, align 8
  %67 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %218

69:                                               ; preds = %5
  %70 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  store %struct.name_entry* %70, %struct.name_entry** %21, align 8
  br label %71

71:                                               ; preds = %77, %69
  %72 = load %struct.name_entry*, %struct.name_entry** %21, align 8
  %73 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  %76 = xor i1 %75, true
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.name_entry*, %struct.name_entry** %21, align 8
  %79 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %78, i32 1
  store %struct.name_entry* %79, %struct.name_entry** %21, align 8
  br label %71

80:                                               ; preds = %71
  %81 = load %struct.traverse_info*, %struct.traverse_info** %11, align 8
  %82 = bitcast %struct.traverse_info* %20 to i8*
  %83 = bitcast %struct.traverse_info* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 56, i1 false)
  %84 = load %struct.traverse_info*, %struct.traverse_info** %11, align 8
  %85 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %20, i32 0, i32 6
  store %struct.traverse_info* %84, %struct.traverse_info** %85, align 8
  %86 = load %struct.traverse_info*, %struct.traverse_info** %11, align 8
  %87 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %20, i32 0, i32 5
  store i32 %88, i32* %89, align 8
  %90 = load %struct.name_entry*, %struct.name_entry** %21, align 8
  %91 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %20, i32 0, i32 4
  store i32 %92, i32* %93, align 4
  %94 = load %struct.name_entry*, %struct.name_entry** %21, align 8
  %95 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %20, i32 0, i32 3
  store i32 %96, i32* %97, align 8
  %98 = load %struct.name_entry*, %struct.name_entry** %21, align 8
  %99 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %20, i32 0, i32 2
  store i64 %100, i64* %101, align 8
  %102 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %20, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.name_entry*, %struct.name_entry** %21, align 8
  %105 = call i32 @tree_entry_len(%struct.name_entry* %104)
  %106 = call i32 @st_add3(i32 %103, i32 %105, i32 1)
  %107 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %20, i32 0, i32 1
  store i32 %106, i32* %107, align 8
  %108 = load i64, i64* %9, align 8
  %109 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %20, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = or i64 %110, %108
  store i64 %111, i64* %109, align 8
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %189, %80
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %194

116:                                              ; preds = %112
  %117 = load i32, i32* %13, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %116
  %120 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %120, i64 %122
  %124 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %124, i64 %127
  %129 = call i64 @are_same_oid(%struct.name_entry* %123, %struct.name_entry* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %119
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %32, i64 %133
  %135 = load i32, i32* %13, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %32, i64 %137
  %139 = bitcast %struct.tree_desc* %134 to i8*
  %140 = bitcast %struct.tree_desc* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %139, i8* align 4 %140, i64 4, i1 false)
  br label %188

141:                                              ; preds = %119, %116
  %142 = load i32, i32* %13, align 4
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %166

144:                                              ; preds = %141
  %145 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %145, i64 %147
  %149 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sub nsw i32 %150, 2
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %149, i64 %152
  %154 = call i64 @are_same_oid(%struct.name_entry* %148, %struct.name_entry* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %144
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %32, i64 %158
  %160 = load i32, i32* %13, align 4
  %161 = sub nsw i32 %160, 2
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %32, i64 %162
  %164 = bitcast %struct.tree_desc* %159 to i8*
  %165 = bitcast %struct.tree_desc* %163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %164, i8* align 4 %165, i64 4, i1 false)
  br label %187

166:                                              ; preds = %144, %141
  store %struct.object_id* null, %struct.object_id** %25, align 8
  %167 = load i64, i64* %8, align 8
  %168 = and i64 %167, 1
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load %struct.name_entry*, %struct.name_entry** %10, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %171, i64 %173
  %175 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %174, i32 0, i32 0
  store %struct.object_id* %175, %struct.object_id** %25, align 8
  br label %176

176:                                              ; preds = %170, %166
  %177 = load i32, i32* @the_repository, align 4
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %32, i64 %179
  %181 = load %struct.object_id*, %struct.object_id** %25, align 8
  %182 = call i8* @fill_tree_descriptor(i32 %177, %struct.tree_desc* %180, %struct.object_id* %181)
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %16, align 4
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i8*, i8** %35, i64 %185
  store i8* %182, i8** %186, align 8
  br label %187

187:                                              ; preds = %176, %156
  br label %188

188:                                              ; preds = %187, %131
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %13, align 4
  %192 = load i64, i64* %8, align 8
  %193 = lshr i64 %192, 1
  store i64 %193, i64* %8, align 8
  br label %112

194:                                              ; preds = %112
  %195 = call i32 @switch_cache_bottom(%struct.traverse_info* %20)
  store i32 %195, i32* %15, align 4
  %196 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %12, align 8
  %197 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @traverse_trees(i32 %198, i32 %199, %struct.tree_desc* %32, %struct.traverse_info* %20)
  store i32 %200, i32* %14, align 4
  %201 = load i32, i32* %15, align 4
  %202 = call i32 @restore_cache_bottom(%struct.traverse_info* %20, i32 %201)
  store i32 0, i32* %13, align 4
  br label %203

203:                                              ; preds = %213, %194
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %16, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %216

207:                                              ; preds = %203
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %35, i64 %209
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @free(i8* %211)
  br label %213

213:                                              ; preds = %207
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %13, align 4
  br label %203

216:                                              ; preds = %203
  %217 = load i32, i32* %14, align 4
  store i32 %217, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %218

218:                                              ; preds = %216, %56
  %219 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %6, align 4
  ret i32 %220
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @all_trees_same_as_cache_tree(i32, i64, %struct.name_entry*, %struct.traverse_info*) #2

declare dso_local i32 @index_pos_by_traverse_info(%struct.name_entry*, %struct.traverse_info*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @traverse_by_cache_tree(i32, i32, i32, %struct.traverse_info*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @st_add3(i32, i32, i32) #2

declare dso_local i32 @tree_entry_len(%struct.name_entry*) #2

declare dso_local i64 @are_same_oid(%struct.name_entry*, %struct.name_entry*) #2

declare dso_local i8* @fill_tree_descriptor(i32, %struct.tree_desc*, %struct.object_id*) #2

declare dso_local i32 @switch_cache_bottom(%struct.traverse_info*) #2

declare dso_local i32 @traverse_trees(i32, i32, %struct.tree_desc*, %struct.traverse_info*) #2

declare dso_local i32 @restore_cache_bottom(%struct.traverse_info*, i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
