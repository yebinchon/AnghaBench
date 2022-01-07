; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_odb_loose_cache.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_odb_loose_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.oid_array = type { i32 }
%struct.object_directory = type { i32*, %struct.oid_array*, i32 }
%struct.object_id = type { i32* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"subdir_nr out of range\00", align 1
@append_loose_object = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.oid_array* @odb_loose_cache(%struct.object_directory* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.oid_array*, align 8
  %4 = alloca %struct.object_directory*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 4
  store %struct.object_directory* %0, %struct.object_directory** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %8 = load %struct.object_id*, %struct.object_id** %5, align 8
  %9 = getelementptr inbounds %struct.object_id, %struct.object_id* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.object_directory*, %struct.object_directory** %4, align 8
  %19 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = icmp sge i32 %17, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16, %2
  %24 = call i32 @BUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %16
  %26 = load %struct.object_directory*, %struct.object_directory** %4, align 8
  %27 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.object_directory*, %struct.object_directory** %4, align 8
  %36 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %35, i32 0, i32 1
  %37 = load %struct.oid_array*, %struct.oid_array** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %37, i64 %39
  store %struct.oid_array* %40, %struct.oid_array** %3, align 8
  br label %68

41:                                               ; preds = %25
  %42 = load %struct.object_directory*, %struct.object_directory** %4, align 8
  %43 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strbuf_addstr(%struct.strbuf* %7, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @append_loose_object, align 4
  %48 = load %struct.object_directory*, %struct.object_directory** %4, align 8
  %49 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %48, i32 0, i32 1
  %50 = load %struct.oid_array*, %struct.oid_array** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %50, i64 %52
  %54 = call i32 @for_each_file_in_obj_subdir(i32 %46, %struct.strbuf* %7, i32 %47, i32* null, i32* null, %struct.oid_array* %53)
  %55 = load %struct.object_directory*, %struct.object_directory** %4, align 8
  %56 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 1, i32* %60, align 4
  %61 = call i32 @strbuf_release(%struct.strbuf* %7)
  %62 = load %struct.object_directory*, %struct.object_directory** %4, align 8
  %63 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %62, i32 0, i32 1
  %64 = load %struct.oid_array*, %struct.oid_array** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %64, i64 %66
  store %struct.oid_array* %67, %struct.oid_array** %3, align 8
  br label %68

68:                                               ; preds = %41, %34
  %69 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  ret %struct.oid_array* %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i32 @for_each_file_in_obj_subdir(i32, %struct.strbuf*, i32, i32*, i32*, %struct.oid_array*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
