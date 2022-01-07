; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_snapshots_create.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_snapshots_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64, i64, i64 }

@newidx_fds = common dso_local global i64 0, align 8
@Dirs = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@filename_newidx = common dso_local global i8** null, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@newidx_fd = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @snapshots_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshots_create(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strrchr(i8* %12, i8 signext 47)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %7, align 8
  br label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %18, %16
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  store i64 0, i64* @newidx_fds, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %105, %21
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %108

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %34, i64 %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %9, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %105

49:                                               ; preds = %43, %31
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Dirs, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = add nsw i32 %51, %59
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i8* @tszmalloc(i32 %61)
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Dirs, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %70, i8* %71)
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i8*, i8** %11, align 8
  %79 = load i8**, i8*** @filename_newidx, align 8
  %80 = load i64, i64* @newidx_fds, align 8
  %81 = getelementptr inbounds i8*, i8** %79, i64 %80
  store i8* %78, i8** %81, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* @O_CREAT, align 4
  %84 = load i32, i32* @O_TRUNC, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @O_WRONLY, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @O_EXCL, align 4
  %89 = or i32 %87, %88
  %90 = call i64 @open(i8* %82, i32 %89, i32 432)
  %91 = load i64*, i64** @newidx_fd, align 8
  %92 = load i64, i64* @newidx_fds, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 %90, i64* %93, align 8
  %94 = load i64*, i64** @newidx_fd, align 8
  %95 = load i64, i64* @newidx_fds, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %49
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %49
  %103 = load i64, i64* @newidx_fds, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* @newidx_fds, align 8
  br label %105

105:                                              ; preds = %102, %48
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %25

108:                                              ; preds = %25
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @tszmalloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @open(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
