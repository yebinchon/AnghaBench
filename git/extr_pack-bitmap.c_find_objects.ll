; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_find_objects.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_find_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { i32 }
%struct.rev_info = type { %struct.include_data*, i32 }
%struct.include_data = type { %struct.bitmap*, %struct.bitmap*, %struct.bitmap_index* }
%struct.object_list = type { %struct.object_list*, %struct.object* }
%struct.object = type { i64, i32, i32 }
%struct.bitmap = type { i32 }
%struct.stored_bitmap = type { i32 }
%struct.ewah_bitmap = type { i32 }
%struct.bitmap_show_data = type { %struct.bitmap*, %struct.bitmap_index* }

@OBJ_COMMIT = common dso_local global i64 0, align 8
@SEEN = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@should_include = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@show_commit = common dso_local global i32 0, align 4
@show_object = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bitmap* (%struct.bitmap_index*, %struct.rev_info*, %struct.object_list*, %struct.bitmap*)* @find_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bitmap* @find_objects(%struct.bitmap_index* %0, %struct.rev_info* %1, %struct.object_list* %2, %struct.bitmap* %3) #0 {
  %5 = alloca %struct.bitmap*, align 8
  %6 = alloca %struct.bitmap_index*, align 8
  %7 = alloca %struct.rev_info*, align 8
  %8 = alloca %struct.object_list*, align 8
  %9 = alloca %struct.bitmap*, align 8
  %10 = alloca %struct.bitmap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.object_list*, align 8
  %13 = alloca %struct.object*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.stored_bitmap*, align 8
  %16 = alloca %struct.ewah_bitmap*, align 8
  %17 = alloca %struct.object*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.include_data, align 8
  %20 = alloca %struct.bitmap_show_data, align 8
  store %struct.bitmap_index* %0, %struct.bitmap_index** %6, align 8
  store %struct.rev_info* %1, %struct.rev_info** %7, align 8
  store %struct.object_list* %2, %struct.object_list** %8, align 8
  store %struct.bitmap* %3, %struct.bitmap** %9, align 8
  store %struct.bitmap* null, %struct.bitmap** %10, align 8
  store i32 0, i32* %11, align 4
  store %struct.object_list* null, %struct.object_list** %12, align 8
  br label %21

21:                                               ; preds = %74, %67, %4
  %22 = load %struct.object_list*, %struct.object_list** %8, align 8
  %23 = icmp ne %struct.object_list* %22, null
  br i1 %23, label %24, label %77

24:                                               ; preds = %21
  %25 = load %struct.object_list*, %struct.object_list** %8, align 8
  %26 = getelementptr inbounds %struct.object_list, %struct.object_list* %25, i32 0, i32 1
  %27 = load %struct.object*, %struct.object** %26, align 8
  store %struct.object* %27, %struct.object** %13, align 8
  %28 = load %struct.object_list*, %struct.object_list** %8, align 8
  %29 = getelementptr inbounds %struct.object_list, %struct.object_list* %28, i32 0, i32 0
  %30 = load %struct.object_list*, %struct.object_list** %29, align 8
  store %struct.object_list* %30, %struct.object_list** %8, align 8
  %31 = load %struct.object*, %struct.object** %13, align 8
  %32 = getelementptr inbounds %struct.object, %struct.object* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OBJ_COMMIT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %24
  %37 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %38 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.object*, %struct.object** %13, align 8
  %41 = getelementptr inbounds %struct.object, %struct.object* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @kh_get_oid_map(i32 %39, i32 %42)
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %46 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @kh_end(i32 %47)
  %49 = icmp slt i64 %44, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %36
  %51 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %52 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %14, align 8
  %55 = call %struct.stored_bitmap* @kh_value(i32 %53, i64 %54)
  store %struct.stored_bitmap* %55, %struct.stored_bitmap** %15, align 8
  %56 = load %struct.stored_bitmap*, %struct.stored_bitmap** %15, align 8
  %57 = call %struct.ewah_bitmap* @lookup_stored_bitmap(%struct.stored_bitmap* %56)
  store %struct.ewah_bitmap* %57, %struct.ewah_bitmap** %16, align 8
  %58 = load %struct.bitmap*, %struct.bitmap** %10, align 8
  %59 = icmp eq %struct.bitmap* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %16, align 8
  %62 = call %struct.bitmap* @ewah_to_bitmap(%struct.ewah_bitmap* %61)
  store %struct.bitmap* %62, %struct.bitmap** %10, align 8
  br label %67

63:                                               ; preds = %50
  %64 = load %struct.bitmap*, %struct.bitmap** %10, align 8
  %65 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %16, align 8
  %66 = call i32 @bitmap_or_ewah(%struct.bitmap* %64, %struct.ewah_bitmap* %65)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* @SEEN, align 4
  %69 = load %struct.object*, %struct.object** %13, align 8
  %70 = getelementptr inbounds %struct.object, %struct.object* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %21

73:                                               ; preds = %36
  br label %74

74:                                               ; preds = %73, %24
  %75 = load %struct.object*, %struct.object** %13, align 8
  %76 = call i32 @object_list_insert(%struct.object* %75, %struct.object_list** %12)
  br label %21

77:                                               ; preds = %21
  %78 = load %struct.object_list*, %struct.object_list** %12, align 8
  %79 = icmp eq %struct.object_list* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load %struct.bitmap*, %struct.bitmap** %10, align 8
  store %struct.bitmap* %81, %struct.bitmap** %5, align 8
  br label %161

82:                                               ; preds = %77
  %83 = load %struct.object_list*, %struct.object_list** %12, align 8
  store %struct.object_list* %83, %struct.object_list** %8, align 8
  br label %84

