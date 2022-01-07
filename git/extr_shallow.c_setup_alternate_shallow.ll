; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_setup_alternate_shallow.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_setup_alternate_shallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.lock_file = type { i32 }
%struct.oid_array = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@the_repository = common dso_local global i32 0, align 4
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to write to %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_alternate_shallow(%struct.lock_file* %0, i8** %1, %struct.oid_array* %2) #0 {
  %4 = alloca %struct.lock_file*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.oid_array*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i32, align 4
  store %struct.lock_file* %0, %struct.lock_file** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.oid_array* %2, %struct.oid_array** %6, align 8
  %9 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %10 = load %struct.lock_file*, %struct.lock_file** %4, align 8
  %11 = load i32, i32* @the_repository, align 4
  %12 = call i32 @git_path_shallow(i32 %11)
  %13 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %14 = call i32 @hold_lock_file_for_update(%struct.lock_file* %10, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @the_repository, align 4
  %16 = call i32 @check_shallow_file_for_update(i32 %15)
  %17 = load %struct.oid_array*, %struct.oid_array** %6, align 8
  %18 = call i64 @write_shallow_commits(%struct.strbuf* %7, i32 0, %struct.oid_array* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @write_in_full(i32 %21, i32 %23, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.lock_file*, %struct.lock_file** %4, align 8
  %30 = call i8* @get_lock_file_path(%struct.lock_file* %29)
  %31 = call i32 @die_errno(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %28, %20
  %33 = load %struct.lock_file*, %struct.lock_file** %4, align 8
  %34 = call i8* @get_lock_file_path(%struct.lock_file* %33)
  %35 = load i8**, i8*** %5, align 8
  store i8* %34, i8** %35, align 8
  br label %38

36:                                               ; preds = %3
  %37 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %37, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hold_lock_file_for_update(%struct.lock_file*, i32, i32) #2

declare dso_local i32 @git_path_shallow(i32) #2

declare dso_local i32 @check_shallow_file_for_update(i32) #2

declare dso_local i64 @write_shallow_commits(%struct.strbuf*, i32, %struct.oid_array*) #2

declare dso_local i64 @write_in_full(i32, i32, i32) #2

declare dso_local i32 @die_errno(i8*, i8*) #2

declare dso_local i8* @get_lock_file_path(%struct.lock_file*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
