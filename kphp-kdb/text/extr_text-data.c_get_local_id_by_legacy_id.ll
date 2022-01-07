; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_local_id_by_legacy_id.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_local_id_by_legacy_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.file_user_list_entry*, i32 }
%struct.file_user_list_entry = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i8* }

@index_long_legacy_id = common dso_local global i32 0, align 4
@UserHdr = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_local_id_by_legacy_id(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.file_user_list_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.TYPE_9__* @get_user(i32 %19)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %193

24:                                               ; preds = %2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call %struct.TYPE_10__* @ltree_lookup_legacy(i32 %30, i64 %31)
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %7, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %193

39:                                               ; preds = %27
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %41, align 8
  store %struct.file_user_list_entry* %42, %struct.file_user_list_entry** %8, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = call i8* @get_user_metafile(%struct.TYPE_9__* %43)
  store i8* %44, i8** %9, align 8
  br label %48

45:                                               ; preds = %24
  %46 = load i32, i32* %4, align 4
  %47 = call %struct.file_user_list_entry* @lookup_user_directory(i32 %46)
  store %struct.file_user_list_entry* %47, %struct.file_user_list_entry** %8, align 8
  store i8* null, i8** %9, align 8
  br label %48

48:                                               ; preds = %45, %39
  %49 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %8, align 8
  %50 = icmp ne %struct.file_user_list_entry* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %193

52:                                               ; preds = %48
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = call %struct.TYPE_11__* @load_user_metafile(i32 %56)
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %10, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i32 -2, i32* %3, align 4
  br label %193

61:                                               ; preds = %55
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %9, align 8
  br label %65

65:                                               ; preds = %61, %52
  %66 = load i32, i32* @index_long_legacy_id, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %130, label %68

68:                                               ; preds = %65
  store i32 -1, i32* %11, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** @UserHdr, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = bitcast i8* %74 to i32*
  store i32* %75, i32** %14, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** @UserHdr, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** @UserHdr, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = ashr i32 %82, 3
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %107, %68
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %85, %86
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %108

89:                                               ; preds = %84
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %90, %91
  %93 = ashr i32 %92, 1
  store i32 %93, i32* %13, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %13, align 4
  %96 = mul nsw i32 2, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %5, align 8
  %102 = icmp sle i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %89
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %11, align 4
  br label %107

105:                                              ; preds = %89
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %105, %103
  br label %84

108:                                              ; preds = %84
  %109 = load i32, i32* %11, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %108
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %11, align 4
  %114 = mul nsw i32 2, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %5, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %111
  %122 = load i32*, i32** %14, align 8
  %123 = load i32, i32* %11, align 4
  %124 = mul nsw i32 2, %123
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %3, align 4
  br label %193

129:                                              ; preds = %111, %108
  br label %192

130:                                              ; preds = %65
  store i32 -1, i32* %15, align 4
  %131 = load i8*, i8** %9, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** @UserHdr, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %131, i64 %135
  %137 = bitcast i8* %136 to i32*
  store i32* %137, i32** %18, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** @UserHdr, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** @UserHdr, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %140, %143
  %145 = sdiv i32 %144, 12
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %169, %130
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %15, align 4
  %149 = sub nsw i32 %147, %148
  %150 = icmp sgt i32 %149, 1
  br i1 %150, label %151, label %170

151:                                              ; preds = %146
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %152, %153
  %155 = ashr i32 %154, 1
  store i32 %155, i32* %17, align 4
  %156 = load i32*, i32** %18, align 8
  %157 = load i32, i32* %17, align 4
  %158 = mul nsw i32 3, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = bitcast i32* %160 to i64*
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %5, align 8
  %164 = icmp sle i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %151
  %166 = load i32, i32* %17, align 4
  store i32 %166, i32* %15, align 4
  br label %169

167:                                              ; preds = %151
  %168 = load i32, i32* %17, align 4
  store i32 %168, i32* %16, align 4
  br label %169

169:                                              ; preds = %167, %165
  br label %146

170:                                              ; preds = %146
  %171 = load i32, i32* %15, align 4
  %172 = icmp sge i32 %171, 0
  br i1 %172, label %173, label %191

173:                                              ; preds = %170
  %174 = load i32*, i32** %18, align 8
  %175 = load i32, i32* %15, align 4
  %176 = mul nsw i32 3, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = bitcast i32* %178 to i64*
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %5, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %173
  %184 = load i32*, i32** %18, align 8
  %185 = load i32, i32* %15, align 4
  %186 = mul nsw i32 3, %185
  %187 = add nsw i32 %186, 2
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %3, align 4
  br label %193

191:                                              ; preds = %173, %170
  br label %192

192:                                              ; preds = %191, %129
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %192, %183, %121, %60, %51, %35, %23
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local %struct.TYPE_9__* @get_user(i32) #1

declare dso_local %struct.TYPE_10__* @ltree_lookup_legacy(i32, i64) #1

declare dso_local i8* @get_user_metafile(%struct.TYPE_9__*) #1

declare dso_local %struct.file_user_list_entry* @lookup_user_directory(i32) #1

declare dso_local %struct.TYPE_11__* @load_user_metafile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
