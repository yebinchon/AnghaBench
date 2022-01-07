; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-log-split.c_lists_le_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-log-split.c_lists_le_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i64, i32, i32, i32, i32, i32* }
%struct.lev_lists_start_ext = type { i32, i64, i32, i32, i32, i32 }

@LISTS_SCHEMA_CUR = common dso_local global i64 0, align 8
@LISTS_SCHEMA_V1 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"incorrect binlog schema %08x for lists-engine\0A\00", align 1
@split_mod = common dso_local global i32 0, align 4
@split_min = common dso_local global i32 0, align 4
@split_max = common dso_local global i32 0, align 4
@LISTS_SCHEMA_V3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"incorrect binlog for lists-engine\0A\00", align 1
@list_id_ints = common dso_local global i32 0, align 4
@object_id_ints = common dso_local global i32 0, align 4
@value_ints = common dso_local global i32 0, align 4
@new_entry_value_offset = common dso_local global i32 0, align 4
@MAX_LIST_ID_INTS = common dso_local global i32 0, align 4
@MAX_OBJECT_ID_INTS = common dso_local global i32 0, align 4
@object_id_bytes = common dso_local global i32 0, align 4
@list_id_bytes = common dso_local global i32 0, align 4
@list_object_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_start*)* @lists_le_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lists_le_start(%struct.lev_start* %0) #0 {
  %2 = alloca %struct.lev_start*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_lists_start_ext*, align 8
  store %struct.lev_start* %0, %struct.lev_start** %2, align 8
  %7 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %8 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LISTS_SCHEMA_CUR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %14 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LISTS_SCHEMA_V1, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i32, i32* @stderr, align 4
  %20 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %21 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %12, %1
  %26 = load i32, i32* @split_mod, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %25
  %29 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %30 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @split_mod, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %36 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @split_mod, align 4
  %39 = srem i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @split_min, align 4
  %43 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %44 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @split_mod, align 4
  %47 = srem i32 %45, %46
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %51 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %54 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  %57 = icmp eq i32 %52, %56
  br label %58

58:                                               ; preds = %49, %41, %34, %28
  %59 = phi i1 [ false, %41 ], [ false, %34 ], [ false, %28 ], [ %57, %49 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  br label %62

62:                                               ; preds = %58, %25
  %63 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %64 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* @split_min, align 4
  %66 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %67 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* @split_max, align 4
  %69 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %70 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* @split_mod, align 4
  %72 = load i32, i32* @split_mod, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %62
  %75 = load i32, i32* @split_min, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* @split_min, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* @split_max, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @split_max, align 4
  %84 = load i32, i32* @split_mod, align 4
  %85 = icmp sle i32 %83, %84
  br label %86

86:                                               ; preds = %82, %77, %74, %62
  %87 = phi i1 [ false, %77 ], [ false, %74 ], [ false, %62 ], [ %85, %82 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %91 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %92, 6
  br i1 %93, label %94, label %134

94:                                               ; preds = %86
  %95 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %96 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %134

101:                                              ; preds = %94
  %102 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %103 = bitcast %struct.lev_start* %102 to %struct.lev_lists_start_ext*
  store %struct.lev_lists_start_ext* %103, %struct.lev_lists_start_ext** %6, align 8
  %104 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %6, align 8
  %105 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %6, align 8
  %110 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @LISTS_SCHEMA_V3, align 8
  %113 = icmp eq i64 %111, %112
  br label %114

114:                                              ; preds = %108, %101
  %115 = phi i1 [ false, %101 ], [ %113, %108 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %6, align 8
  %119 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %3, align 4
  %121 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %6, align 8
  %122 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %4, align 4
  %124 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %6, align 8
  %125 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %5, align 4
  %127 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %6, align 8
  %128 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  br label %146

134:                                              ; preds = %94, %86
  %135 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %136 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @LISTS_SCHEMA_V1, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i32, i32* @stderr, align 4
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %143 = call i32 @exit(i32 1) #3
  unreachable

144:                                              ; preds = %134
  store i32 1, i32* %5, align 4
  store i32 1, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145, %114
  %147 = load i32, i32* @list_id_ints, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %146
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @list_id_ints, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @object_id_ints, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @value_ints, align 4
  %160 = icmp eq i32 %158, %159
  br label %161

161:                                              ; preds = %157, %153, %149
  %162 = phi i1 [ false, %153 ], [ false, %149 ], [ %160, %157 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  br label %165

165:                                              ; preds = %161, %146
  %166 = load i32, i32* %3, align 4
  store i32 %166, i32* @list_id_ints, align 4
  %167 = load i32, i32* %4, align 4
  store i32 %167, i32* @object_id_ints, align 4
  %168 = load i32, i32* %5, align 4
  store i32 %168, i32* @value_ints, align 4
  %169 = load i32, i32* @list_id_ints, align 4
  %170 = load i32, i32* @object_id_ints, align 4
  %171 = add nsw i32 %169, %170
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* @new_entry_value_offset, align 4
  %173 = load i32, i32* @list_id_ints, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %165
  %176 = load i32, i32* @list_id_ints, align 4
  %177 = load i32, i32* @MAX_LIST_ID_INTS, align 4
  %178 = icmp sle i32 %176, %177
  br label %179

179:                                              ; preds = %175, %165
  %180 = phi i1 [ false, %165 ], [ %178, %175 ]
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load i32, i32* @object_id_ints, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  %186 = load i32, i32* @object_id_ints, align 4
  %187 = load i32, i32* @MAX_OBJECT_ID_INTS, align 4
  %188 = icmp sle i32 %186, %187
  br label %189

189:                                              ; preds = %185, %179
  %190 = phi i1 [ false, %179 ], [ %188, %185 ]
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i32, i32* @value_ints, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %198, label %195

195:                                              ; preds = %189
  %196 = load i32, i32* @value_ints, align 4
  %197 = icmp eq i32 %196, 2
  br label %198

198:                                              ; preds = %195, %189
  %199 = phi i1 [ true, %189 ], [ %197, %195 ]
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  %202 = call i32 @assert(i32 1)
  %203 = load i32, i32* @object_id_ints, align 4
  %204 = mul nsw i32 %203, 4
  store i32 %204, i32* @object_id_bytes, align 4
  %205 = load i32, i32* @list_id_ints, align 4
  %206 = mul nsw i32 %205, 4
  store i32 %206, i32* @list_id_bytes, align 4
  %207 = load i32, i32* @list_id_bytes, align 4
  %208 = load i32, i32* @object_id_bytes, align 4
  %209 = add nsw i32 %207, %208
  store i32 %209, i32* @list_object_bytes, align 4
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
