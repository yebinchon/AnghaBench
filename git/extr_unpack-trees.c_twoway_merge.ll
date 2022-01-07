; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_twoway_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_twoway_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.unpack_trees_options = type { i32, i32, i64, %struct.cache_entry* }

@.str = private unnamed_addr constant [37 x i8] c"Cannot do a twoway merge of %d trees\00", align 1
@CE_CONFLICTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twoway_merge(%struct.cache_entry** %0, %struct.unpack_trees_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry**, align 8
  %5 = alloca %struct.unpack_trees_options*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.cache_entry*, align 8
  store %struct.cache_entry** %0, %struct.cache_entry*** %4, align 8
  store %struct.unpack_trees_options* %1, %struct.unpack_trees_options** %5, align 8
  %9 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %10 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %9, i64 0
  %11 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  store %struct.cache_entry* %11, %struct.cache_entry** %6, align 8
  %12 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %13 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %12, i64 1
  %14 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  store %struct.cache_entry* %14, %struct.cache_entry** %7, align 8
  %15 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %16 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %15, i64 2
  %17 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  store %struct.cache_entry* %17, %struct.cache_entry** %8, align 8
  %18 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %19 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %24 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %3, align 4
  br label %199

27:                                               ; preds = %2
  %28 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %29 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %30 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %29, i32 0, i32 3
  %31 = load %struct.cache_entry*, %struct.cache_entry** %30, align 8
  %32 = icmp eq %struct.cache_entry* %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store %struct.cache_entry* null, %struct.cache_entry** %7, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %36 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %37 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %36, i32 0, i32 3
  %38 = load %struct.cache_entry*, %struct.cache_entry** %37, align 8
  %39 = icmp eq %struct.cache_entry* %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store %struct.cache_entry* null, %struct.cache_entry** %8, align 8
  br label %41

41:                                               ; preds = %40, %34
  %42 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %43 = icmp ne %struct.cache_entry* %42, null
  br i1 %43, label %44, label %167

44:                                               ; preds = %41
  %45 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %46 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CE_CONFLICTED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %44
  %52 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %53 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %54 = call i64 @same(%struct.cache_entry* %52, %struct.cache_entry* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %58 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56, %51
  %62 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %63 = icmp ne %struct.cache_entry* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %66 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %67 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %68 = call i32 @deleted_entry(%struct.cache_entry* %65, %struct.cache_entry* %66, %struct.unpack_trees_options* %67)
  store i32 %68, i32* %3, align 4
  br label %199

69:                                               ; preds = %61
  %70 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %71 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %72 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %73 = call i32 @merged_entry(%struct.cache_entry* %70, %struct.cache_entry* %71, %struct.unpack_trees_options* %72)
  store i32 %73, i32* %3, align 4
  br label %199

74:                                               ; preds = %56
  %75 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %76 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %77 = call i32 @reject_merge(%struct.cache_entry* %75, %struct.unpack_trees_options* %76)
  store i32 %77, i32* %3, align 4
  br label %199

78:                                               ; preds = %44
  %79 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %80 = icmp ne %struct.cache_entry* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %83 = icmp ne %struct.cache_entry* %82, null
  br i1 %83, label %84, label %122

84:                                               ; preds = %81, %78
  %85 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %86 = icmp ne %struct.cache_entry* %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %89 = icmp ne %struct.cache_entry* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %92 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %93 = call i64 @same(%struct.cache_entry* %91, %struct.cache_entry* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %122, label %95

95:                                               ; preds = %90, %87, %84
  %96 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %97 = icmp ne %struct.cache_entry* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %100 = icmp ne %struct.cache_entry* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %103 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %104 = call i64 @same(%struct.cache_entry* %102, %struct.cache_entry* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %122, label %106

106:                                              ; preds = %101, %98, %95
  %107 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %108 = icmp ne %struct.cache_entry* %107, null
  br i1 %108, label %109, label %126

109:                                              ; preds = %106
  %110 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %111 = icmp ne %struct.cache_entry* %110, null
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %114 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %115 = call i64 @same(%struct.cache_entry* %113, %struct.cache_entry* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %112
  %118 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %119 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %120 = call i64 @same(%struct.cache_entry* %118, %struct.cache_entry* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117, %101, %90, %81
  %123 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %124 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %125 = call i32 @keep_entry(%struct.cache_entry* %123, %struct.unpack_trees_options* %124)
  store i32 %125, i32* %3, align 4
  br label %199

126:                                              ; preds = %117, %112, %109, %106
  %127 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %128 = icmp ne %struct.cache_entry* %127, null
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %131 = icmp ne %struct.cache_entry* %130, null
  br i1 %131, label %142, label %132

132:                                              ; preds = %129
  %133 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %134 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %135 = call i64 @same(%struct.cache_entry* %133, %struct.cache_entry* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %139 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %140 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %141 = call i32 @deleted_entry(%struct.cache_entry* %138, %struct.cache_entry* %139, %struct.unpack_trees_options* %140)
  store i32 %141, i32* %3, align 4
  br label %199

142:                                              ; preds = %132, %129, %126
  %143 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %144 = icmp ne %struct.cache_entry* %143, null
  br i1 %144, label %145, label %163

145:                                              ; preds = %142
  %146 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %147 = icmp ne %struct.cache_entry* %146, null
  br i1 %147, label %148, label %163

148:                                              ; preds = %145
  %149 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %150 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %151 = call i64 @same(%struct.cache_entry* %149, %struct.cache_entry* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %155 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %156 = call i64 @same(%struct.cache_entry* %154, %struct.cache_entry* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %160 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %161 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %162 = call i32 @merged_entry(%struct.cache_entry* %159, %struct.cache_entry* %160, %struct.unpack_trees_options* %161)
  store i32 %162, i32* %3, align 4
  br label %199

163:                                              ; preds = %153, %148, %145, %142
  %164 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %165 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %166 = call i32 @reject_merge(%struct.cache_entry* %164, %struct.unpack_trees_options* %165)
  store i32 %166, i32* %3, align 4
  br label %199

167:                                              ; preds = %41
  %168 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %169 = icmp ne %struct.cache_entry* %168, null
  br i1 %169, label %170, label %193

170:                                              ; preds = %167
  %171 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %172 = icmp ne %struct.cache_entry* %171, null
  br i1 %172, label %173, label %188

173:                                              ; preds = %170
  %174 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %175 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %188, label %178

178:                                              ; preds = %173
  %179 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %180 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %181 = call i64 @same(%struct.cache_entry* %179, %struct.cache_entry* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i32 1, i32* %3, align 4
  br label %199

184:                                              ; preds = %178
  %185 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %186 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %187 = call i32 @reject_merge(%struct.cache_entry* %185, %struct.unpack_trees_options* %186)
  store i32 %187, i32* %3, align 4
  br label %199

188:                                              ; preds = %173, %170
  %189 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %190 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %191 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %192 = call i32 @merged_entry(%struct.cache_entry* %189, %struct.cache_entry* %190, %struct.unpack_trees_options* %191)
  store i32 %192, i32* %3, align 4
  br label %199

193:                                              ; preds = %167
  br label %194

194:                                              ; preds = %193
  %195 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %196 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %197 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %198 = call i32 @deleted_entry(%struct.cache_entry* %195, %struct.cache_entry* %196, %struct.unpack_trees_options* %197)
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %194, %188, %184, %183, %163, %158, %137, %122, %74, %69, %64, %22
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i64 @same(%struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i32 @deleted_entry(%struct.cache_entry*, %struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32 @merged_entry(%struct.cache_entry*, %struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32 @reject_merge(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32 @keep_entry(%struct.cache_entry*, %struct.unpack_trees_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
