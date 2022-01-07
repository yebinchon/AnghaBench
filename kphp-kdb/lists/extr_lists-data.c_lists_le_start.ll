; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_lists_le_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_lists_le_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i64, i64, i64, i64, i32, i32* }
%struct.lev_lists_start_ext = type { i32, i64, i32, i32, i32, i32 }

@LISTS_SCHEMA_CUR = common dso_local global i64 0, align 8
@log_split_mod = common dso_local global i64 0, align 8
@log_split_min = common dso_local global i64 0, align 8
@log_split_max = common dso_local global i64 0, align 8
@list_id_ints = common dso_local global i32 0, align 4
@object_id_ints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"warning: duplicate LEV_START at log position %lld, split %d..%d mod %d\0A\00", align 1
@LISTS_SCHEMA_V3 = common dso_local global i64 0, align 8
@LIST_ID_INTS = common dso_local global i32 0, align 4
@OBJECT_ID_INTS = common dso_local global i32 0, align 4
@CB = common dso_local global i32 0, align 4
@LISTS_SCHEMA_V1 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_start*)* @lists_le_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lists_le_start(%struct.lev_start* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_start*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_lists_start_ext*, align 8
  store %struct.lev_start* %0, %struct.lev_start** %3, align 8
  %7 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %8 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LISTS_SCHEMA_CUR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %180

13:                                               ; preds = %1
  store i32 -1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %14 = load i64, i64* @log_split_mod, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* @log_split_min, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @log_split_max, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* @list_id_ints, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @object_id_ints, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %29, %23
  %34 = phi i1 [ false, %23 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %38 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* @log_split_min, align 8
  %40 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %41 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* @log_split_max, align 8
  %43 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %44 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* @log_split_mod, align 8
  br label %81

46:                                               ; preds = %13
  %47 = call i32 (...) @log_cur_pos()
  %48 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %49 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %52 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %55 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %50, i64 %53, i64 %56)
  %58 = load i64, i64* @log_split_mod, align 8
  %59 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %60 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i64, i64* @log_split_min, align 8
  %66 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %67 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i64, i64* @log_split_max, align 8
  %73 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %74 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* @list_id_ints, align 4
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* @object_id_ints, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %46, %33
  %82 = load i64, i64* @log_split_mod, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load i64, i64* @log_split_min, align 8
  %86 = icmp sge i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i64, i64* @log_split_min, align 8
  %89 = add nsw i64 %88, 1
  %90 = load i64, i64* @log_split_max, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i64, i64* @log_split_max, align 8
  %94 = load i64, i64* @log_split_mod, align 8
  %95 = icmp sle i64 %93, %94
  br label %96

96:                                               ; preds = %92, %87, %84, %81
  %97 = phi i1 [ false, %87 ], [ false, %84 ], [ false, %81 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %101 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = icmp sge i32 %102, 6
  br i1 %103, label %104, label %148

104:                                              ; preds = %96
  %105 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %106 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %148

111:                                              ; preds = %104
  %112 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %113 = bitcast %struct.lev_start* %112 to %struct.lev_lists_start_ext*
  store %struct.lev_lists_start_ext* %113, %struct.lev_lists_start_ext** %6, align 8
  %114 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %6, align 8
  %115 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %6, align 8
  %120 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @LISTS_SCHEMA_V3, align 8
  %123 = icmp eq i64 %121, %122
  br label %124

124:                                              ; preds = %118, %111
  %125 = phi i1 [ false, %111 ], [ %123, %118 ]
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %6, align 8
  %129 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* @list_id_ints, align 4
  %131 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %6, align 8
  %132 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* @object_id_ints, align 4
  %134 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %6, align 8
  %135 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = icmp eq i64 %137, 1
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %6, align 8
  %142 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  br label %151

148:                                              ; preds = %104, %96
  %149 = load i32, i32* @LIST_ID_INTS, align 4
  store i32 %149, i32* @list_id_ints, align 4
  %150 = load i32, i32* @OBJECT_ID_INTS, align 4
  store i32 %150, i32* @object_id_ints, align 4
  br label %151

151:                                              ; preds = %148, %124
  %152 = load i32, i32* @list_id_ints, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* @object_id_ints, align 4
  %156 = icmp eq i32 %155, 1
  br label %157

157:                                              ; preds = %154, %151
  %158 = phi i1 [ false, %151 ], [ %156, %154 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load i32, i32* %5, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %157
  %164 = load i32, i32* @object_id_ints, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i32, i32* @list_id_ints, align 4
  %169 = load i32, i32* %4, align 4
  %170 = icmp eq i32 %168, %169
  br label %171

171:                                              ; preds = %167, %163
  %172 = phi i1 [ false, %163 ], [ %170, %167 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  %175 = load i32, i32* @CB, align 4
  %176 = call i32 @assert(i32 %175)
  br label %179

177:                                              ; preds = %157
  %178 = call i32 (...) @compute_struct_sizes()
  br label %179

179:                                              ; preds = %177, %171
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %179, %12
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i64, i64, i64) #1

declare dso_local i32 @log_cur_pos(...) #1

declare dso_local i32 @compute_struct_sizes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
