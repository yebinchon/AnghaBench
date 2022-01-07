; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_delete_refs.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_delete_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.ref_store = type { i32 }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.files_ref_store = type { i32, i32 }

@REF_STORE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"delete_refs\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"could not remove reference %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"could not delete reference %s: %s\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"could not delete references: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, i8*, %struct.string_list*, i32)* @files_delete_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_delete_refs(%struct.ref_store* %0, i8* %1, %struct.string_list* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_store*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.string_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.files_ref_store*, align 8
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.string_list* %2, %struct.string_list** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ref_store*, %struct.ref_store** %6, align 8
  %16 = load i32, i32* @REF_STORE_WRITE, align 4
  %17 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %15, i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %17, %struct.files_ref_store** %10, align 8
  %18 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %13, align 4
  %19 = load %struct.string_list*, %struct.string_list** %8, align 8
  %20 = getelementptr inbounds %struct.string_list, %struct.string_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %108

24:                                               ; preds = %4
  %25 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %26 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @packed_refs_lock(i32 %27, i32 0, %struct.strbuf* %11)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %85

31:                                               ; preds = %24
  %32 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %33 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.string_list*, %struct.string_list** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @refs_delete_refs(i32 %34, i8* %35, %struct.string_list* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %42 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @packed_refs_unlock(i32 %43)
  br label %85

45:                                               ; preds = %31
  %46 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %47 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @packed_refs_unlock(i32 %48)
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %79, %45
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.string_list*, %struct.string_list** %8, align 8
  %53 = getelementptr inbounds %struct.string_list, %struct.string_list* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %50
  %57 = load %struct.string_list*, %struct.string_list** %8, align 8
  %58 = getelementptr inbounds %struct.string_list, %struct.string_list* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %14, align 8
  %65 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %66 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %65, i32 0, i32 0
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @refs_delete_ref(i32* %66, i8* %67, i8* %68, i32* null, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %56
  %73 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 (i32, i8*, ...) @error(i32 %73, i8* %74)
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %72, %56
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %50

82:                                               ; preds = %50
  %83 = call i32 @strbuf_release(%struct.strbuf* %11)
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %5, align 4
  br label %108

85:                                               ; preds = %40, %30
  %86 = load %struct.string_list*, %struct.string_list** %8, align 8
  %87 = getelementptr inbounds %struct.string_list, %struct.string_list* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.string_list*, %struct.string_list** %8, align 8
  %93 = getelementptr inbounds %struct.string_list, %struct.string_list* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i32, i8*, ...) @error(i32 %91, i8* %97, i8* %99)
  br label %106

101:                                              ; preds = %85
  %102 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %103 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i32, i8*, ...) @error(i32 %102, i8* %104)
  br label %106

106:                                              ; preds = %101, %90
  %107 = call i32 @strbuf_release(%struct.strbuf* %11)
  store i32 -1, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %82, %23
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @packed_refs_lock(i32, i32, %struct.strbuf*) #1

declare dso_local i64 @refs_delete_refs(i32, i8*, %struct.string_list*, i32) #1

declare dso_local i32 @packed_refs_unlock(i32) #1

declare dso_local i64 @refs_delete_ref(i32*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @error(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
