; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_commit_ref.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_commit_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_lock = type { i32 }
%struct.stat = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_lock*)* @commit_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_ref(%struct.ref_lock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_lock*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.strbuf, align 4
  store %struct.ref_lock* %0, %struct.ref_lock** %3, align 8
  %8 = load %struct.ref_lock*, %struct.ref_lock** %3, align 8
  %9 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %8, i32 0, i32 0
  %10 = call i8* @get_locked_file_path(i32* %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @lstat(i8* %11, %struct.stat* %5)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISDIR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %6, align 8
  %22 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @strbuf_attach(%struct.strbuf* %7, i8* %23, i64 %24, i64 %25)
  %27 = call i32 @remove_empty_directories(%struct.strbuf* %7)
  %28 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %32

29:                                               ; preds = %14, %1
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @free(i8* %30)
  br label %32

32:                                               ; preds = %29, %19
  %33 = load %struct.ref_lock*, %struct.ref_lock** %3, align 8
  %34 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %33, i32 0, i32 0
  %35 = call i64 @commit_lock_file(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %39

38:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i8* @get_locked_file_path(i32*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_attach(%struct.strbuf*, i8*, i64, i64) #1

declare dso_local i32 @remove_empty_directories(%struct.strbuf*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @commit_lock_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
