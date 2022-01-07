; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_load_cache_entries_thread.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_load_cache_entries_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.load_cache_entries_thread_data = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @load_cache_entries_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @load_cache_entries_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.load_cache_entries_thread_data*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.load_cache_entries_thread_data*
  store %struct.load_cache_entries_thread_data* %6, %struct.load_cache_entries_thread_data** %3, align 8
  %7 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %3, align 8
  %8 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %76, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %3, align 8
  %13 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %3, align 8
  %16 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = icmp slt i32 %11, %18
  br i1 %19, label %20, label %79

20:                                               ; preds = %10
  %21 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %3, align 8
  %22 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %3, align 8
  %25 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %3, align 8
  %28 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %3, align 8
  %31 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %3, align 8
  %41 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %3, align 8
  %44 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @load_cache_entry_block(i32 %23, i32 %26, i32 %29, i64 %39, i32 %42, i32 %52, i32* null)
  %54 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %3, align 8
  %55 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  %60 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %3, align 8
  %61 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.load_cache_entries_thread_data*, %struct.load_cache_entries_thread_data** %3, align 8
  %71 = getelementptr inbounds %struct.load_cache_entries_thread_data, %struct.load_cache_entries_thread_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %69
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 8
  br label %76

76:                                               ; preds = %20
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %10

79:                                               ; preds = %10
  ret i8* null
}

declare dso_local i64 @load_cache_entry_block(i32, i32, i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
