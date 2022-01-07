; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_find_cache_pos.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_find_cache_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traverse_info = type { i32, i32, %struct.unpack_trees_options* }
%struct.unpack_trees_options = type { i32, %struct.index_state* }
%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i8* }

@CE_UNPACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.traverse_info*, i8*, i64)* @find_cache_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_cache_pos(%struct.traverse_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.traverse_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.unpack_trees_options*, align 8
  %10 = alloca %struct.index_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cache_entry*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.traverse_info* %0, %struct.traverse_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.traverse_info*, %struct.traverse_info** %5, align 8
  %18 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %17, i32 0, i32 2
  %19 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %18, align 8
  store %struct.unpack_trees_options* %19, %struct.unpack_trees_options** %9, align 8
  %20 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %9, align 8
  %21 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %20, i32 0, i32 1
  %22 = load %struct.index_state*, %struct.index_state** %21, align 8
  store %struct.index_state* %22, %struct.index_state** %10, align 8
  %23 = load %struct.traverse_info*, %struct.traverse_info** %5, align 8
  %24 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %9, align 8
  %27 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %151, %3
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.index_state*, %struct.index_state** %10, align 8
  %32 = getelementptr inbounds %struct.index_state, %struct.index_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %154

35:                                               ; preds = %29
  %36 = load %struct.index_state*, %struct.index_state** %10, align 8
  %37 = getelementptr inbounds %struct.index_state, %struct.index_state* %36, i32 0, i32 1
  %38 = load %struct.cache_entry**, %struct.cache_entry*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %38, i64 %40
  %42 = load %struct.cache_entry*, %struct.cache_entry** %41, align 8
  store %struct.cache_entry* %42, %struct.cache_entry** %12, align 8
  %43 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %44 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CE_UNPACKED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %35
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %9, align 8
  %52 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %9, align 8
  %57 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %55, %49
  br label %151

61:                                               ; preds = %35
  %62 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %63 = load %struct.traverse_info*, %struct.traverse_info** %5, align 8
  %64 = call i32 @ce_in_traverse_path(%struct.cache_entry* %62, %struct.traverse_info* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %61
  %67 = load %struct.traverse_info*, %struct.traverse_info** %5, align 8
  %68 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %73 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.traverse_info*, %struct.traverse_info** %5, align 8
  %76 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.traverse_info*, %struct.traverse_info** %5, align 8
  %79 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @strncmp(i8* %74, i32 %77, i32 %80)
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %154

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %66
  br label %151

86:                                               ; preds = %61
  %87 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %88 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8* %92, i8** %13, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = call i8* @strchr(i8* %93, i8 signext 47)
  store i8* %94, i8** %14, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %86
  %98 = load i8*, i8** %14, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %16, align 4
  br label %109

104:                                              ; preds = %86
  %105 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %106 = call i32 @ce_namelen(%struct.cache_entry* %105)
  %107 = load i32, i32* %11, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %16, align 4
  br label %109

109:                                              ; preds = %104, %97
  %110 = load i8*, i8** %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @name_compare(i8* %110, i64 %111, i8* %112, i32 %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %109
  %118 = load i8*, i8** %14, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = sub nsw i32 -2, %121
  br label %125

123:                                              ; preds = %117
  %124 = load i32, i32* %8, align 4
  br label %125

125:                                              ; preds = %123, %120
  %126 = phi i32 [ %122, %120 ], [ %124, %123 ]
  store i32 %126, i32* %4, align 4
  br label %155

127:                                              ; preds = %109
  %128 = load i32, i32* %15, align 4
  %129 = icmp slt i32 0, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %151

131:                                              ; preds = %127
  %132 = load i64, i64* %7, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp ult i64 %132, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %131
  %137 = load i8*, i8** %13, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @memcmp(i8* %137, i8* %138, i64 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %136
  %143 = load i8*, i8** %13, align 8
  %144 = load i64, i64* %7, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp slt i32 %147, 47
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %151

150:                                              ; preds = %142, %136, %131
  br label %154

151:                                              ; preds = %149, %130, %85, %60
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %29

154:                                              ; preds = %150, %83, %29
  store i32 -1, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %125
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @ce_in_traverse_path(%struct.cache_entry*, %struct.traverse_info*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @name_compare(i8*, i64, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
