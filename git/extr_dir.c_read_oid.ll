; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_read_oid.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_read_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.read_data = type { i64, i64, %struct.untracked_cache_dir** }
%struct.untracked_cache_dir = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @read_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_oid(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.read_data*, align 8
  %6 = alloca %struct.untracked_cache_dir*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.read_data*
  store %struct.read_data* %8, %struct.read_data** %5, align 8
  %9 = load %struct.read_data*, %struct.read_data** %5, align 8
  %10 = getelementptr inbounds %struct.read_data, %struct.read_data* %9, i32 0, i32 2
  %11 = load %struct.untracked_cache_dir**, %struct.untracked_cache_dir*** %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %11, i64 %12
  %14 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %13, align 8
  store %struct.untracked_cache_dir* %14, %struct.untracked_cache_dir** %6, align 8
  %15 = load %struct.read_data*, %struct.read_data** %5, align 8
  %16 = getelementptr inbounds %struct.read_data, %struct.read_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load %struct.read_data*, %struct.read_data** %5, align 8
  %23 = getelementptr inbounds %struct.read_data, %struct.read_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.read_data*, %struct.read_data** %5, align 8
  %28 = getelementptr inbounds %struct.read_data, %struct.read_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load %struct.read_data*, %struct.read_data** %5, align 8
  %32 = getelementptr inbounds %struct.read_data, %struct.read_data* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %49

33:                                               ; preds = %2
  %34 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %6, align 8
  %35 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.read_data*, %struct.read_data** %5, align 8
  %39 = getelementptr inbounds %struct.read_data, %struct.read_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @hashcpy(i32 %37, i64 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.read_data*, %struct.read_data** %5, align 8
  %46 = getelementptr inbounds %struct.read_data, %struct.read_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %33, %26
  ret void
}

declare dso_local i32 @hashcpy(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
