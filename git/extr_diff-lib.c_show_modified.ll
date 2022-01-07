; ModuleID = '/home/carl/AnghaBench/git/extr_diff-lib.c_show_modified.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-lib.c_show_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cache_entry = type { i32, i32, %struct.object_id }
%struct.object_id = type { i32 }
%struct.combine_diff_path = type { i8*, i32, %struct.TYPE_6__*, i32, i32* }
%struct.TYPE_6__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@DIFF_STATUS_MODIFIED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.cache_entry*, %struct.cache_entry*, i32, i32, i32)* @show_modified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_modified(%struct.rev_info* %0, %struct.cache_entry* %1, %struct.cache_entry* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rev_info*, align 8
  %9 = alloca %struct.cache_entry*, align 8
  %10 = alloca %struct.cache_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.object_id*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.combine_diff_path*, align 8
  %19 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %8, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %9, align 8
  store %struct.cache_entry* %2, %struct.cache_entry** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %24 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %23, i32 0, i32 0
  %25 = call i64 @get_stat_data(%struct.cache_entry* %20, %struct.object_id** %16, i32* %14, i32 %21, i32 %22, i32* %17, %struct.TYPE_7__* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %32 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %33 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %34 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %33, i32 0, i32 2
  %35 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %36 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @diff_index_show_file(%struct.rev_info* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.cache_entry* %32, %struct.object_id* %34, i32 1, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %30, %27
  store i32 -1, i32* %7, align 4
  br label %194

40:                                               ; preds = %6
  %41 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %42 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %152

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %152, label %48

48:                                               ; preds = %45
  %49 = load %struct.object_id*, %struct.object_id** %16, align 8
  %50 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %51 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %50, i32 0, i32 2
  %52 = call i64 @oideq(%struct.object_id* %49, %struct.object_id* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %56 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %55, i32 0, i32 2
  %57 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %58 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %57, i32 0, i32 2
  %59 = call i64 @oideq(%struct.object_id* %56, %struct.object_id* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %152, label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %63 = call i32 @ce_namelen(%struct.cache_entry* %62)
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @combine_diff_path_size(i32 2, i32 %64)
  %66 = call %struct.combine_diff_path* @xmalloc(i32 %65)
  store %struct.combine_diff_path* %66, %struct.combine_diff_path** %18, align 8
  %67 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %68 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 2
  %71 = bitcast %struct.TYPE_6__* %70 to i8*
  %72 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %73 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %75 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %74, i32 0, i32 4
  store i32* null, i32** %75, align 8
  %76 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %77 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %80 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %19, align 4
  %83 = call i32 @memcpy(i8* %78, i32 %81, i32 %82)
  %84 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %85 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %92 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %94 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %93, i32 0, i32 3
  %95 = call i32 @oidclr(i32* %94)
  %96 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %97 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = call i32 @memset(%struct.TYPE_6__* %98, i32 0, i32 8)
  %100 = load i8*, i8** @DIFF_STATUS_MODIFIED, align 8
  %101 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %102 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %101, i32 0, i32 2
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  store i8* %100, i8** %105, align 8
  %106 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %107 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %110 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %109, i32 0, i32 2
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 8
  %114 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %115 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %114, i32 0, i32 2
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %120 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %119, i32 0, i32 2
  %121 = call i32 @oidcpy(i32* %118, %struct.object_id* %120)
  %122 = load i8*, i8** @DIFF_STATUS_MODIFIED, align 8
  %123 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %124 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  store i8* %122, i8** %127, align 8
  %128 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %129 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %132 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %131, i32 0, i32 2
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i32 %130, i32* %135, align 8
  %136 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %137 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %136, i32 0, i32 2
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %142 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %141, i32 0, i32 2
  %143 = call i32 @oidcpy(i32* %140, %struct.object_id* %142)
  %144 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %145 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %146 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %149 = call i32 @show_combined_diff(%struct.combine_diff_path* %144, i32 2, i32 %147, %struct.rev_info* %148)
  %150 = load %struct.combine_diff_path*, %struct.combine_diff_path** %18, align 8
  %151 = call i32 @free(%struct.combine_diff_path* %150)
  store i32 0, i32* %7, align 4
  br label %194

152:                                              ; preds = %54, %45, %40
  %153 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %154 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %152
  %160 = load %struct.object_id*, %struct.object_id** %16, align 8
  %161 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %162 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %161, i32 0, i32 2
  %163 = call i64 @oideq(%struct.object_id* %160, %struct.object_id* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %159
  %166 = load i32, i32* %17, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %176, label %168

168:                                              ; preds = %165
  %169 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %170 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %168
  store i32 0, i32* %7, align 4
  br label %194

176:                                              ; preds = %168, %165, %159, %152
  %177 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %178 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %177, i32 0, i32 0
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %182 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %181, i32 0, i32 2
  %183 = load %struct.object_id*, %struct.object_id** %16, align 8
  %184 = load %struct.object_id*, %struct.object_id** %16, align 8
  %185 = call i32 @is_null_oid(%struct.object_id* %184)
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %190 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %17, align 4
  %193 = call i32 @diff_change(%struct.TYPE_7__* %178, i32 %179, i32 %180, %struct.object_id* %182, %struct.object_id* %183, i32 1, i32 %188, i32 %191, i32 0, i32 %192)
  store i32 0, i32* %7, align 4
  br label %194

194:                                              ; preds = %176, %175, %61, %39
  %195 = load i32, i32* %7, align 4
  ret i32 %195
}

declare dso_local i64 @get_stat_data(%struct.cache_entry*, %struct.object_id**, i32*, i32, i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @diff_index_show_file(%struct.rev_info*, i8*, %struct.cache_entry*, %struct.object_id*, i32, i32, i32) #1

declare dso_local i64 @oideq(%struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local %struct.combine_diff_path* @xmalloc(i32) #1

declare dso_local i32 @combine_diff_path_size(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @oidclr(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @show_combined_diff(%struct.combine_diff_path*, i32, i32, %struct.rev_info*) #1

declare dso_local i32 @free(%struct.combine_diff_path*) #1

declare dso_local i32 @diff_change(%struct.TYPE_7__*, i32, i32, %struct.object_id*, %struct.object_id*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @is_null_oid(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
