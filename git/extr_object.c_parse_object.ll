; ModuleID = '/home/carl/AnghaBench/git/extr_object.c_parse_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_object.c_parse_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i64, i64 }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }

@OBJ_BLOB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"hash mismatch %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.object* @parse_object(%struct.repository* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.object*, align 8
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.object*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %12 = load %struct.repository*, %struct.repository** %4, align 8
  %13 = load %struct.object_id*, %struct.object_id** %5, align 8
  %14 = call %struct.object_id* @lookup_replace_object(%struct.repository* %12, %struct.object_id* %13)
  store %struct.object_id* %14, %struct.object_id** %9, align 8
  %15 = load %struct.repository*, %struct.repository** %4, align 8
  %16 = load %struct.object_id*, %struct.object_id** %5, align 8
  %17 = call %struct.object* @lookup_object(%struct.repository* %15, %struct.object_id* %16)
  store %struct.object* %17, %struct.object** %11, align 8
  %18 = load %struct.object*, %struct.object** %11, align 8
  %19 = icmp ne %struct.object* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.object*, %struct.object** %11, align 8
  %22 = getelementptr inbounds %struct.object, %struct.object* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load %struct.object*, %struct.object** %11, align 8
  store %struct.object* %26, %struct.object** %3, align 8
  br label %108

27:                                               ; preds = %20, %2
  %28 = load %struct.object*, %struct.object** %11, align 8
  %29 = icmp ne %struct.object* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.object*, %struct.object** %11, align 8
  %32 = getelementptr inbounds %struct.object, %struct.object* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OBJ_BLOB, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.repository*, %struct.repository** %4, align 8
  %38 = load %struct.object_id*, %struct.object_id** %5, align 8
  %39 = call i64 @repo_has_object_file(%struct.repository* %37, %struct.object_id* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %36, %30, %27
  %42 = load %struct.object*, %struct.object** %11, align 8
  %43 = icmp ne %struct.object* %42, null
  br i1 %43, label %72, label %44

44:                                               ; preds = %41
  %45 = load %struct.repository*, %struct.repository** %4, align 8
  %46 = load %struct.object_id*, %struct.object_id** %5, align 8
  %47 = call i64 @repo_has_object_file(%struct.repository* %45, %struct.object_id* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = load %struct.repository*, %struct.repository** %4, align 8
  %51 = load %struct.object_id*, %struct.object_id** %5, align 8
  %52 = call i64 @oid_object_info(%struct.repository* %50, %struct.object_id* %51, i32* null)
  %53 = load i64, i64* @OBJ_BLOB, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %49, %36
  %56 = load %struct.object_id*, %struct.object_id** %9, align 8
  %57 = call i64 @check_object_signature(%struct.object_id* %56, i8* null, i64 0, i32* null)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.object_id*, %struct.object_id** %5, align 8
  %62 = call i32 @oid_to_hex(%struct.object_id* %61)
  %63 = call i32 @error(i32 %60, i32 %62)
  store %struct.object* null, %struct.object** %3, align 8
  br label %108

64:                                               ; preds = %55
  %65 = load %struct.repository*, %struct.repository** %4, align 8
  %66 = load %struct.object_id*, %struct.object_id** %5, align 8
  %67 = call i32 @lookup_blob(%struct.repository* %65, %struct.object_id* %66)
  %68 = call i32 @parse_blob_buffer(i32 %67, i32* null, i32 0)
  %69 = load %struct.repository*, %struct.repository** %4, align 8
  %70 = load %struct.object_id*, %struct.object_id** %5, align 8
  %71 = call %struct.object* @lookup_object(%struct.repository* %69, %struct.object_id* %70)
  store %struct.object* %71, %struct.object** %3, align 8
  br label %108

72:                                               ; preds = %49, %44, %41
  %73 = load %struct.repository*, %struct.repository** %4, align 8
  %74 = load %struct.object_id*, %struct.object_id** %5, align 8
  %75 = call i8* @repo_read_object_file(%struct.repository* %73, %struct.object_id* %74, i32* %7, i64* %6)
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %107

78:                                               ; preds = %72
  %79 = load %struct.object_id*, %struct.object_id** %9, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32* @type_name(i32 %82)
  %84 = call i64 @check_object_signature(%struct.object_id* %79, i8* %80, i64 %81, i32* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @free(i8* %87)
  %89 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.object_id*, %struct.object_id** %9, align 8
  %91 = call i32 @oid_to_hex(%struct.object_id* %90)
  %92 = call i32 @error(i32 %89, i32 %91)
  store %struct.object* null, %struct.object** %3, align 8
  br label %108

93:                                               ; preds = %78
  %94 = load %struct.repository*, %struct.repository** %4, align 8
  %95 = load %struct.object_id*, %struct.object_id** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i64, i64* %6, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = call %struct.object* @parse_object_buffer(%struct.repository* %94, %struct.object_id* %95, i32 %96, i64 %97, i8* %98, i32* %8)
  store %struct.object* %99, %struct.object** %11, align 8
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %93
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @free(i8* %103)
  br label %105

105:                                              ; preds = %102, %93
  %106 = load %struct.object*, %struct.object** %11, align 8
  store %struct.object* %106, %struct.object** %3, align 8
  br label %108

107:                                              ; preds = %72
  store %struct.object* null, %struct.object** %3, align 8
  br label %108

108:                                              ; preds = %107, %105, %86, %64, %59, %25
  %109 = load %struct.object*, %struct.object** %3, align 8
  ret %struct.object* %109
}

declare dso_local %struct.object_id* @lookup_replace_object(%struct.repository*, %struct.object_id*) #1

declare dso_local %struct.object* @lookup_object(%struct.repository*, %struct.object_id*) #1

declare dso_local i64 @repo_has_object_file(%struct.repository*, %struct.object_id*) #1

declare dso_local i64 @oid_object_info(%struct.repository*, %struct.object_id*, i32*) #1

declare dso_local i64 @check_object_signature(%struct.object_id*, i8*, i64, i32*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @parse_blob_buffer(i32, i32*, i32) #1

declare dso_local i32 @lookup_blob(%struct.repository*, %struct.object_id*) #1

declare dso_local i8* @repo_read_object_file(%struct.repository*, %struct.object_id*, i32*, i64*) #1

declare dso_local i32* @type_name(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.object* @parse_object_buffer(%struct.repository*, %struct.object_id*, i32, i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
