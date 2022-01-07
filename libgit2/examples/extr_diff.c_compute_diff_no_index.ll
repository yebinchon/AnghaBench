; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_diff.c_compute_diff_no_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_diff.c_compute_diff_no_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opts = type { i32, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"two files should be provided as arguments\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"file cannot be read\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"patch buffers\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"patch to buf\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"diff from patch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.opts*)* @compute_diff_no_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_diff_no_index(i32** %0, %struct.opts* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.opts* %1, %struct.opts** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %9 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  %10 = load %struct.opts*, %struct.opts** %4, align 8
  %11 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.opts*, %struct.opts** %4, align 8
  %16 = getelementptr inbounds %struct.opts, %struct.opts* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %2
  %20 = call i32 @usage(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %21

21:                                               ; preds = %19, %14
  %22 = load %struct.opts*, %struct.opts** %4, align 8
  %23 = getelementptr inbounds %struct.opts, %struct.opts* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i8* @read_file(i32* %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.opts*, %struct.opts** %4, align 8
  %30 = getelementptr inbounds %struct.opts, %struct.opts* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @usage(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  br label %33

33:                                               ; preds = %28, %21
  %34 = load %struct.opts*, %struct.opts** %4, align 8
  %35 = getelementptr inbounds %struct.opts, %struct.opts* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i8* @read_file(i32* %36)
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.opts*, %struct.opts** %4, align 8
  %42 = getelementptr inbounds %struct.opts, %struct.opts* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @usage(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %43)
  br label %45

45:                                               ; preds = %40, %33
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = load %struct.opts*, %struct.opts** %4, align 8
  %50 = getelementptr inbounds %struct.opts, %struct.opts* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = load %struct.opts*, %struct.opts** %4, align 8
  %56 = getelementptr inbounds %struct.opts, %struct.opts* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.opts*, %struct.opts** %4, align 8
  %59 = getelementptr inbounds %struct.opts, %struct.opts* %58, i32 0, i32 0
  %60 = call i32 @git_patch_from_buffers(i32** %5, i8* %46, i32 %48, i32* %51, i8* %52, i32 %54, i32* %57, i32* %59)
  %61 = call i32 @check_lg2(i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @git_patch_to_buf(%struct.TYPE_4__* %8, i32* %62)
  %64 = call i32 @check_lg2(i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %65 = load i32**, i32*** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @git_diff_from_buffer(i32** %65, i32 %67, i32 %69)
  %71 = call i32 @check_lg2(i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @git_patch_free(i32* %72)
  %74 = call i32 @git_buf_dispose(%struct.TYPE_4__* %8)
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @free(i8* %77)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @usage(i8*, i32*) #2

declare dso_local i8* @read_file(i32*) #2

declare dso_local i32 @check_lg2(i32, i8*, i32*) #2

declare dso_local i32 @git_patch_from_buffers(i32**, i8*, i32, i32*, i8*, i32, i32*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_patch_to_buf(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @git_diff_from_buffer(i32**, i32, i32) #2

declare dso_local i32 @git_patch_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_4__*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
