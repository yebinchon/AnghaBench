; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_index_get_num.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_index_get_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metafile = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.index_entry = type { i32 }

@metafile_number = common dso_local global i32 0, align 4
@metafiles = common dso_local global %struct.metafile* null, align 8
@index_entry_not_found = common dso_local global %struct.index_entry zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.index_entry* @index_get_num(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.index_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.metafile*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %28, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @metafile_number, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.metafile, %struct.metafile* %16, i64 %18
  %20 = getelementptr inbounds %struct.metafile, %struct.metafile* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %15, %23
  %25 = icmp sge i32 %14, %24
  br label %26

26:                                               ; preds = %13, %9
  %27 = phi i1 [ false, %9 ], [ %25, %13 ]
  br i1 %27, label %28, label %41

28:                                               ; preds = %26
  %29 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.metafile, %struct.metafile* %29, i64 %31
  %33 = getelementptr inbounds %struct.metafile, %struct.metafile* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %9

41:                                               ; preds = %26
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @metafile_number, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store %struct.index_entry* @index_entry_not_found, %struct.index_entry** %3, align 8
  br label %79

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @metafile_load(i32 %47)
  %49 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.metafile, %struct.metafile* %49, i64 %51
  store %struct.metafile* %52, %struct.metafile** %8, align 8
  %53 = load %struct.metafile*, %struct.metafile** %8, align 8
  %54 = getelementptr inbounds %struct.metafile, %struct.metafile* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %57, %58
  %60 = icmp sge i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load %struct.metafile*, %struct.metafile** %8, align 8
  %67 = getelementptr inbounds %struct.metafile, %struct.metafile* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %65, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call %struct.index_entry* @metafile_get_entry(i32 %74, i32 %77)
  store %struct.index_entry* %78, %struct.index_entry** %3, align 8
  br label %79

79:                                               ; preds = %46, %45
  %80 = load %struct.index_entry*, %struct.index_entry** %3, align 8
  ret %struct.index_entry* %80
}

declare dso_local i32 @metafile_load(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.index_entry* @metafile_get_entry(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
