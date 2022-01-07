; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_write_pseudoref.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_write_pseudoref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.strbuf = type { i32, i32 }
%struct.object_id = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"could not open '%s' for writing: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"could not read ref '%s'\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ref '%s' already exists\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"unexpected object ID when writing '%s'\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"could not write to '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, %struct.object_id*, %struct.strbuf*)* @write_pseudoref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_pseudoref(i8* %0, %struct.object_id* %1, %struct.object_id* %2, %struct.strbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lock_file, align 4
  %13 = alloca %struct.strbuf, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.object_id, align 4
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  %16 = bitcast %struct.lock_file* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %17 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 -1, i32* %14, align 4
  %18 = load %struct.object_id*, %struct.object_id** %7, align 8
  %19 = icmp ne %struct.object_id* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %99

21:                                               ; preds = %4
  %22 = load %struct.object_id*, %struct.object_id** %7, align 8
  %23 = call i8* @oid_to_hex(%struct.object_id* %22)
  %24 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @git_path(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 (...) @get_files_ref_lock_timeout_ms()
  %29 = call i32 @hold_lock_file_for_update_timeout(%struct.lock_file* %12, i8* %27, i32 0, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %34 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %33, i8* %34, i8* %35, i32 %37)
  br label %96

39:                                               ; preds = %21
  %40 = load %struct.object_id*, %struct.object_id** %8, align 8
  %41 = icmp ne %struct.object_id* %40, null
  br i1 %41, label %42, label %80

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @read_ref(i8* %43, %struct.object_id* %15)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load %struct.object_id*, %struct.object_id** %8, align 8
  %48 = call i64 @is_null_oid(%struct.object_id* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %52 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %51, i8* %52, i8* %53)
  %55 = call i32 @rollback_lock_file(%struct.lock_file* %12)
  br label %96

56:                                               ; preds = %46
  br label %79

57:                                               ; preds = %42
  %58 = load %struct.object_id*, %struct.object_id** %8, align 8
  %59 = call i64 @is_null_oid(%struct.object_id* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %63 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %62, i8* %63, i8* %64)
  %66 = call i32 @rollback_lock_file(%struct.lock_file* %12)
  br label %96

67:                                               ; preds = %57
  %68 = load %struct.object_id*, %struct.object_id** %8, align 8
  %69 = call i32 @oideq(%struct.object_id* %15, %struct.object_id* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %73 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %72, i8* %73, i8* %74)
  %76 = call i32 @rollback_lock_file(%struct.lock_file* %12)
  br label %96

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %39
  %81 = load i32, i32* %11, align 4
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @write_in_full(i32 %81, i32 %83, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %90 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %89, i8* %90, i8* %91)
  %93 = call i32 @rollback_lock_file(%struct.lock_file* %12)
  br label %96

94:                                               ; preds = %80
  %95 = call i32 @commit_lock_file(%struct.lock_file* %12)
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %94, %88, %71, %61, %50, %32
  %97 = call i32 @strbuf_release(%struct.strbuf* %13)
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %96, %20
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i8* @git_path(i8*, i8*) #2

declare dso_local i32 @hold_lock_file_for_update_timeout(%struct.lock_file*, i8*, i32, i32) #2

declare dso_local i32 @get_files_ref_lock_timeout_ms(...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @read_ref(i8*, %struct.object_id*) #2

declare dso_local i64 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i32 @oideq(%struct.object_id*, %struct.object_id*) #2

declare dso_local i64 @write_in_full(i32, i32, i32) #2

declare dso_local i32 @commit_lock_file(%struct.lock_file*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
