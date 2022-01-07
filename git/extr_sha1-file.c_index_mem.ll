; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_index_mem.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_index_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.index_state = type { i32 }
%struct.object_id = type { i32 }

@HASH_WRITE_OBJECT = common dso_local global i32 0, align 4
@OBJ_BLOB = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@HASH_FORMAT_CHECK = common dso_local global i32 0, align 4
@OBJ_TREE = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i32 0, align 4
@OBJ_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.object_id*, i8*, i64, i32, i8*, i32)* @index_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_mem(%struct.index_state* %0, %struct.object_id* %1, i8* %2, i64 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.strbuf, align 4
  store %struct.index_state* %0, %struct.index_state** %8, align 8
  store %struct.object_id* %1, %struct.object_id** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* @HASH_WRITE_OBJECT, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @OBJ_BLOB, align 4
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %24, %7
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @OBJ_BLOB, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i8*, i8** %13, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = bitcast %struct.strbuf* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %35 = load %struct.index_state*, %struct.index_state** %8, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @get_conv_flags(i32 %39)
  %41 = call i64 @convert_to_git(%struct.index_state* %35, i8* %36, i8* %37, i64 %38, %struct.strbuf* %18, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = call i8* @strbuf_detach(%struct.strbuf* %18, i64* %11)
  store i8* %44, i8** %10, align 8
  store i32 1, i32* %16, align 4
  br label %45

45:                                               ; preds = %43, %33
  br label %46

46:                                               ; preds = %45, %30, %26
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @HASH_FORMAT_CHECK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @OBJ_TREE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @check_tree(i8* %56, i64 %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @OBJ_COMMIT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8*, i8** %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @check_commit(i8* %64, i64 %65)
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @OBJ_TAG, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i8*, i8** %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @check_tag(i8* %72, i64 %73)
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %46
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i8*, i8** %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @type_name(i32 %82)
  %84 = load %struct.object_id*, %struct.object_id** %9, align 8
  %85 = call i32 @write_object_file(i8* %80, i64 %81, i32 %83, %struct.object_id* %84)
  store i32 %85, i32* %15, align 4
  br label %93

86:                                               ; preds = %76
  %87 = load i8*, i8** %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @type_name(i32 %89)
  %91 = load %struct.object_id*, %struct.object_id** %9, align 8
  %92 = call i32 @hash_object_file(i8* %87, i64 %88, i32 %90, %struct.object_id* %91)
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %86, %79
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @free(i8* %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %15, align 4
  ret i32 %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @convert_to_git(%struct.index_state*, i8*, i8*, i64, %struct.strbuf*, i32) #2

declare dso_local i32 @get_conv_flags(i32) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i64*) #2

declare dso_local i32 @check_tree(i8*, i64) #2

declare dso_local i32 @check_commit(i8*, i64) #2

declare dso_local i32 @check_tag(i8*, i64) #2

declare dso_local i32 @write_object_file(i8*, i64, i32, %struct.object_id*) #2

declare dso_local i32 @type_name(i32) #2

declare dso_local i32 @hash_object_file(i8*, i64, i32, %struct.object_id*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
