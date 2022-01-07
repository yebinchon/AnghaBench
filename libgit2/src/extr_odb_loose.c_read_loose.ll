; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_read_loose.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_read_loose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i64, i32* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GIT_OBJECT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @read_loose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_loose(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %8 = bitcast %struct.TYPE_14__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = icmp ne %struct.TYPE_13__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = icmp ne %struct.TYPE_14__* %12, null
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ false, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = call i64 @git_buf_oom(%struct.TYPE_14__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %54

22:                                               ; preds = %14
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @GIT_OBJECT_INVALID, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @git_futils_readbuffer(%struct.TYPE_14__* %7, i64 %32)
  store i32 %33, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %51

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @is_zlib_compressed_data(i8* %39, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = call i32 @read_loose_packlike(%struct.TYPE_13__* %45, %struct.TYPE_14__* %7)
  store i32 %46, i32* %6, align 4
  br label %50

47:                                               ; preds = %36
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = call i32 @read_loose_standard(%struct.TYPE_13__* %48, %struct.TYPE_14__* %7)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %35
  %52 = call i32 @git_buf_dispose(%struct.TYPE_14__* %7)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_14__*) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_14__*, i64) #2

declare dso_local i32 @is_zlib_compressed_data(i8*, i32) #2

declare dso_local i32 @read_loose_packlike(%struct.TYPE_13__*, %struct.TYPE_14__*) #2

declare dso_local i32 @read_loose_standard(%struct.TYPE_13__*, %struct.TYPE_14__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
