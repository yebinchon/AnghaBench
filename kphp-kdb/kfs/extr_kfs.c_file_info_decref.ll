; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_file_info_decref.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_file_info_decref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfs_file_info = type { i64, %struct.kfs_file_info*, %struct.kfs_file_info*, %struct.kfs_file_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kfs_file_info*)* @file_info_decref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_info_decref(%struct.kfs_file_info* %0) #0 {
  %2 = alloca %struct.kfs_file_info*, align 8
  store %struct.kfs_file_info* %0, %struct.kfs_file_info** %2, align 8
  %3 = load %struct.kfs_file_info*, %struct.kfs_file_info** %2, align 8
  %4 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, -1
  store i64 %6, i64* %4, align 8
  %7 = load %struct.kfs_file_info*, %struct.kfs_file_info** %2, align 8
  %8 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.kfs_file_info*, %struct.kfs_file_info** %2, align 8
  %14 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.kfs_file_info*, %struct.kfs_file_info** %2, align 8
  %20 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %19, i32 0, i32 3
  %21 = load %struct.kfs_file_info*, %struct.kfs_file_info** %20, align 8
  %22 = icmp ne %struct.kfs_file_info* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.kfs_file_info*, %struct.kfs_file_info** %2, align 8
  %25 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %24, i32 0, i32 3
  %26 = load %struct.kfs_file_info*, %struct.kfs_file_info** %25, align 8
  %27 = call i32 @free(%struct.kfs_file_info* %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.kfs_file_info*, %struct.kfs_file_info** %2, align 8
  %30 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %29, i32 0, i32 2
  %31 = load %struct.kfs_file_info*, %struct.kfs_file_info** %30, align 8
  %32 = icmp ne %struct.kfs_file_info* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.kfs_file_info*, %struct.kfs_file_info** %2, align 8
  %35 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %34, i32 0, i32 2
  %36 = load %struct.kfs_file_info*, %struct.kfs_file_info** %35, align 8
  %37 = call i32 @free(%struct.kfs_file_info* %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.kfs_file_info*, %struct.kfs_file_info** %2, align 8
  %40 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %39, i32 0, i32 1
  %41 = load %struct.kfs_file_info*, %struct.kfs_file_info** %40, align 8
  %42 = icmp ne %struct.kfs_file_info* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.kfs_file_info*, %struct.kfs_file_info** %2, align 8
  %45 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %44, i32 0, i32 1
  %46 = load %struct.kfs_file_info*, %struct.kfs_file_info** %45, align 8
  %47 = call i32 @free(%struct.kfs_file_info* %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.kfs_file_info*, %struct.kfs_file_info** %2, align 8
  %50 = call i32 @free(%struct.kfs_file_info* %49)
  br label %51

51:                                               ; preds = %48, %17
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(%struct.kfs_file_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
