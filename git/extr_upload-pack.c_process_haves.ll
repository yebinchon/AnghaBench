; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_process_haves.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_process_haves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i32, %struct.object_id* }
%struct.object_id = type { i32 }
%struct.object_array = type { i32 }
%struct.object = type { i64, i32 }
%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.commit = type { i64, %struct.commit_list* }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"oops (%s)\00", align 1
@OBJ_COMMIT = common dso_local global i64 0, align 8
@THEY_HAVE = common dso_local global i32 0, align 4
@oldest_have = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oid_array*, %struct.oid_array*, %struct.object_array*)* @process_haves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_haves(%struct.oid_array* %0, %struct.oid_array* %1, %struct.object_array* %2) #0 {
  %4 = alloca %struct.oid_array*, align 8
  %5 = alloca %struct.oid_array*, align 8
  %6 = alloca %struct.object_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.commit_list*, align 8
  %12 = alloca %struct.commit*, align 8
  store %struct.oid_array* %0, %struct.oid_array** %4, align 8
  store %struct.oid_array* %1, %struct.oid_array** %5, align 8
  store %struct.object_array* %2, %struct.object_array** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %107, %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %16 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %110

19:                                               ; preds = %13
  %20 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %21 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %20, i32 0, i32 1
  %22 = load %struct.object_id*, %struct.object_id** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.object_id, %struct.object_id* %22, i64 %24
  store %struct.object_id* %25, %struct.object_id** %8, align 8
  store i32 0, i32* %10, align 4
  %26 = load %struct.object_id*, %struct.object_id** %8, align 8
  %27 = call i32 @has_object_file(%struct.object_id* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  br label %107

30:                                               ; preds = %19
  %31 = load %struct.oid_array*, %struct.oid_array** %5, align 8
  %32 = load %struct.object_id*, %struct.object_id** %8, align 8
  %33 = call i32 @oid_array_append(%struct.oid_array* %31, %struct.object_id* %32)
  %34 = load i32, i32* @the_repository, align 4
  %35 = load %struct.object_id*, %struct.object_id** %8, align 8
  %36 = call %struct.object* @parse_object(i32 %34, %struct.object_id* %35)
  store %struct.object* %36, %struct.object** %9, align 8
  %37 = load %struct.object*, %struct.object** %9, align 8
  %38 = icmp ne %struct.object* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = load %struct.object_id*, %struct.object_id** %8, align 8
  %41 = call i32 @oid_to_hex(%struct.object_id* %40)
  %42 = call i32 @die(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %30
  %44 = load %struct.object*, %struct.object** %9, align 8
  %45 = getelementptr inbounds %struct.object, %struct.object* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @OBJ_COMMIT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %99

49:                                               ; preds = %43
  %50 = load %struct.object*, %struct.object** %9, align 8
  %51 = bitcast %struct.object* %50 to %struct.commit*
  store %struct.commit* %51, %struct.commit** %12, align 8
  %52 = load %struct.object*, %struct.object** %9, align 8
  %53 = getelementptr inbounds %struct.object, %struct.object* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @THEY_HAVE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 1, i32* %10, align 4
  br label %65

59:                                               ; preds = %49
  %60 = load i32, i32* @THEY_HAVE, align 4
  %61 = load %struct.object*, %struct.object** %9, align 8
  %62 = getelementptr inbounds %struct.object, %struct.object* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %58
  %66 = load i64, i64* @oldest_have, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.commit*, %struct.commit** %12, align 8
  %70 = getelementptr inbounds %struct.commit, %struct.commit* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @oldest_have, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68, %65
  %75 = load %struct.commit*, %struct.commit** %12, align 8
  %76 = getelementptr inbounds %struct.commit, %struct.commit* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* @oldest_have, align 8
  br label %78

78:                                               ; preds = %74, %68
  %79 = load %struct.commit*, %struct.commit** %12, align 8
  %80 = getelementptr inbounds %struct.commit, %struct.commit* %79, i32 0, i32 1
  %81 = load %struct.commit_list*, %struct.commit_list** %80, align 8
  store %struct.commit_list* %81, %struct.commit_list** %11, align 8
  br label %82

82:                                               ; preds = %94, %78
  %83 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %84 = icmp ne %struct.commit_list* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load i32, i32* @THEY_HAVE, align 4
  %87 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %88 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %86
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %85
  %95 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %96 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %95, i32 0, i32 1
  %97 = load %struct.commit_list*, %struct.commit_list** %96, align 8
  store %struct.commit_list* %97, %struct.commit_list** %11, align 8
  br label %82

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98, %43
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = load %struct.object*, %struct.object** %9, align 8
  %104 = load %struct.object_array*, %struct.object_array** %6, align 8
  %105 = call i32 @add_object_array(%struct.object* %103, i32* null, %struct.object_array* %104)
  br label %106

106:                                              ; preds = %102, %99
  br label %107

107:                                              ; preds = %106, %29
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %13

110:                                              ; preds = %13
  ret i32 0
}

declare dso_local i32 @has_object_file(%struct.object_id*) #1

declare dso_local i32 @oid_array_append(%struct.oid_array*, %struct.object_id*) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @add_object_array(%struct.object*, i32*, %struct.object_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
