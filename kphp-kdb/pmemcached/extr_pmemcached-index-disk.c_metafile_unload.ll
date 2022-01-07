; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_metafile_unload.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_metafile_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metafile = type { i64, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@MAX_METAFILES = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unloading metafile %d\0A\00", align 1
@metafiles = common dso_local global %struct.metafile* null, align 8
@metafiles_loaded = common dso_local global i32 0, align 4
@allocated_metafile_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @metafile_unload(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.metafile*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MAX_METAFILES, align 4
  %10 = icmp slt i32 %8, %9
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ false, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* @verbosity, align 4
  %16 = icmp sge i32 %15, 3
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %11
  %22 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.metafile, %struct.metafile* %22, i64 %24
  store %struct.metafile* %25, %struct.metafile** %4, align 8
  %26 = load %struct.metafile*, %struct.metafile** %4, align 8
  %27 = getelementptr inbounds %struct.metafile, %struct.metafile* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %64

31:                                               ; preds = %21
  %32 = load %struct.metafile*, %struct.metafile** %4, align 8
  %33 = getelementptr inbounds %struct.metafile, %struct.metafile* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %64

37:                                               ; preds = %31
  %38 = load %struct.metafile*, %struct.metafile** %4, align 8
  %39 = getelementptr inbounds %struct.metafile, %struct.metafile* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.metafile*, %struct.metafile** %4, align 8
  %42 = getelementptr inbounds %struct.metafile, %struct.metafile* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @zzfree(i64 %40, i64 %45)
  %47 = load %struct.metafile*, %struct.metafile** %4, align 8
  %48 = getelementptr inbounds %struct.metafile, %struct.metafile* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.metafile*, %struct.metafile** %4, align 8
  %50 = getelementptr inbounds %struct.metafile, %struct.metafile* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @metafiles_loaded, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* @metafiles_loaded, align 4
  %53 = load %struct.metafile*, %struct.metafile** %4, align 8
  %54 = getelementptr inbounds %struct.metafile, %struct.metafile* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @allocated_metafile_bytes, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* @allocated_metafile_bytes, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @del_use(i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %37, %36, %30
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @zzfree(i64, i64) #1

declare dso_local i32 @del_use(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
