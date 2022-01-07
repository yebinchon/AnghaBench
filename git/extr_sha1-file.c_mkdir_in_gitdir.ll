; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_mkdir_in_gitdir.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_mkdir_in_gitdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.stat = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mkdir_in_gitdir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 4
  %6 = alloca %struct.strbuf, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @mkdir(i8* %7, i32 511)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %1
  %11 = load i32, i32* @errno, align 4
  store i32 %11, i32* %4, align 4
  %12 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %13 = load i32, i32* @errno, align 4
  %14 = load i32, i32* @EEXIST, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %50

17:                                               ; preds = %10
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @lstat(i8* %18, %struct.stat* %5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @S_ISLNK(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @strbuf_readlink(%struct.strbuf* %6, i8* %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @is_absolute_path(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @mkdir(i8* %39, i32 511)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %32, %26, %21, %17
  %43 = call i32 @strbuf_release(%struct.strbuf* %6)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %50

45:                                               ; preds = %37
  %46 = call i32 @strbuf_release(%struct.strbuf* %6)
  br label %47

47:                                               ; preds = %45, %1
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @adjust_shared_perm(i8* %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %42, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @mkdir(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @strbuf_readlink(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @is_absolute_path(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @adjust_shared_perm(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
