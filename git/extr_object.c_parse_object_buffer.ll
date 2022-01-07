; ModuleID = '/home/carl/AnghaBench/git/extr_object.c_parse_object_buffer.c'
source_filename = "/home/carl/AnghaBench/git/extr_object.c_parse_object_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i64 }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.blob = type { %struct.object }
%struct.tree = type { %struct.object, i32 }
%struct.commit = type { %struct.object }
%struct.tag = type { %struct.object }

@OBJ_BLOB = common dso_local global i32 0, align 4
@OBJ_TREE = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i32 0, align 4
@OBJ_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"object %s has unknown type id %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.object* @parse_object_buffer(%struct.repository* %0, %struct.object_id* %1, i32 %2, i64 %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.object*, align 8
  %8 = alloca %struct.repository*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.object*, align 8
  %15 = alloca %struct.blob*, align 8
  %16 = alloca %struct.tree*, align 8
  %17 = alloca %struct.commit*, align 8
  %18 = alloca %struct.tag*, align 8
  store %struct.repository* %0, %struct.repository** %8, align 8
  store %struct.object_id* %1, %struct.object_id** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i32*, i32** %13, align 8
  store i32 0, i32* %19, align 4
  store %struct.object* null, %struct.object** %14, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @OBJ_BLOB, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %6
  %24 = load %struct.repository*, %struct.repository** %8, align 8
  %25 = load %struct.object_id*, %struct.object_id** %9, align 8
  %26 = call %struct.blob* @lookup_blob(%struct.repository* %24, %struct.object_id* %25)
  store %struct.blob* %26, %struct.blob** %15, align 8
  %27 = load %struct.blob*, %struct.blob** %15, align 8
  %28 = icmp ne %struct.blob* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.blob*, %struct.blob** %15, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @parse_blob_buffer(%struct.blob* %30, i8* %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store %struct.object* null, %struct.object** %7, align 8
  br label %145

36:                                               ; preds = %29
  %37 = load %struct.blob*, %struct.blob** %15, align 8
  %38 = getelementptr inbounds %struct.blob, %struct.blob* %37, i32 0, i32 0
  store %struct.object* %38, %struct.object** %14, align 8
  br label %39

39:                                               ; preds = %36, %23
  br label %143

40:                                               ; preds = %6
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @OBJ_TREE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %40
  %45 = load %struct.repository*, %struct.repository** %8, align 8
  %46 = load %struct.object_id*, %struct.object_id** %9, align 8
  %47 = call %struct.tree* @lookup_tree(%struct.repository* %45, %struct.object_id* %46)
  store %struct.tree* %47, %struct.tree** %16, align 8
  %48 = load %struct.tree*, %struct.tree** %16, align 8
  %49 = icmp ne %struct.tree* %48, null
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = load %struct.tree*, %struct.tree** %16, align 8
  %52 = getelementptr inbounds %struct.tree, %struct.tree* %51, i32 0, i32 0
  store %struct.object* %52, %struct.object** %14, align 8
  %53 = load %struct.tree*, %struct.tree** %16, align 8
  %54 = getelementptr inbounds %struct.tree, %struct.tree* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = load %struct.tree*, %struct.tree** %16, align 8
  %59 = getelementptr inbounds %struct.tree, %struct.tree* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.object, %struct.object* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.tree*, %struct.tree** %16, align 8
  %63 = getelementptr inbounds %struct.tree, %struct.tree* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.object, %struct.object* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %61
  %68 = load %struct.tree*, %struct.tree** %16, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i64 @parse_tree_buffer(%struct.tree* %68, i8* %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store %struct.object* null, %struct.object** %7, align 8
  br label %145

74:                                               ; preds = %67
  %75 = load i32*, i32** %13, align 8
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %74, %61
  br label %77

77:                                               ; preds = %76, %44
  br label %142

78:                                               ; preds = %40
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @OBJ_COMMIT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %112

82:                                               ; preds = %78
  %83 = load %struct.repository*, %struct.repository** %8, align 8
  %84 = load %struct.object_id*, %struct.object_id** %9, align 8
  %85 = call %struct.commit* @lookup_commit(%struct.repository* %83, %struct.object_id* %84)
  store %struct.commit* %85, %struct.commit** %17, align 8
  %86 = load %struct.commit*, %struct.commit** %17, align 8
  %87 = icmp ne %struct.commit* %86, null
  br i1 %87, label %88, label %111

88:                                               ; preds = %82
  %89 = load %struct.repository*, %struct.repository** %8, align 8
  %90 = load %struct.commit*, %struct.commit** %17, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i64 @parse_commit_buffer(%struct.repository* %89, %struct.commit* %90, i8* %91, i64 %92, i32 1)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store %struct.object* null, %struct.object** %7, align 8
  br label %145

96:                                               ; preds = %88
  %97 = load %struct.repository*, %struct.repository** %8, align 8
  %98 = load %struct.commit*, %struct.commit** %17, align 8
  %99 = call i32 @get_cached_commit_buffer(%struct.repository* %97, %struct.commit* %98, i32* null)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %96
  %102 = load %struct.repository*, %struct.repository** %8, align 8
  %103 = load %struct.commit*, %struct.commit** %17, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @set_commit_buffer(%struct.repository* %102, %struct.commit* %103, i8* %104, i64 %105)
  %107 = load i32*, i32** %13, align 8
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %101, %96
  %109 = load %struct.commit*, %struct.commit** %17, align 8
  %110 = getelementptr inbounds %struct.commit, %struct.commit* %109, i32 0, i32 0
  store %struct.object* %110, %struct.object** %14, align 8
  br label %111

111:                                              ; preds = %108, %82
  br label %141

112:                                              ; preds = %78
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @OBJ_TAG, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %112
  %117 = load %struct.repository*, %struct.repository** %8, align 8
  %118 = load %struct.object_id*, %struct.object_id** %9, align 8
  %119 = call %struct.tag* @lookup_tag(%struct.repository* %117, %struct.object_id* %118)
  store %struct.tag* %119, %struct.tag** %18, align 8
  %120 = load %struct.tag*, %struct.tag** %18, align 8
  %121 = icmp ne %struct.tag* %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %116
  %123 = load %struct.repository*, %struct.repository** %8, align 8
  %124 = load %struct.tag*, %struct.tag** %18, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = load i64, i64* %11, align 8
  %127 = call i64 @parse_tag_buffer(%struct.repository* %123, %struct.tag* %124, i8* %125, i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store %struct.object* null, %struct.object** %7, align 8
  br label %145

130:                                              ; preds = %122
  %131 = load %struct.tag*, %struct.tag** %18, align 8
  %132 = getelementptr inbounds %struct.tag, %struct.tag* %131, i32 0, i32 0
  store %struct.object* %132, %struct.object** %14, align 8
  br label %133

133:                                              ; preds = %130, %116
  br label %140

134:                                              ; preds = %112
  %135 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %136 = load %struct.object_id*, %struct.object_id** %9, align 8
  %137 = call i32 @oid_to_hex(%struct.object_id* %136)
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @warning(i32 %135, i32 %137, i32 %138)
  store %struct.object* null, %struct.object** %14, align 8
  br label %140

140:                                              ; preds = %134, %133
  br label %141

141:                                              ; preds = %140, %111
  br label %142

142:                                              ; preds = %141, %77
  br label %143

143:                                              ; preds = %142, %39
  %144 = load %struct.object*, %struct.object** %14, align 8
  store %struct.object* %144, %struct.object** %7, align 8
  br label %145

145:                                              ; preds = %143, %129, %95, %73, %35
  %146 = load %struct.object*, %struct.object** %7, align 8
  ret %struct.object* %146
}

declare dso_local %struct.blob* @lookup_blob(%struct.repository*, %struct.object_id*) #1

declare dso_local i64 @parse_blob_buffer(%struct.blob*, i8*, i64) #1

declare dso_local %struct.tree* @lookup_tree(%struct.repository*, %struct.object_id*) #1

declare dso_local i64 @parse_tree_buffer(%struct.tree*, i8*, i64) #1

declare dso_local %struct.commit* @lookup_commit(%struct.repository*, %struct.object_id*) #1

declare dso_local i64 @parse_commit_buffer(%struct.repository*, %struct.commit*, i8*, i64, i32) #1

declare dso_local i32 @get_cached_commit_buffer(%struct.repository*, %struct.commit*, i32*) #1

declare dso_local i32 @set_commit_buffer(%struct.repository*, %struct.commit*, i8*, i64) #1

declare dso_local %struct.tag* @lookup_tag(%struct.repository*, %struct.object_id*) #1

declare dso_local i64 @parse_tag_buffer(%struct.repository*, %struct.tag*, i8*, i64) #1

declare dso_local i32 @warning(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
