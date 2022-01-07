; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_fill_line_ends.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_fill_line_ends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.diff_filespec = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Cannot read blob %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.diff_filespec*, i64*, i64**)* @fill_line_ends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_line_ends(%struct.repository* %0, %struct.diff_filespec* %1, i64* %2, i64** %3) #0 {
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.diff_filespec*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64** %3, i64*** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 50, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64* null, i64** %12, align 8
  store i8* null, i8** %13, align 8
  %14 = load %struct.repository*, %struct.repository** %5, align 8
  %15 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %16 = call i64 @diff_populate_filespec(%struct.repository* %14, %struct.diff_filespec* %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %20 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %19, i32 0, i32 2
  %21 = call i32 @oid_to_hex(i32* %20)
  %22 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %4
  %24 = load i64*, i64** %12, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @ALLOC_ARRAY(i64* %24, i32 %25)
  %27 = load i64*, i64** %12, align 8
  %28 = load i64, i64* %11, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %11, align 8
  %30 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 0, i64* %30, align 8
  %31 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %32 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %13, align 8
  br label %34

34:                                               ; preds = %67, %23
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %37 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %34
  %41 = load i8*, i8** %13, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %51 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %48, %40
  %56 = load i64*, i64** %12, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add nsw i64 %57, 1
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @ALLOC_GROW(i64* %56, i64 %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64*, i64** %12, align 8
  %64 = load i64, i64* %11, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %11, align 8
  %66 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %62, i64* %66, align 8
  br label %67

67:                                               ; preds = %55, %48
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %34

70:                                               ; preds = %34
  %71 = load i64*, i64** %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @REALLOC_ARRAY(i64* %71, i64 %72)
  %74 = load i64, i64* %11, align 8
  %75 = sub nsw i64 %74, 1
  %76 = load i64*, i64** %7, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i64*, i64** %12, align 8
  %78 = load i64**, i64*** %8, align 8
  store i64* %77, i64** %78, align 8
  ret void
}

declare dso_local i64 @diff_populate_filespec(%struct.repository*, %struct.diff_filespec*, i32) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @ALLOC_ARRAY(i64*, i32) #1

declare dso_local i32 @ALLOC_GROW(i64*, i64, i32) #1

declare dso_local i32 @REALLOC_ARRAY(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
