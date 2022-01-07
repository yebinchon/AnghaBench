; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_sort_bookmarks.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_sort_bookmarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bookmark = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bookmark*, i32)* @sort_bookmarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_bookmarks(%struct.bookmark* %0, i32 %1) #0 {
  %3 = alloca %struct.bookmark*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bookmark, align 4
  %8 = alloca %struct.bookmark, align 4
  store %struct.bookmark* %0, %struct.bookmark** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %87

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.bookmark*, %struct.bookmark** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bookmark, %struct.bookmark* %14, i64 %17
  %19 = bitcast %struct.bookmark* %7 to i8*
  %20 = bitcast %struct.bookmark* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  br label %21

21:                                               ; preds = %73, %12
  br label %22

22:                                               ; preds = %29, %21
  %23 = load %struct.bookmark*, %struct.bookmark** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bookmark, %struct.bookmark* %23, i64 %25
  %27 = call i64 @cmp_bookmark(%struct.bookmark* %26, %struct.bookmark* %7)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %22

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %40, %32
  %34 = load %struct.bookmark*, %struct.bookmark** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bookmark, %struct.bookmark* %34, i64 %36
  %38 = call i64 @cmp_bookmark(%struct.bookmark* %37, %struct.bookmark* %7)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %6, align 4
  br label %33

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %43
  %48 = load %struct.bookmark*, %struct.bookmark** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.bookmark, %struct.bookmark* %48, i64 %50
  %52 = bitcast %struct.bookmark* %8 to i8*
  %53 = bitcast %struct.bookmark* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.bookmark*, %struct.bookmark** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds %struct.bookmark, %struct.bookmark* %54, i64 %57
  %59 = load %struct.bookmark*, %struct.bookmark** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.bookmark, %struct.bookmark* %59, i64 %61
  %63 = bitcast %struct.bookmark* %58 to i8*
  %64 = bitcast %struct.bookmark* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 4, i1 false)
  %65 = load %struct.bookmark*, %struct.bookmark** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %6, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.bookmark, %struct.bookmark* %65, i64 %68
  %70 = bitcast %struct.bookmark* %69 to i8*
  %71 = bitcast %struct.bookmark* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  br label %72

72:                                               ; preds = %47, %43
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %21, label %77

77:                                               ; preds = %73
  %78 = load %struct.bookmark*, %struct.bookmark** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.bookmark, %struct.bookmark* %78, i64 %80
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %82, %83
  call void @sort_bookmarks(%struct.bookmark* %81, i32 %84)
  %85 = load %struct.bookmark*, %struct.bookmark** %3, align 8
  %86 = load i32, i32* %6, align 4
  call void @sort_bookmarks(%struct.bookmark* %85, i32 %86)
  br label %87

87:                                               ; preds = %77, %11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @cmp_bookmark(%struct.bookmark*, %struct.bookmark*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
