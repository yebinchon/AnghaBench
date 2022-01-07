; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diffstat_add.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diffstat_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diffstat_file = type { i32, i8*, i32* }
%struct.diffstat_t = type { i64, %struct.diffstat_file**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.diffstat_file* (%struct.diffstat_t*, i8*, i8*)* @diffstat_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.diffstat_file* @diffstat_add(%struct.diffstat_t* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.diffstat_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.diffstat_file*, align 8
  store %struct.diffstat_t* %0, %struct.diffstat_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call %struct.diffstat_file* @xcalloc(i32 1, i32 24)
  store %struct.diffstat_file* %8, %struct.diffstat_file** %7, align 8
  %9 = load %struct.diffstat_t*, %struct.diffstat_t** %4, align 8
  %10 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %9, i32 0, i32 1
  %11 = load %struct.diffstat_file**, %struct.diffstat_file*** %10, align 8
  %12 = load %struct.diffstat_t*, %struct.diffstat_t** %4, align 8
  %13 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  %16 = load %struct.diffstat_t*, %struct.diffstat_t** %4, align 8
  %17 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ALLOC_GROW(%struct.diffstat_file** %11, i64 %15, i32 %18)
  %20 = load %struct.diffstat_file*, %struct.diffstat_file** %7, align 8
  %21 = load %struct.diffstat_t*, %struct.diffstat_t** %4, align 8
  %22 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %21, i32 0, i32 1
  %23 = load %struct.diffstat_file**, %struct.diffstat_file*** %22, align 8
  %24 = load %struct.diffstat_t*, %struct.diffstat_t** %4, align 8
  %25 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = getelementptr inbounds %struct.diffstat_file*, %struct.diffstat_file** %23, i64 %26
  store %struct.diffstat_file* %20, %struct.diffstat_file** %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %3
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* @xstrdup(i8* %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.diffstat_file*, %struct.diffstat_file** %7, align 8
  %36 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @xstrdup(i8* %37)
  %39 = load %struct.diffstat_file*, %struct.diffstat_file** %7, align 8
  %40 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.diffstat_file*, %struct.diffstat_file** %7, align 8
  %42 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %50

43:                                               ; preds = %3
  %44 = load %struct.diffstat_file*, %struct.diffstat_file** %7, align 8
  %45 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* @xstrdup(i8* %46)
  %48 = load %struct.diffstat_file*, %struct.diffstat_file** %7, align 8
  %49 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %43, %31
  %51 = load %struct.diffstat_file*, %struct.diffstat_file** %7, align 8
  ret %struct.diffstat_file* %51
}

declare dso_local %struct.diffstat_file* @xcalloc(i32, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.diffstat_file**, i64, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
