; ModuleID = '/home/carl/AnghaBench/git/extr_name-hash.c_lazy_name_thread_proc.c'
source_filename = "/home/carl/AnghaBench/git/extr_name-hash.c_lazy_name_thread_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lazy_name_thread_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CE_HASHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @lazy_name_thread_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lazy_name_thread_proc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lazy_name_thread_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_entry*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.lazy_name_thread_data*
  store %struct.lazy_name_thread_data* %7, %struct.lazy_name_thread_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %49, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.lazy_name_thread_data*, %struct.lazy_name_thread_data** %3, align 8
  %11 = getelementptr inbounds %struct.lazy_name_thread_data, %struct.lazy_name_thread_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %8
  %17 = load %struct.lazy_name_thread_data*, %struct.lazy_name_thread_data** %3, align 8
  %18 = getelementptr inbounds %struct.lazy_name_thread_data, %struct.lazy_name_thread_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load %struct.cache_entry**, %struct.cache_entry*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %21, i64 %23
  %25 = load %struct.cache_entry*, %struct.cache_entry** %24, align 8
  store %struct.cache_entry* %25, %struct.cache_entry** %5, align 8
  %26 = load i32, i32* @CE_HASHED, align 4
  %27 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %28 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %32 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %31, i32 0, i32 0
  %33 = load %struct.lazy_name_thread_data*, %struct.lazy_name_thread_data** %3, align 8
  %34 = getelementptr inbounds %struct.lazy_name_thread_data, %struct.lazy_name_thread_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hashmap_entry_init(i32* %32, i32 %40)
  %42 = load %struct.lazy_name_thread_data*, %struct.lazy_name_thread_data** %3, align 8
  %43 = getelementptr inbounds %struct.lazy_name_thread_data, %struct.lazy_name_thread_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %47 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %46, i32 0, i32 0
  %48 = call i32 @hashmap_add(i32* %45, i32* %47)
  br label %49

49:                                               ; preds = %16
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %8

52:                                               ; preds = %8
  ret i8* null
}

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @hashmap_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
