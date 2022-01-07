; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_unpack_nondirectories.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_unpack_nondirectories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.name_entry = type { i32 }
%struct.traverse_info = type { i64, %struct.unpack_trees_options* }
%struct.unpack_trees_options = type { i32, i32, %struct.cache_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, %struct.cache_entry**, %struct.name_entry*, %struct.traverse_info*)* @unpack_nondirectories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_nondirectories(i32 %0, i64 %1, i64 %2, %struct.cache_entry** %3, %struct.name_entry* %4, %struct.traverse_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cache_entry**, align 8
  %12 = alloca %struct.name_entry*, align 8
  %13 = alloca %struct.traverse_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.unpack_trees_options*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.cache_entry*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.cache_entry** %3, %struct.cache_entry*** %11, align 8
  store %struct.name_entry* %4, %struct.name_entry** %12, align 8
  store %struct.traverse_info* %5, %struct.traverse_info** %13, align 8
  %21 = load %struct.traverse_info*, %struct.traverse_info** %13, align 8
  %22 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %21, i32 0, i32 1
  %23 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %22, align 8
  store %struct.unpack_trees_options* %23, %struct.unpack_trees_options** %15, align 8
  %24 = load %struct.traverse_info*, %struct.traverse_info** %13, align 8
  %25 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = or i64 %26, %27
  store i64 %28, i64* %16, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %6
  %33 = load %struct.cache_entry**, %struct.cache_entry*** %11, align 8
  %34 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %33, i64 0
  %35 = load %struct.cache_entry*, %struct.cache_entry** %34, align 8
  %36 = icmp ne %struct.cache_entry* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %196

38:                                               ; preds = %32, %6
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %118, %38
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %121

43:                                               ; preds = %39
  %44 = load i32, i32* %14, align 4
  %45 = zext i32 %44 to i64
  %46 = shl i64 1, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %18, align 4
  %48 = load i64, i64* %16, align 8
  %49 = load i32, i32* %18, align 4
  %50 = zext i32 %49 to i64
  %51 = and i64 %48, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %43
  %54 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %55 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %54, i32 0, i32 2
  %56 = load %struct.cache_entry*, %struct.cache_entry** %55, align 8
  %57 = load %struct.cache_entry**, %struct.cache_entry*** %11, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %60 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %58, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %57, i64 %63
  store %struct.cache_entry* %56, %struct.cache_entry** %64, align 8
  br label %118

65:                                               ; preds = %43
  %66 = load i64, i64* %9, align 8
  %67 = load i32, i32* %18, align 4
  %68 = zext i32 %67 to i64
  %69 = and i64 %66, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %118

72:                                               ; preds = %65
  %73 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %74 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 0, i32* %17, align 4
  br label %97

78:                                               ; preds = %72
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  %81 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %82 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 1, i32* %17, align 4
  br label %96

86:                                               ; preds = %78
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  %89 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %90 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 3, i32* %17, align 4
  br label %95

94:                                               ; preds = %86
  store i32 2, i32* %17, align 4
  br label %95

95:                                               ; preds = %94, %93
  br label %96

96:                                               ; preds = %95, %85
  br label %97

97:                                               ; preds = %96, %77
  %98 = load %struct.traverse_info*, %struct.traverse_info** %13, align 8
  %99 = load %struct.name_entry*, %struct.name_entry** %12, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %99, i64 %101
  %103 = load i32, i32* %17, align 4
  %104 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %105 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %104, i32 0, i32 3
  %106 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %107 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call %struct.cache_entry* @create_ce_entry(%struct.traverse_info* %98, %struct.name_entry* %102, i32 %103, i32* %105, i32 %108)
  %110 = load %struct.cache_entry**, %struct.cache_entry*** %11, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %113 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %111, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %110, i64 %116
  store %struct.cache_entry* %109, %struct.cache_entry** %117, align 8
  br label %118

118:                                              ; preds = %97, %71, %53
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %39

121:                                              ; preds = %39
  %122 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %123 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %158

126:                                              ; preds = %121
  %127 = load %struct.cache_entry**, %struct.cache_entry*** %11, align 8
  %128 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %129 = call i32 @call_unpack_fn(%struct.cache_entry** %127, %struct.unpack_trees_options* %128)
  store i32 %129, i32* %19, align 4
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %153, %126
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %156

134:                                              ; preds = %130
  %135 = load %struct.cache_entry**, %struct.cache_entry*** %11, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %138 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %136, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %135, i64 %141
  %143 = load %struct.cache_entry*, %struct.cache_entry** %142, align 8
  store %struct.cache_entry* %143, %struct.cache_entry** %20, align 8
  %144 = load %struct.cache_entry*, %struct.cache_entry** %20, align 8
  %145 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %146 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %145, i32 0, i32 2
  %147 = load %struct.cache_entry*, %struct.cache_entry** %146, align 8
  %148 = icmp ne %struct.cache_entry* %144, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %134
  %150 = load %struct.cache_entry*, %struct.cache_entry** %20, align 8
  %151 = call i32 @discard_cache_entry(%struct.cache_entry* %150)
  br label %152

152:                                              ; preds = %149, %134
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  br label %130

156:                                              ; preds = %130
  %157 = load i32, i32* %19, align 4
  store i32 %157, i32* %7, align 4
  br label %196

158:                                              ; preds = %121
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %192, %158
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %195

163:                                              ; preds = %159
  %164 = load %struct.cache_entry**, %struct.cache_entry*** %11, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %164, i64 %166
  %168 = load %struct.cache_entry*, %struct.cache_entry** %167, align 8
  %169 = icmp ne %struct.cache_entry* %168, null
  br i1 %169, label %170, label %191

170:                                              ; preds = %163
  %171 = load %struct.cache_entry**, %struct.cache_entry*** %11, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %171, i64 %173
  %175 = load %struct.cache_entry*, %struct.cache_entry** %174, align 8
  %176 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %177 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %176, i32 0, i32 2
  %178 = load %struct.cache_entry*, %struct.cache_entry** %177, align 8
  %179 = icmp ne %struct.cache_entry* %175, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %170
  %181 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %182 = load %struct.cache_entry**, %struct.cache_entry*** %11, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %182, i64 %184
  %186 = load %struct.cache_entry*, %struct.cache_entry** %185, align 8
  %187 = call i64 @do_add_entry(%struct.unpack_trees_options* %181, %struct.cache_entry* %186, i32 0, i32 0)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %180
  store i32 -1, i32* %7, align 4
  br label %196

190:                                              ; preds = %180
  br label %191

191:                                              ; preds = %190, %170, %163
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %14, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %14, align 4
  br label %159

195:                                              ; preds = %159
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %195, %189, %156, %37
  %197 = load i32, i32* %7, align 4
  ret i32 %197
}

declare dso_local %struct.cache_entry* @create_ce_entry(%struct.traverse_info*, %struct.name_entry*, i32, i32*, i32) #1

declare dso_local i32 @call_unpack_fn(%struct.cache_entry**, %struct.unpack_trees_options*) #1

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

declare dso_local i64 @do_add_entry(%struct.unpack_trees_options*, %struct.cache_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
