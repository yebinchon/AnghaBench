; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_get_reachable_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_get_reachable_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.object_array = type { i32 }
%struct.object = type { i64, i32 }
%struct.object_id = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@GIT_MAX_HEXSZ = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@TMP_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_array*, %struct.object_array*)* @get_reachable_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_reachable_list(%struct.object_array* %0, %struct.object_array* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_array*, align 8
  %5 = alloca %struct.object_array*, align 8
  %6 = alloca %struct.child_process, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.object*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.object_id, align 4
  %14 = alloca i8*, align 8
  store %struct.object_array* %0, %struct.object_array** %4, align 8
  store %struct.object_array* %1, %struct.object_array** %5, align 8
  %15 = bitcast %struct.child_process* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 4, i1 false)
  %16 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %17 = add nsw i32 %16, 2
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.object_array*, %struct.object_array** %4, align 8
  %25 = load %struct.object_array*, %struct.object_array** %5, align 8
  %26 = call i64 @do_reachable_revlist(%struct.child_process* %6, %struct.object_array* %24, %struct.object_array* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %113

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %66, %29
  %31 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add i32 %33, 1
  %35 = call i32 @read_in_full(i32 %32, i8* %20, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add i32 %36, 1
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %30
  %40 = call i64 @parse_oid_hex(i8* %20, %struct.object_id* %13, i8** %14)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %14, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 10
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %39
  br label %67

48:                                               ; preds = %42
  %49 = load i32, i32* @the_repository, align 4
  %50 = call %struct.object* @lookup_object(i32 %49, %struct.object_id* %13)
  store %struct.object* %50, %struct.object** %8, align 8
  %51 = load %struct.object*, %struct.object** %8, align 8
  %52 = icmp ne %struct.object* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.object*, %struct.object** %8, align 8
  %55 = getelementptr inbounds %struct.object, %struct.object* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @OBJ_COMMIT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i32, i32* @TMP_MARK, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.object*, %struct.object** %8, align 8
  %63 = getelementptr inbounds %struct.object, %struct.object* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %53, %48
  br label %30

67:                                               ; preds = %47, %30
  %68 = call i32 (...) @get_max_object_index()
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %102, %67
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 0, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, 1
  %75 = call %struct.object* @get_indexed_object(i32 %74)
  store %struct.object* %75, %struct.object** %8, align 8
  %76 = load %struct.object*, %struct.object** %8, align 8
  %77 = icmp ne %struct.object* %76, null
  br i1 %77, label %78, label %101

78:                                               ; preds = %72
  %79 = load %struct.object*, %struct.object** %8, align 8
  %80 = getelementptr inbounds %struct.object, %struct.object* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @OBJ_COMMIT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = load %struct.object*, %struct.object** %8, align 8
  %86 = getelementptr inbounds %struct.object, %struct.object* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TMP_MARK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = load %struct.object*, %struct.object** %8, align 8
  %93 = load %struct.object_array*, %struct.object_array** %5, align 8
  %94 = call i32 @add_object_array(%struct.object* %92, i32* null, %struct.object_array* %93)
  %95 = load i32, i32* @TMP_MARK, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.object*, %struct.object** %8, align 8
  %98 = getelementptr inbounds %struct.object, %struct.object* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %91, %84, %78, %72
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %7, align 4
  br label %69

105:                                              ; preds = %69
  %106 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @close(i32 %107)
  %109 = call i64 @finish_command(%struct.child_process* %6)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %113

112:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %113

113:                                              ; preds = %112, %111, %28
  %114 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @do_reachable_revlist(%struct.child_process*, %struct.object_array*, %struct.object_array*) #3

declare dso_local i32 @read_in_full(i32, i8*, i32) #3

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #3

declare dso_local %struct.object* @lookup_object(i32, %struct.object_id*) #3

declare dso_local i32 @get_max_object_index(...) #3

declare dso_local %struct.object* @get_indexed_object(i32) #3

declare dso_local i32 @add_object_array(%struct.object*, i32*, %struct.object_array*) #3

declare dso_local i32 @close(i32) #3

declare dso_local i64 @finish_command(%struct.child_process*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
