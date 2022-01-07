; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_kfs_get_tag.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_kfs_get_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i32, i64 }
%struct.lev_tag = type { i64, i32 }

@LEV_START = common dso_local global i64 0, align 8
@LEV_TAG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfs_get_tag(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lev_start*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lev_tag*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.lev_start*
  store %struct.lev_start* %12, %struct.lev_start** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 24
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = load %struct.lev_start*, %struct.lev_start** %8, align 8
  %17 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.lev_start*, %struct.lev_start** %8, align 8
  %22 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 4096
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15, %3
  store i32 -2, i32* %4, align 4
  br label %70

26:                                               ; preds = %20
  %27 = load %struct.lev_start*, %struct.lev_start** %8, align 8
  %28 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LEV_START, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %70

33:                                               ; preds = %26
  %34 = load %struct.lev_start*, %struct.lev_start** %8, align 8
  %35 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 3
  %38 = and i32 %37, -4
  %39 = add nsw i32 24, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 -2, i32* %4, align 4
  br label %70

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = bitcast i8* %52 to %struct.lev_tag*
  store %struct.lev_tag* %53, %struct.lev_tag** %10, align 8
  %54 = load %struct.lev_tag*, %struct.lev_tag** %10, align 8
  %55 = getelementptr inbounds %struct.lev_tag, %struct.lev_tag* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LEV_TAG, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %70

60:                                               ; preds = %44
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 20
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 -2, i32* %4, align 4
  br label %70

64:                                               ; preds = %60
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.lev_tag*, %struct.lev_tag** %10, align 8
  %67 = getelementptr inbounds %struct.lev_tag, %struct.lev_tag* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @memcpy(i8* %65, i32 %68, i32 16)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %63, %59, %43, %32, %25
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