84:                                               ; preds = %124, %82
  %85 = load %struct.object_list*, %struct.object_list** %8, align 8
  %86 = icmp ne %struct.object_list* %85, null
  br i1 %86, label %87, label %125

87:                                               ; preds = %84
  %88 = load %struct.object_list*, %struct.object_list** %8, align 8
  %89 = getelementptr inbounds %struct.object_list, %struct.object_list* %88, i32 0, i32 1
  %90 = load %struct.object*, %struct.object** %89, align 8
  store %struct.object* %90, %struct.object** %17, align 8
  %91 = load %struct.object_list*, %struct.object_list** %8, align 8
  %92 = getelementptr inbounds %struct.object_list, %struct.object_list* %91, i32 0, i32 0
  %93 = load %struct.object_list*, %struct.object_list** %92, align 8
  store %struct.object_list* %93, %struct.object_list** %8, align 8
  %94 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %95 = load %struct.object*, %struct.object** %17, align 8
  %96 = getelementptr inbounds %struct.object, %struct.object* %95, i32 0, i32 2
  %97 = call i32 @bitmap_position(%struct.bitmap_index* %94, i32* %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %87
  %101 = load %struct.bitmap*, %struct.bitmap** %10, align 8
  %102 = icmp eq %struct.bitmap* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load %struct.bitmap*, %struct.bitmap** %10, align 8
  %105 = load i32, i32* %18, align 4
  %106 = call i32 @bitmap_get(%struct.bitmap* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %103, %100, %87
  %109 = load i32, i32* @UNINTERESTING, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.object*, %struct.object** %17, align 8
  %112 = getelementptr inbounds %struct.object, %struct.object* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %116 = load %struct.object*, %struct.object** %17, align 8
  %117 = call i32 @add_pending_object(%struct.rev_info* %115, %struct.object* %116, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %124

118:                                              ; preds = %103
  %119 = load i32, i32* @SEEN, align 4
  %120 = load %struct.object*, %struct.object** %17, align 8
  %121 = getelementptr inbounds %struct.object, %struct.object* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %108
  br label %84

125:                                              ; preds = %84
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %159

128:                                              ; preds = %125
  %129 = load %struct.bitmap*, %struct.bitmap** %10, align 8
  %130 = icmp eq %struct.bitmap* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call %struct.bitmap* (...) @bitmap_new()
  store %struct.bitmap* %132, %struct.bitmap** %10, align 8
  br label %133

133:                                              ; preds = %131, %128
  %134 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %135 = getelementptr inbounds %struct.include_data, %struct.include_data* %19, i32 0, i32 2
  store %struct.bitmap_index* %134, %struct.bitmap_index** %135, align 8
  %136 = load %struct.bitmap*, %struct.bitmap** %10, align 8
  %137 = getelementptr inbounds %struct.include_data, %struct.include_data* %19, i32 0, i32 1
  store %struct.bitmap* %136, %struct.bitmap** %137, align 8
  %138 = load %struct.bitmap*, %struct.bitmap** %9, align 8
  %139 = getelementptr inbounds %struct.include_data, %struct.include_data* %19, i32 0, i32 0
  store %struct.bitmap* %138, %struct.bitmap** %139, align 8
  %140 = load i32, i32* @should_include, align 4
  %141 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %142 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %144 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %143, i32 0, i32 0
  store %struct.include_data* %19, %struct.include_data** %144, align 8
  %145 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %146 = call i64 @prepare_revision_walk(%struct.rev_info* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %133
  %149 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %133
  %151 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %152 = getelementptr inbounds %struct.bitmap_show_data, %struct.bitmap_show_data* %20, i32 0, i32 1
  store %struct.bitmap_index* %151, %struct.bitmap_index** %152, align 8
  %153 = load %struct.bitmap*, %struct.bitmap** %10, align 8
  %154 = getelementptr inbounds %struct.bitmap_show_data, %struct.bitmap_show_data* %20, i32 0, i32 0
  store %struct.bitmap* %153, %struct.bitmap** %154, align 8
  %155 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %156 = load i32, i32* @show_commit, align 4
  %157 = load i32, i32* @show_object, align 4
  %158 = call i32 @traverse_commit_list(%struct.rev_info* %155, i32 %156, i32 %157, %struct.bitmap_show_data* %20)
  br label %159

159:                                              ; preds = %150, %125
  %160 = load %struct.bitmap*, %struct.bitmap** %10, align 8
  store %struct.bitmap* %160, %struct.bitmap** %5, align 8
  br label %161

161:                                              ; preds = %159, %80
  %162 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  ret %struct.bitmap* %162
}

declare dso_local i64 @kh_get_oid_map(i32, i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local %struct.stored_bitmap* @kh_value(i32, i64) #1

declare dso_local %struct.ewah_bitmap* @lookup_stored_bitmap(%struct.stored_bitmap*) #1

declare dso_local %struct.bitmap* @ewah_to_bitmap(%struct.ewah_bitmap*) #1

declare dso_local i32 @bitmap_or_ewah(%struct.bitmap*, %struct.ewah_bitmap*) #1

declare dso_local i32 @object_list_insert(%struct.object*, %struct.object_list**) #1

declare dso_local i32 @bitmap_position(%struct.bitmap_index*, i32*) #1

declare dso_local i32 @bitmap_get(%struct.bitmap*, i32) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.object*, i8*) #1

declare dso_local %struct.bitmap* @bitmap_new(...) #1

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @traverse_commit_list(%struct.rev_info*, i32, i32, %struct.bitmap_show_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
