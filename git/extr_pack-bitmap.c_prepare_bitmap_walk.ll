; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_prepare_bitmap_walk.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_prepare_bitmap_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { %struct.bitmap*, %struct.bitmap* }
%struct.bitmap = type { i32 }
%struct.rev_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.object* }
%struct.object = type { i64, i32, i32 }
%struct.object_list = type { i32 }
%struct.tag = type { i32 }

@OBJ_NONE = common dso_local global i64 0, align 8
@OBJ_TAG = common dso_local global i64 0, align 8
@UNINTERESTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to perform bitmap walk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bitmap_index* @prepare_bitmap_walk(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.bitmap_index*, align 8
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_list*, align 8
  %6 = alloca %struct.object_list*, align 8
  %7 = alloca %struct.bitmap*, align 8
  %8 = alloca %struct.bitmap*, align 8
  %9 = alloca %struct.bitmap_index*, align 8
  %10 = alloca %struct.object*, align 8
  %11 = alloca %struct.tag*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.object_list* null, %struct.object_list** %5, align 8
  store %struct.object_list* null, %struct.object_list** %6, align 8
  store %struct.bitmap* null, %struct.bitmap** %7, align 8
  store %struct.bitmap* null, %struct.bitmap** %8, align 8
  %12 = call %struct.bitmap_index* @xcalloc(i32 1, i32 16)
  store %struct.bitmap_index* %12, %struct.bitmap_index** %9, align 8
  %13 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.bitmap_index*, %struct.bitmap_index** %9, align 8
  %17 = call i64 @open_pack_bitmap(i32 %15, %struct.bitmap_index* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %154

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %87, %20
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %24 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %22, %26
  br i1 %27, label %28, label %90

28:                                               ; preds = %21
  %29 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %30 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.object*, %struct.object** %36, align 8
  store %struct.object* %37, %struct.object** %10, align 8
  %38 = load %struct.object*, %struct.object** %10, align 8
  %39 = getelementptr inbounds %struct.object, %struct.object* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OBJ_NONE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = load %struct.object*, %struct.object** %10, align 8
  %45 = getelementptr inbounds %struct.object, %struct.object* %44, i32 0, i32 2
  %46 = call %struct.object* @parse_object_or_die(i32* %45, i32* null)
  br label %47

47:                                               ; preds = %43, %28
  br label %48

48:                                               ; preds = %69, %47
  %49 = load %struct.object*, %struct.object** %10, align 8
  %50 = getelementptr inbounds %struct.object, %struct.object* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @OBJ_TAG, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %48
  %55 = load %struct.object*, %struct.object** %10, align 8
  %56 = bitcast %struct.object* %55 to %struct.tag*
  store %struct.tag* %56, %struct.tag** %11, align 8
  %57 = load %struct.object*, %struct.object** %10, align 8
  %58 = getelementptr inbounds %struct.object, %struct.object* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @UNINTERESTING, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.object*, %struct.object** %10, align 8
  %65 = call i32 @object_list_insert(%struct.object* %64, %struct.object_list** %6)
  br label %69

66:                                               ; preds = %54
  %67 = load %struct.object*, %struct.object** %10, align 8
  %68 = call i32 @object_list_insert(%struct.object* %67, %struct.object_list** %5)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.tag*, %struct.tag** %11, align 8
  %71 = call i32* @get_tagged_oid(%struct.tag* %70)
  %72 = call %struct.object* @parse_object_or_die(i32* %71, i32* null)
  store %struct.object* %72, %struct.object** %10, align 8
  br label %48

73:                                               ; preds = %48
  %74 = load %struct.object*, %struct.object** %10, align 8
  %75 = getelementptr inbounds %struct.object, %struct.object* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @UNINTERESTING, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.object*, %struct.object** %10, align 8
  %82 = call i32 @object_list_insert(%struct.object* %81, %struct.object_list** %6)
  br label %86

83:                                               ; preds = %73
  %84 = load %struct.object*, %struct.object** %10, align 8
  %85 = call i32 @object_list_insert(%struct.object* %84, %struct.object_list** %5)
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %4, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %21

90:                                               ; preds = %21
  %91 = load %struct.object_list*, %struct.object_list** %6, align 8
  %92 = icmp ne %struct.object_list* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.bitmap_index*, %struct.bitmap_index** %9, align 8
  %95 = load %struct.object_list*, %struct.object_list** %6, align 8
  %96 = call i32 @in_bitmapped_pack(%struct.bitmap_index* %94, %struct.object_list* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %154

99:                                               ; preds = %93, %90
  %100 = load %struct.object_list*, %struct.object_list** %5, align 8
  %101 = icmp ne %struct.object_list* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  br label %154

103:                                              ; preds = %99
  %104 = load %struct.bitmap_index*, %struct.bitmap_index** %9, align 8
  %105 = call i64 @load_pack_bitmap(%struct.bitmap_index* %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %154

108:                                              ; preds = %103
  %109 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %110 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %109, i32 0, i32 1
  %111 = call i32 @object_array_clear(%struct.TYPE_4__* %110)
  %112 = load %struct.object_list*, %struct.object_list** %6, align 8
  %113 = icmp ne %struct.object_list* %112, null
  br i1 %113, label %114, label %129

114:                                              ; preds = %108
  %115 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %116 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.bitmap_index*, %struct.bitmap_index** %9, align 8
  %118 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %119 = load %struct.object_list*, %struct.object_list** %6, align 8
  %120 = call %struct.bitmap* @find_objects(%struct.bitmap_index* %117, %struct.rev_info* %118, %struct.object_list* %119, %struct.bitmap* null)
  store %struct.bitmap* %120, %struct.bitmap** %8, align 8
  %121 = call i32 (...) @reset_revision_walk()
  %122 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %123 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  %124 = load %struct.bitmap*, %struct.bitmap** %8, align 8
  %125 = icmp eq %struct.bitmap* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %114
  %127 = call i32 @BUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %114
  br label %129

129:                                              ; preds = %128, %108
  %130 = load %struct.bitmap_index*, %struct.bitmap_index** %9, align 8
  %131 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %132 = load %struct.object_list*, %struct.object_list** %5, align 8
  %133 = load %struct.bitmap*, %struct.bitmap** %8, align 8
  %134 = call %struct.bitmap* @find_objects(%struct.bitmap_index* %130, %struct.rev_info* %131, %struct.object_list* %132, %struct.bitmap* %133)
  store %struct.bitmap* %134, %struct.bitmap** %7, align 8
  %135 = load %struct.bitmap*, %struct.bitmap** %7, align 8
  %136 = icmp ne %struct.bitmap* %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %129
  %138 = call i32 @BUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %129
  %140 = load %struct.bitmap*, %struct.bitmap** %8, align 8
  %141 = icmp ne %struct.bitmap* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load %struct.bitmap*, %struct.bitmap** %7, align 8
  %144 = load %struct.bitmap*, %struct.bitmap** %8, align 8
  %145 = call i32 @bitmap_and_not(%struct.bitmap* %143, %struct.bitmap* %144)
  br label %146

146:                                              ; preds = %142, %139
  %147 = load %struct.bitmap*, %struct.bitmap** %7, align 8
  %148 = load %struct.bitmap_index*, %struct.bitmap_index** %9, align 8
  %149 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %148, i32 0, i32 1
  store %struct.bitmap* %147, %struct.bitmap** %149, align 8
  %150 = load %struct.bitmap*, %struct.bitmap** %8, align 8
  %151 = load %struct.bitmap_index*, %struct.bitmap_index** %9, align 8
  %152 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %151, i32 0, i32 0
  store %struct.bitmap* %150, %struct.bitmap** %152, align 8
  %153 = load %struct.bitmap_index*, %struct.bitmap_index** %9, align 8
  store %struct.bitmap_index* %153, %struct.bitmap_index** %2, align 8
  br label %157

154:                                              ; preds = %107, %102, %98, %19
  %155 = load %struct.bitmap_index*, %struct.bitmap_index** %9, align 8
  %156 = call i32 @free_bitmap_index(%struct.bitmap_index* %155)
  store %struct.bitmap_index* null, %struct.bitmap_index** %2, align 8
  br label %157

157:                                              ; preds = %154, %146
  %158 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  ret %struct.bitmap_index* %158
}

declare dso_local %struct.bitmap_index* @xcalloc(i32, i32) #1

declare dso_local i64 @open_pack_bitmap(i32, %struct.bitmap_index*) #1

declare dso_local %struct.object* @parse_object_or_die(i32*, i32*) #1

declare dso_local i32 @object_list_insert(%struct.object*, %struct.object_list**) #1

declare dso_local i32* @get_tagged_oid(%struct.tag*) #1

declare dso_local i32 @in_bitmapped_pack(%struct.bitmap_index*, %struct.object_list*) #1

declare dso_local i64 @load_pack_bitmap(%struct.bitmap_index*) #1

declare dso_local i32 @object_array_clear(%struct.TYPE_4__*) #1

declare dso_local %struct.bitmap* @find_objects(%struct.bitmap_index*, %struct.rev_info*, %struct.object_list*, %struct.bitmap*) #1

declare dso_local i32 @reset_revision_walk(...) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @bitmap_and_not(%struct.bitmap*, %struct.bitmap*) #1

declare dso_local i32 @free_bitmap_index(%struct.bitmap_index*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
