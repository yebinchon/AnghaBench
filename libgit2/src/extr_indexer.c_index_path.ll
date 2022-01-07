; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_indexer.c_index_path.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_indexer.c_index_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32 }

@__const.index_path.prefix = private unnamed_addr constant [6 x i8] c"pack-\00", align 1
@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i8*)* @index_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_path(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [6 x i8], align 1
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = bitcast [6 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.index_path.prefix, i32 0, i32 0), i64 6, i1 false)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %9, align 8
  br label %15

15:                                               ; preds = %30, %3
  %16 = load i64, i64* %9, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = sub i64 %22, 1
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 47
  br label %28

28:                                               ; preds = %18, %15
  %29 = phi i1 [ false, %15 ], [ %27, %18 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %9, align 8
  br label %15

33:                                               ; preds = %28
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 1
  %37 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %38 = call i64 @strlen(i8* %37)
  %39 = add i64 %36, %38
  %40 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %41 = add i64 %39, %40
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = add i64 %41, %43
  %45 = add i64 %44, 1
  %46 = call i64 @git_buf_grow(%struct.TYPE_11__* %34, i64 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %81

49:                                               ; preds = %33
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @git_buf_truncate(%struct.TYPE_11__* %50, i64 %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %55 = call i32 @git_buf_puts(%struct.TYPE_11__* %53, i8* %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = call i32 @git_buf_len(%struct.TYPE_11__* %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = call i32 @git_oid_fmt(i8* %62, i32* %64)
  %66 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @git_buf_puts(%struct.TYPE_11__* %73, i8* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = call i64 @git_buf_oom(%struct.TYPE_11__* %76)
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 -1, i32 0
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %49, %48
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_buf_grow(%struct.TYPE_11__*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @git_buf_truncate(%struct.TYPE_11__*, i64) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @git_oid_fmt(i8*, i32*) #2

declare dso_local i32 @git_buf_len(%struct.TYPE_11__*) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
