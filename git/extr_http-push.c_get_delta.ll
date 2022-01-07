; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_get_delta.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_get_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_list = type { %struct.object_list*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rev_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.object_array_entry* }
%struct.object_array_entry = type { i8*, %struct.object* }
%struct.object = type { i32, i64, i32 }
%struct.remote_lock = type { i32 }
%struct.commit = type { %struct.TYPE_4__ }
%struct.tree = type { i32 }
%struct.blob = type { i32 }

@objects = common dso_local global %struct.object_list* null, align 8
@LOCAL = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@OBJ_TAG = common dso_local global i64 0, align 8
@OBJ_TREE = common dso_local global i64 0, align 8
@OBJ_BLOB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"unknown pending object %s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.remote_lock*)* @get_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_delta(%struct.rev_info* %0, %struct.remote_lock* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.remote_lock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.object_list**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_array_entry*, align 8
  %10 = alloca %struct.object*, align 8
  %11 = alloca i8*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.remote_lock* %1, %struct.remote_lock** %4, align 8
  store %struct.object_list** @objects, %struct.object_list*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %43, %2
  %13 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %14 = call %struct.commit* @get_revision(%struct.rev_info* %13)
  store %struct.commit* %14, %struct.commit** %6, align 8
  %15 = icmp ne %struct.commit* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = load %struct.commit*, %struct.commit** %6, align 8
  %18 = call %struct.tree* @get_commit_tree(%struct.commit* %17)
  %19 = load %struct.object_list**, %struct.object_list*** %7, align 8
  %20 = call %struct.object_list** @process_tree(%struct.tree* %18, %struct.object_list** %19)
  store %struct.object_list** %20, %struct.object_list*** %7, align 8
  %21 = load i32, i32* @LOCAL, align 4
  %22 = load %struct.commit*, %struct.commit** %6, align 8
  %23 = getelementptr inbounds %struct.commit, %struct.commit* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load %struct.commit*, %struct.commit** %6, align 8
  %28 = getelementptr inbounds %struct.commit, %struct.commit* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @UNINTERESTING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %16
  %35 = load %struct.commit*, %struct.commit** %6, align 8
  %36 = getelementptr inbounds %struct.commit, %struct.commit* %35, i32 0, i32 0
  %37 = load %struct.remote_lock*, %struct.remote_lock** %4, align 8
  %38 = call i64 @add_send_request(%struct.TYPE_4__* %36, %struct.remote_lock* %37)
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %34, %16
  br label %12

44:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %118, %44
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %48 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %121

52:                                               ; preds = %45
  %53 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %54 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load %struct.object_array_entry*, %struct.object_array_entry** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %56, i64 %58
  store %struct.object_array_entry* %59, %struct.object_array_entry** %9, align 8
  %60 = load %struct.object_array_entry*, %struct.object_array_entry** %9, align 8
  %61 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %60, i32 0, i32 1
  %62 = load %struct.object*, %struct.object** %61, align 8
  store %struct.object* %62, %struct.object** %10, align 8
  %63 = load %struct.object_array_entry*, %struct.object_array_entry** %9, align 8
  %64 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %11, align 8
  %66 = load %struct.object*, %struct.object** %10, align 8
  %67 = getelementptr inbounds %struct.object, %struct.object* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @UNINTERESTING, align 4
  %70 = load i32, i32* @SEEN, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %52
  br label %118

75:                                               ; preds = %52
  %76 = load %struct.object*, %struct.object** %10, align 8
  %77 = getelementptr inbounds %struct.object, %struct.object* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @OBJ_TAG, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load i32, i32* @SEEN, align 4
  %83 = load %struct.object*, %struct.object** %10, align 8
  %84 = getelementptr inbounds %struct.object, %struct.object* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.object*, %struct.object** %10, align 8
  %88 = load %struct.object_list**, %struct.object_list*** %7, align 8
  %89 = call %struct.object_list** @add_one_object(%struct.object* %87, %struct.object_list** %88)
  store %struct.object_list** %89, %struct.object_list*** %7, align 8
  br label %118

90:                                               ; preds = %75
  %91 = load %struct.object*, %struct.object** %10, align 8
  %92 = getelementptr inbounds %struct.object, %struct.object* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @OBJ_TREE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.object*, %struct.object** %10, align 8
  %98 = bitcast %struct.object* %97 to %struct.tree*
  %99 = load %struct.object_list**, %struct.object_list*** %7, align 8
  %100 = call %struct.object_list** @process_tree(%struct.tree* %98, %struct.object_list** %99)
  store %struct.object_list** %100, %struct.object_list*** %7, align 8
  br label %118

101:                                              ; preds = %90
  %102 = load %struct.object*, %struct.object** %10, align 8
  %103 = getelementptr inbounds %struct.object, %struct.object* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @OBJ_BLOB, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.object*, %struct.object** %10, align 8
  %109 = bitcast %struct.object* %108 to %struct.blob*
  %110 = load %struct.object_list**, %struct.object_list*** %7, align 8
  %111 = call %struct.object_list** @process_blob(%struct.blob* %109, %struct.object_list** %110)
  store %struct.object_list** %111, %struct.object_list*** %7, align 8
  br label %118

112:                                              ; preds = %101
  %113 = load %struct.object*, %struct.object** %10, align 8
  %114 = getelementptr inbounds %struct.object, %struct.object* %113, i32 0, i32 2
  %115 = call i32 @oid_to_hex(i32* %114)
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %115, i8* %116)
  br label %118

118:                                              ; preds = %112, %107, %96, %81, %74
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %45

121:                                              ; preds = %45
  br label %122

122:                                              ; preds = %144, %121
  %123 = load %struct.object_list*, %struct.object_list** @objects, align 8
  %124 = icmp ne %struct.object_list* %123, null
  br i1 %124, label %125, label %148

125:                                              ; preds = %122
  %126 = load %struct.object_list*, %struct.object_list** @objects, align 8
  %127 = getelementptr inbounds %struct.object_list, %struct.object_list* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @UNINTERESTING, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %125
  %135 = load %struct.object_list*, %struct.object_list** @objects, align 8
  %136 = getelementptr inbounds %struct.object_list, %struct.object_list* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load %struct.remote_lock*, %struct.remote_lock** %4, align 8
  %139 = call i64 @add_send_request(%struct.TYPE_4__* %137, %struct.remote_lock* %138)
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %134, %125
  %145 = load %struct.object_list*, %struct.object_list** @objects, align 8
  %146 = getelementptr inbounds %struct.object_list, %struct.object_list* %145, i32 0, i32 0
  %147 = load %struct.object_list*, %struct.object_list** %146, align 8
  store %struct.object_list* %147, %struct.object_list** @objects, align 8
  br label %122

148:                                              ; preds = %122
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #1

declare dso_local %struct.object_list** @process_tree(%struct.tree*, %struct.object_list**) #1

declare dso_local %struct.tree* @get_commit_tree(%struct.commit*) #1

declare dso_local i64 @add_send_request(%struct.TYPE_4__*, %struct.remote_lock*) #1

declare dso_local %struct.object_list** @add_one_object(%struct.object*, %struct.object_list**) #1

declare dso_local %struct.object_list** @process_blob(%struct.blob*, %struct.object_list**) #1

declare dso_local i32 @die(i8*, i32, i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
