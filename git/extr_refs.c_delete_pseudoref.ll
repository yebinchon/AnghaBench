; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_delete_pseudoref.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_delete_pseudoref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not open '%s' for writing\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"could not read ref '%s'\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"unexpected object ID when deleting '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*)* @delete_pseudoref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_pseudoref(i8* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lock_file, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id, align 4
  store i8* %0, i8** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @git_path(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i8* %11, i8** %6, align 8
  %12 = load %struct.object_id*, %struct.object_id** %5, align 8
  %13 = icmp ne %struct.object_id* %12, null
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  %15 = load %struct.object_id*, %struct.object_id** %5, align 8
  %16 = call i32 @is_null_oid(%struct.object_id* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %14
  %19 = bitcast %struct.lock_file* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (...) @get_files_ref_lock_timeout_ms()
  %22 = call i32 @hold_lock_file_for_update_timeout(%struct.lock_file* %7, i8* %20, i32 0, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @error_errno(i32 %26, i8* %27)
  store i32 -1, i32* %3, align 4
  br label %54

29:                                               ; preds = %18
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @read_ref(i8* %30, %struct.object_id* %9)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @die(i32 %34, i8* %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.object_id*, %struct.object_id** %5, align 8
  %39 = call i32 @oideq(%struct.object_id* %9, %struct.object_id* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @error(i32 %42, i8* %43)
  %45 = call i32 @rollback_lock_file(%struct.lock_file* %7)
  store i32 -1, i32* %3, align 4
  br label %54

46:                                               ; preds = %37
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @unlink(i8* %47)
  %49 = call i32 @rollback_lock_file(%struct.lock_file* %7)
  br label %53

50:                                               ; preds = %14, %2
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @unlink(i8* %51)
  br label %53

53:                                               ; preds = %50, %46
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %41, %25
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i8* @git_path(i8*, i8*) #1

declare dso_local i32 @is_null_oid(%struct.object_id*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hold_lock_file_for_update_timeout(%struct.lock_file*, i8*, i32, i32) #1

declare dso_local i32 @get_files_ref_lock_timeout_ms(...) #1

declare dso_local i32 @error_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @read_ref(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @oideq(%struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
