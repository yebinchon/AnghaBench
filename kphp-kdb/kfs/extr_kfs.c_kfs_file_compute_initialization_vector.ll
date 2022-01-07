; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_kfs_file_compute_initialization_vector.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_kfs_file_compute_initialization_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfs_file_info = type { i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfs_file_compute_initialization_vector(%struct.kfs_file_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfs_file_info*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  store %struct.kfs_file_info* %0, %struct.kfs_file_info** %3, align 8
  %6 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %7 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = call i32 @assert(%struct.TYPE_4__* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %17 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %36

21:                                               ; preds = %15
  %22 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %23 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @basename(i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %31 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %30, i32 0, i32 0
  %32 = call i64 @compute_iv(%struct.TYPE_4__* %26, i8* %27, i32 %29, i32** %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %36

35:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %34, %20
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i8* @basename(i32) #1

declare dso_local i64 @compute_iv(%struct.TYPE_4__*, i8*, i32, i32**) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
