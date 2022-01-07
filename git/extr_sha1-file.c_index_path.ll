; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_index_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_index_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.index_state = type { i32 }
%struct.object_id = type { i32 }
%struct.stat = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@S_IFMT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"open(\22%s\22)\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: failed to insert into database\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"readlink(\22%s\22)\00", align 1
@HASH_WRITE_OBJECT = common dso_local global i32 0, align 4
@blob_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: unsupported file type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @index_path(%struct.index_state* %0, %struct.object_id* %1, i8* %2, %struct.stat* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.index_state*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.strbuf, align 4
  %14 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %7, align 8
  store %struct.object_id* %1, %struct.object_id** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.stat* %3, %struct.stat** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %14, align 4
  %16 = load %struct.stat*, %struct.stat** %10, align 8
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @S_IFMT, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %88 [
    i32 128, label %21
    i32 129, label %45
    i32 130, label %84
  ]

21:                                               ; preds = %5
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 @open(i8* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @error_errno(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i32 %29, i32* %6, align 4
  br label %94

30:                                               ; preds = %21
  %31 = load %struct.index_state*, %struct.index_state** %7, align 8
  %32 = load %struct.object_id*, %struct.object_id** %8, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.stat*, %struct.stat** %10, align 8
  %35 = load i32, i32* @OBJ_BLOB, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @index_fd(%struct.index_state* %31, %struct.object_id* %32, i32 %33, %struct.stat* %34, i32 %35, i8* %36, i32 %37)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @error(i32 %41, i8* %42)
  store i32 %43, i32* %6, align 4
  br label %94

44:                                               ; preds = %30
  br label %92

45:                                               ; preds = %5
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.stat*, %struct.stat** %10, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strbuf_readlink(%struct.strbuf* %13, i8* %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @error_errno(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  store i32 %54, i32* %6, align 4
  br label %94

55:                                               ; preds = %45
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @HASH_WRITE_OBJECT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @blob_type, align 4
  %66 = load %struct.object_id*, %struct.object_id** %8, align 8
  %67 = call i32 @hash_object_file(i32 %62, i32 %64, i32 %65, %struct.object_id* %66)
  br label %82

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @blob_type, align 4
  %74 = load %struct.object_id*, %struct.object_id** %8, align 8
  %75 = call i32 @write_object_file(i32 %70, i32 %72, i32 %73, %struct.object_id* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @error(i32 %78, i8* %79)
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %77, %68
  br label %82

82:                                               ; preds = %81, %60
  %83 = call i32 @strbuf_release(%struct.strbuf* %13)
  br label %92

84:                                               ; preds = %5
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.object_id*, %struct.object_id** %8, align 8
  %87 = call i32 @resolve_gitlink_ref(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.object_id* %86)
  store i32 %87, i32* %6, align 4
  br label %94

88:                                               ; preds = %5
  %89 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @error(i32 %89, i8* %90)
  store i32 %91, i32* %6, align 4
  br label %94

92:                                               ; preds = %82, %44
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %88, %84, %52, %40, %27
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @error_errno(i8*, i8*) #2

declare dso_local i32 @index_fd(%struct.index_state*, %struct.object_id*, i32, %struct.stat*, i32, i8*, i32) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_readlink(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @hash_object_file(i32, i32, i32, %struct.object_id*) #2

declare dso_local i32 @write_object_file(i32, i32, i32, %struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @resolve_gitlink_ref(i8*, i8*, %struct.object_id*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
