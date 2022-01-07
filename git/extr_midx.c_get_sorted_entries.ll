; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_get_sorted_entries.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_get_sorted_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_midx_entry = type { i32 }
%struct.multi_pack_index = type { i64, i32* }
%struct.pack_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@midx_oid_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pack_midx_entry* (%struct.multi_pack_index*, %struct.pack_info*, i64, i64*)* @get_sorted_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pack_midx_entry* @get_sorted_entries(%struct.multi_pack_index* %0, %struct.pack_info* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.multi_pack_index*, align 8
  %6 = alloca %struct.pack_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.pack_midx_entry*, align 8
  %16 = alloca %struct.pack_midx_entry*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.multi_pack_index* %0, %struct.multi_pack_index** %5, align 8
  store %struct.pack_info* %1, %struct.pack_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %14, align 8
  store %struct.pack_midx_entry* null, %struct.pack_midx_entry** %15, align 8
  store %struct.pack_midx_entry* null, %struct.pack_midx_entry** %16, align 8
  %23 = load %struct.multi_pack_index*, %struct.multi_pack_index** %5, align 8
  %24 = icmp ne %struct.multi_pack_index* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.multi_pack_index*, %struct.multi_pack_index** %5, align 8
  %27 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  br label %30

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i64 [ %28, %25 ], [ 0, %29 ]
  store i64 %31, i64* %17, align 8
  %32 = load i64, i64* %17, align 8
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %47, %30
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.pack_info*, %struct.pack_info** %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %38, i64 %39
  %41 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %14, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %14, align 8
  br label %47

47:                                               ; preds = %37
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %33

50:                                               ; preds = %33
  %51 = load i64, i64* %14, align 8
  %52 = icmp ugt i64 %51, 3200
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* %14, align 8
  %55 = udiv i64 %54, 200
  br label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i64 [ %55, %53 ], [ 16, %56 ]
  store i64 %58, i64* %12, align 8
  store i64 %58, i64* %13, align 8
  %59 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %15, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @ALLOC_ARRAY(%struct.pack_midx_entry* %59, i64 %60)
  %62 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %16, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @ALLOC_ARRAY(%struct.pack_midx_entry* %62, i64 %63)
  %65 = load i64*, i64** %8, align 8
  store i64 0, i64* %65, align 8
  store i64 0, i64* %9, align 8
  br label %66

66:                                               ; preds = %219, %57
  %67 = load i64, i64* %9, align 8
  %68 = icmp ult i64 %67, 256
  br i1 %68, label %69, label %222

69:                                               ; preds = %66
  store i64 0, i64* %18, align 8
  %70 = load %struct.multi_pack_index*, %struct.multi_pack_index** %5, align 8
  %71 = icmp ne %struct.multi_pack_index* %70, null
  br i1 %71, label %72, label %115

72:                                               ; preds = %69
  store i64 0, i64* %19, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.multi_pack_index*, %struct.multi_pack_index** %5, align 8
  %77 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = sub i64 %79, 1
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @ntohl(i32 %82)
  store i64 %83, i64* %19, align 8
  br label %84

84:                                               ; preds = %75, %72
  %85 = load %struct.multi_pack_index*, %struct.multi_pack_index** %5, align 8
  %86 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ntohl(i32 %90)
  store i64 %91, i64* %20, align 8
  %92 = load i64, i64* %19, align 8
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %111, %84
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %20, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %93
  %98 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %15, align 8
  %99 = load i64, i64* %18, align 8
  %100 = add i64 %99, 1
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @ALLOC_GROW(%struct.pack_midx_entry* %98, i64 %100, i64 %101)
  %103 = load %struct.multi_pack_index*, %struct.multi_pack_index** %5, align 8
  %104 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %15, align 8
  %105 = load i64, i64* %18, align 8
  %106 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %104, i64 %105
  %107 = load i64, i64* %11, align 8
  %108 = call i32 @nth_midxed_pack_midx_entry(%struct.multi_pack_index* %103, %struct.pack_midx_entry* %106, i64 %107)
  %109 = load i64, i64* %18, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %18, align 8
  br label %111

111:                                              ; preds = %97
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %11, align 8
  br label %93

114:                                              ; preds = %93
  br label %115

115:                                              ; preds = %114, %69
  %116 = load i64, i64* %17, align 8
  store i64 %116, i64* %10, align 8
  br label %117

117:                                              ; preds = %169, %115
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %7, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %172

121:                                              ; preds = %117
  store i64 0, i64* %21, align 8
  %122 = load i64, i64* %9, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load %struct.pack_info*, %struct.pack_info** %6, align 8
  %126 = load i64, i64* %10, align 8
  %127 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %125, i64 %126
  %128 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %127, i32 0, i32 0
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = sub i64 %130, 1
  %132 = call i64 @get_pack_fanout(%struct.TYPE_3__* %129, i64 %131)
  store i64 %132, i64* %21, align 8
  br label %133

133:                                              ; preds = %124, %121
  %134 = load %struct.pack_info*, %struct.pack_info** %6, align 8
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %134, i64 %135
  %137 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %136, i32 0, i32 0
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = load i64, i64* %9, align 8
  %140 = call i64 @get_pack_fanout(%struct.TYPE_3__* %138, i64 %139)
  store i64 %140, i64* %22, align 8
  %141 = load i64, i64* %21, align 8
  store i64 %141, i64* %11, align 8
  br label %142

142:                                              ; preds = %165, %133
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* %22, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %168

146:                                              ; preds = %142
  %147 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %15, align 8
  %148 = load i64, i64* %18, align 8
  %149 = add i64 %148, 1
  %150 = load i64, i64* %12, align 8
  %151 = call i32 @ALLOC_GROW(%struct.pack_midx_entry* %147, i64 %149, i64 %150)
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.pack_info*, %struct.pack_info** %6, align 8
  %154 = load i64, i64* %10, align 8
  %155 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %153, i64 %154
  %156 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %155, i32 0, i32 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = load i64, i64* %11, align 8
  %159 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %15, align 8
  %160 = load i64, i64* %18, align 8
  %161 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %159, i64 %160
  %162 = call i32 @fill_pack_entry(i64 %152, %struct.TYPE_3__* %157, i64 %158, %struct.pack_midx_entry* %161)
  %163 = load i64, i64* %18, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %18, align 8
  br label %165

165:                                              ; preds = %146
  %166 = load i64, i64* %11, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %11, align 8
  br label %142

168:                                              ; preds = %142
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %10, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %10, align 8
  br label %117

172:                                              ; preds = %117
  %173 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %15, align 8
  %174 = load i64, i64* %18, align 8
  %175 = load i32, i32* @midx_oid_compare, align 4
  %176 = call i32 @QSORT(%struct.pack_midx_entry* %173, i64 %174, i32 %175)
  store i64 0, i64* %11, align 8
  br label %177

177:                                              ; preds = %215, %172
  %178 = load i64, i64* %11, align 8
  %179 = load i64, i64* %18, align 8
  %180 = icmp ult i64 %178, %179
  br i1 %180, label %181, label %218

181:                                              ; preds = %177
  %182 = load i64, i64* %11, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %181
  %185 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %15, align 8
  %186 = load i64, i64* %11, align 8
  %187 = sub i64 %186, 1
  %188 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %185, i64 %187
  %189 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %188, i32 0, i32 0
  %190 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %15, align 8
  %191 = load i64, i64* %11, align 8
  %192 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %190, i64 %191
  %193 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %192, i32 0, i32 0
  %194 = call i64 @oideq(i32* %189, i32* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %184
  br label %215

197:                                              ; preds = %184, %181
  %198 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %16, align 8
  %199 = load i64*, i64** %8, align 8
  %200 = load i64, i64* %199, align 8
  %201 = add i64 %200, 1
  %202 = load i64, i64* %13, align 8
  %203 = call i32 @ALLOC_GROW(%struct.pack_midx_entry* %198, i64 %201, i64 %202)
  %204 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %16, align 8
  %205 = load i64*, i64** %8, align 8
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %204, i64 %206
  %208 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %15, align 8
  %209 = load i64, i64* %11, align 8
  %210 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %208, i64 %209
  %211 = call i32 @memcpy(%struct.pack_midx_entry* %207, %struct.pack_midx_entry* %210, i32 4)
  %212 = load i64*, i64** %8, align 8
  %213 = load i64, i64* %212, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %212, align 8
  br label %215

215:                                              ; preds = %197, %196
  %216 = load i64, i64* %11, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %11, align 8
  br label %177

218:                                              ; preds = %177
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %9, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %9, align 8
  br label %66

222:                                              ; preds = %66
  %223 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %15, align 8
  %224 = call i32 @free(%struct.pack_midx_entry* %223)
  %225 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %16, align 8
  ret %struct.pack_midx_entry* %225
}

declare dso_local i32 @ALLOC_ARRAY(%struct.pack_midx_entry*, i64) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.pack_midx_entry*, i64, i64) #1

declare dso_local i32 @nth_midxed_pack_midx_entry(%struct.multi_pack_index*, %struct.pack_midx_entry*, i64) #1

declare dso_local i64 @get_pack_fanout(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @fill_pack_entry(i64, %struct.TYPE_3__*, i64, %struct.pack_midx_entry*) #1

declare dso_local i32 @QSORT(%struct.pack_midx_entry*, i64, i32) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i32 @memcpy(%struct.pack_midx_entry*, %struct.pack_midx_entry*, i32) #1

declare dso_local i32 @free(%struct.pack_midx_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
