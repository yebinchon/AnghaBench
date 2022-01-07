; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_setup_temporary_shallow.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_setup_temporary_shallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.oid_array = type { i32 }
%struct.tempfile = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"shallow_XXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to write to %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setup_temporary_shallow(%struct.oid_array* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.oid_array*, align 8
  %4 = alloca %struct.tempfile*, align 8
  %5 = alloca %struct.strbuf, align 4
  store %struct.oid_array* %0, %struct.oid_array** %3, align 8
  %6 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %7 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %8 = call i64 @write_shallow_commits(%struct.strbuf* %5, i32 0, %struct.oid_array* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = call i32 @git_path(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = call %struct.tempfile* @xmks_tempfile(i32 %11)
  store %struct.tempfile* %12, %struct.tempfile** %4, align 8
  %13 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %14 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @write_in_full(i32 %15, i32 %17, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %10
  %23 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %24 = call i64 @close_tempfile_gently(%struct.tempfile* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %10
  %27 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %28 = call i8* @get_tempfile_path(%struct.tempfile* %27)
  %29 = call i32 @die_errno(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = call i32 @strbuf_release(%struct.strbuf* %5)
  %32 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %33 = call i8* @get_tempfile_path(%struct.tempfile* %32)
  store i8* %33, i8** %2, align 8
  br label %35

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @write_shallow_commits(%struct.strbuf*, i32, %struct.oid_array*) #2

declare dso_local %struct.tempfile* @xmks_tempfile(i32) #2

declare dso_local i32 @git_path(i8*) #2

declare dso_local i64 @write_in_full(i32, i32, i32) #2

declare dso_local i64 @close_tempfile_gently(%struct.tempfile*) #2

declare dso_local i32 @die_errno(i8*, i8*) #2

declare dso_local i8* @get_tempfile_path(%struct.tempfile*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
