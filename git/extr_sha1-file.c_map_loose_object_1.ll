; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_map_loose_object_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_map_loose_object_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"object file %s is empty\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.repository*, i8*, %struct.object_id*, i64*)* @map_loose_object_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @map_loose_object_1(%struct.repository* %0, i8* %1, %struct.object_id* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @git_open(i8* %16)
  store i32 %17, i32* %11, align 4
  br label %22

18:                                               ; preds = %4
  %19 = load %struct.repository*, %struct.repository** %6, align 8
  %20 = load %struct.object_id*, %struct.object_id** %8, align 8
  %21 = call i32 @open_loose_object(%struct.repository* %19, %struct.object_id* %20, i8** %7)
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %18, %15
  store i8* null, i8** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @fstat(i32 %26, %struct.stat* %12)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @xsize_t(i32 %31)
  %33 = load i64*, i64** %9, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @error(i32 %38, i8* %39)
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @close(i32 %41)
  store i8* null, i8** %5, align 8
  br label %55

43:                                               ; preds = %29
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @PROT_READ, align 4
  %47 = load i32, i32* @MAP_PRIVATE, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i8* @xmmap(i32* null, i64 %45, i32 %46, i32 %47, i32 %48, i32 0)
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %43, %25
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @close(i32 %51)
  br label %53

53:                                               ; preds = %50, %22
  %54 = load i8*, i8** %10, align 8
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %53, %37
  %56 = load i8*, i8** %5, align 8
  ret i8* %56
}

declare dso_local i32 @git_open(i8*) #1

declare dso_local i32 @open_loose_object(%struct.repository*, %struct.object_id*, i8**) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @xsize_t(i32) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @xmmap(i32*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
