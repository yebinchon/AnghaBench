; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c__dirent_loose_load.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c__dirent_loose_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c".lock\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_9__*)* @_dirent_loose_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dirent_loose_load(i8* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @git__suffixcmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @git_path_isdir(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = call i32 @git_path_direach(%struct.TYPE_9__* %24, i32 %27, i32 (i8*, %struct.TYPE_9__*)* @_dirent_loose_load, %struct.TYPE_8__* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @GIT_ENOTFOUND, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = call i32 (...) @git_error_clear()
  store i32 0, i32* %3, align 4
  br label %50

35:                                               ; preds = %23
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %50

37:                                               ; preds = %17
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strlen(i32 %43)
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  store i8* %46, i8** %7, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @loose_lookup_to_packfile(%struct.TYPE_8__* %47, i8* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %37, %35, %33, %16
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @git__suffixcmp(i8*, i8*) #1

declare dso_local i64 @git_path_isdir(i8*) #1

declare dso_local i32 @git_path_direach(%struct.TYPE_9__*, i32, i32 (i8*, %struct.TYPE_9__*)*, %struct.TYPE_8__*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @loose_lookup_to_packfile(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
