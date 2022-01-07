; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_flush_one_hunk.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_flush_one_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32*)*, i32 (i8*, i32*)* }
%struct.object_id = type { i8* }

@GIT_MAX_RAWSZ = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_one_hunk(%struct.object_id* %0, i32* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @GIT_MAX_RAWSZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  store i16 0, i16* %7, align 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %14, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 %15(i8* %12, i32* %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (i32*)*, i32 (i32*)** %19, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 %20(i32* %21)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %60, %2
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load %struct.object_id*, %struct.object_id** %3, align 8
  %31 = getelementptr inbounds %struct.object_id, %struct.object_id* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %12, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %37, %42
  %44 = load i16, i16* %7, align 2
  %45 = zext i16 %44 to i32
  %46 = add nsw i32 %45, %43
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %7, align 2
  %48 = load i16, i16* %7, align 2
  %49 = trunc i16 %48 to i8
  %50 = load %struct.object_id*, %struct.object_id** %3, align 8
  %51 = getelementptr inbounds %struct.object_id, %struct.object_id* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 %49, i8* %55, align 1
  %56 = load i16, i16* %7, align 2
  %57 = zext i16 %56 to i32
  %58 = ashr i32 %57, 8
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %7, align 2
  br label %60

60:                                               ; preds = %29
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %23

63:                                               ; preds = %23
  %64 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
