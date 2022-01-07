; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_start_binlog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_start_binlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i32, i32, i32, i8*, i8*, i32, i32 }

@LEV_START = common dso_local global i32 0, align 4
@split_mod = common dso_local global i32 0, align 4
@split_rem = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_binlog(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_start*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = add nsw i32 %12, 1
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ %13, %10 ], [ 0, %14 ]
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 3
  %19 = and i32 %18, -4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %15
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 36, %25
  %27 = trunc i64 %26 to i32
  %28 = call %struct.lev_start* @write_alloc(i32 %27)
  store %struct.lev_start* %28, %struct.lev_start** %7, align 8
  %29 = load i32, i32* @LEV_START, align 4
  %30 = load %struct.lev_start*, %struct.lev_start** %7, align 8
  %31 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.lev_start*, %struct.lev_start** %7, align 8
  %34 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.lev_start*, %struct.lev_start** %7, align 8
  %37 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @split_mod, align 4
  %39 = load %struct.lev_start*, %struct.lev_start** %7, align 8
  %40 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** @split_rem, align 8
  %42 = load %struct.lev_start*, %struct.lev_start** %7, align 8
  %43 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @split_rem, align 8
  %45 = getelementptr i8, i8* %44, i64 1
  %46 = load %struct.lev_start*, %struct.lev_start** %7, align 8
  %47 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %23
  %51 = load %struct.lev_start*, %struct.lev_start** %7, align 8
  %52 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @memcpy(i32 %53, i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %23
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.lev_start* @write_alloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
