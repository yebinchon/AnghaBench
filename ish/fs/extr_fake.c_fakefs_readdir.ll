; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_readdir.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.fd*, %struct.dir_entry*)* }
%struct.fd = type { i32, i32* }
%struct.dir_entry = type { i8*, i32 }

@fakefs_fdops = common dso_local global i32 0, align 4
@realfs_fdops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, %struct.dir_entry*)* @fakefs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fakefs_readdir(%struct.fd* %0, %struct.dir_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd*, align 8
  %5 = alloca %struct.dir_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %4, align 8
  store %struct.dir_entry* %1, %struct.dir_entry** %5, align 8
  %10 = load %struct.fd*, %struct.fd** %4, align 8
  %11 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, @fakefs_fdops
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  br label %16

16:                                               ; preds = %79, %2
  %17 = load i32 (%struct.fd*, %struct.dir_entry*)*, i32 (%struct.fd*, %struct.dir_entry*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @realfs_fdops, i32 0, i32 0), align 8
  %18 = load %struct.fd*, %struct.fd** %4, align 8
  %19 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %20 = call i32 %17(%struct.fd* %18, %struct.dir_entry* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %82

25:                                               ; preds = %16
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %7, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %8, align 8
  %31 = load %struct.fd*, %struct.fd** %4, align 8
  %32 = call i32 @realfs_getpath(%struct.fd* %31, i8* %30)
  %33 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %34 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i8* @strrchr(i8* %30, i8 signext 47)
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %38
  br label %57

44:                                               ; preds = %25
  %45 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %46 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = call i32 @strcat(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %53 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcat(i8* %30, i8* %54)
  br label %56

56:                                               ; preds = %50, %44
  br label %57

57:                                               ; preds = %56, %43
  %58 = load %struct.fd*, %struct.fd** %4, align 8
  %59 = getelementptr inbounds %struct.fd, %struct.fd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @db_begin(i32 %60)
  %62 = load %struct.fd*, %struct.fd** %4, align 8
  %63 = getelementptr inbounds %struct.fd, %struct.fd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @path_get_inode(i32 %64, i8* %30)
  %66 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %67 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.fd*, %struct.fd** %4, align 8
  %69 = getelementptr inbounds %struct.fd, %struct.fd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @db_commit(i32 %70)
  %72 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %73 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %57
  store i32 2, i32* %9, align 4
  br label %79

77:                                               ; preds = %57
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %9, align 4
  switch i32 %81, label %84 [
    i32 2, label %16
    i32 1, label %82
  ]

82:                                               ; preds = %79, %23
  %83 = load i32, i32* %3, align 4
  ret i32 %83

84:                                               ; preds = %79
  unreachable
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @realfs_getpath(%struct.fd*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @db_begin(i32) #1

declare dso_local i32 @path_get_inode(i32, i8*) #1

declare dso_local i32 @db_commit(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
