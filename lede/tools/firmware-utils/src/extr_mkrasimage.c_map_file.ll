; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrasimage.c_map_file.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrasimage.c_map_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i32, i32 }
%struct.stat = type { i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error while opening file %s.\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error getting file size for %s.\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Error mapping file %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @map_file(%struct.file_info* %0) #0 {
  %2 = alloca %struct.file_info*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  store %struct.file_info* %0, %struct.file_info** %2, align 8
  %5 = bitcast %struct.stat* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  %6 = load %struct.file_info*, %struct.file_info** %2, align 8
  %7 = getelementptr inbounds %struct.file_info, %struct.file_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i32 %8, i32 %9, i32 384)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.file_info*, %struct.file_info** %2, align 8
  %15 = getelementptr inbounds %struct.file_info, %struct.file_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  %19 = call i32 @exit(i32 %18) #4
  unreachable

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @fstat(i32 %21, %struct.stat* %3)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.file_info*, %struct.file_info** %2, align 8
  %26 = getelementptr inbounds %struct.file_info, %struct.file_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = call i32 @exit(i32 %29) #4
  unreachable

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.file_info*, %struct.file_info** %2, align 8
  %35 = getelementptr inbounds %struct.file_info, %struct.file_info* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.file_info*, %struct.file_info** %2, align 8
  %37 = getelementptr inbounds %struct.file_info, %struct.file_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PROT_READ, align 4
  %40 = load i32, i32* @MAP_SHARED, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @mmap(i32 0, i32 %38, i32 %39, i32 %40, i32 %41, i32 0)
  %43 = load %struct.file_info*, %struct.file_info** %2, align 8
  %44 = getelementptr inbounds %struct.file_info, %struct.file_info* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.file_info*, %struct.file_info** %2, align 8
  %46 = getelementptr inbounds %struct.file_info, %struct.file_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAP_FAILED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %31
  %51 = load %struct.file_info*, %struct.file_info** %2, align 8
  %52 = getelementptr inbounds %struct.file_info, %struct.file_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  %56 = call i32 @exit(i32 %55) #4
  unreachable

57:                                               ; preds = %31
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @close(i32 %58)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @open(i32, i32, i32) #2

declare dso_local i32 @ERR(i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @mmap(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
