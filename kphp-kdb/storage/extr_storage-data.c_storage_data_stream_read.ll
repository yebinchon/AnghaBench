; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_storage_data_stream_read.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_storage_data_stream_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storage_data_stream = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [38 x i8] c"storage_data_stream_read (len: %lld)\0A\00", align 1
@STORAGE_ERR_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.storage_data_stream*, i8*, i64)* @storage_data_stream_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storage_data_stream_read(%struct.storage_data_stream* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.storage_data_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.storage_data_stream* %0, %struct.storage_data_stream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.storage_data_stream*, %struct.storage_data_stream** %5, align 8
  %12 = getelementptr inbounds %struct.storage_data_stream, %struct.storage_data_stream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load %struct.storage_data_stream*, %struct.storage_data_stream** %5, align 8
  %16 = getelementptr inbounds %struct.storage_data_stream, %struct.storage_data_stream* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @STORAGE_ERR_READ, align 4
  store i32 %20, i32* %4, align 4
  br label %56

21:                                               ; preds = %3
  %22 = load %struct.storage_data_stream*, %struct.storage_data_stream** %5, align 8
  %23 = getelementptr inbounds %struct.storage_data_stream, %struct.storage_data_stream* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.storage_data_stream*, %struct.storage_data_stream** %5, align 8
  %28 = getelementptr inbounds %struct.storage_data_stream, %struct.storage_data_stream* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @read(i64 %29, i8* %30, i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @STORAGE_ERR_READ, align 4
  store i32 %36, i32* %4, align 4
  br label %56

37:                                               ; preds = %26
  br label %50

38:                                               ; preds = %21
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.storage_data_stream*, %struct.storage_data_stream** %5, align 8
  %41 = getelementptr inbounds %struct.storage_data_stream, %struct.storage_data_stream* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @memcpy(i8* %39, i64 %42, i64 %43)
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.storage_data_stream*, %struct.storage_data_stream** %5, align 8
  %47 = getelementptr inbounds %struct.storage_data_stream, %struct.storage_data_stream* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %38, %37
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.storage_data_stream*, %struct.storage_data_stream** %5, align 8
  %53 = getelementptr inbounds %struct.storage_data_stream, %struct.storage_data_stream* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %51
  store i64 %55, i64* %53, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %35, %19
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @vkprintf(i32, i8*, i64) #1

declare dso_local i64 @read(i64, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
