; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_indexer.c_parse_header.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_indexer.c_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_header = type { i64, i32 }
%struct.git_pack_file = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GIT_PROT_READ = common dso_local global i32 0, align 4
@GIT_MAP_SHARED = common dso_local global i32 0, align 4
@PACK_SIGNATURE = common dso_local global i32 0, align 4
@GIT_ERROR_INDEXER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"wrong pack signature\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"wrong pack version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.git_pack_header*, %struct.git_pack_file*)* @parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_header(%struct.git_pack_header* %0, %struct.git_pack_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.git_pack_header*, align 8
  %5 = alloca %struct.git_pack_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  store %struct.git_pack_header* %0, %struct.git_pack_header** %4, align 8
  store %struct.git_pack_file* %1, %struct.git_pack_file** %5, align 8
  %8 = load i32, i32* @GIT_PROT_READ, align 4
  %9 = load i32, i32* @GIT_MAP_SHARED, align 4
  %10 = load %struct.git_pack_file*, %struct.git_pack_file** %5, align 8
  %11 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @p_mmap(%struct.TYPE_6__* %7, i32 16, i32 %8, i32 %9, i32 %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load %struct.git_pack_header*, %struct.git_pack_header** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(%struct.git_pack_header* %19, i32 %21, i32 16)
  %23 = call i32 @p_munmap(%struct.TYPE_6__* %7)
  %24 = load %struct.git_pack_header*, %struct.git_pack_header** %4, align 8
  %25 = getelementptr inbounds %struct.git_pack_header, %struct.git_pack_header* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @PACK_SIGNATURE, align 4
  %28 = call i64 @ntohl(i32 %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i32, i32* @GIT_ERROR_INDEXER, align 4
  %32 = call i32 @git_error_set(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %43

33:                                               ; preds = %18
  %34 = load %struct.git_pack_header*, %struct.git_pack_header** %4, align 8
  %35 = getelementptr inbounds %struct.git_pack_header, %struct.git_pack_header* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pack_version_ok(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @GIT_ERROR_INDEXER, align 4
  %41 = call i32 @git_error_set(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %43

42:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %39, %30, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @p_mmap(%struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.git_pack_header*, i32, i32) #1

declare dso_local i32 @p_munmap(%struct.TYPE_6__*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @pack_version_ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
