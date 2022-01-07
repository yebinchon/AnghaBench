; ModuleID = '/home/carl/AnghaBench/git/extr_csum-file.c_hashwrite.c'
source_filename = "/home/carl/AnghaBench/git/extr_csum-file.c_hashwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i8*, i32)* }
%struct.hashfile = type { i32, i8*, i32, i32, i64 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashwrite(%struct.hashfile* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hashfile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.hashfile* %0, %struct.hashfile** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %11

11:                                               ; preds = %92, %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %96

14:                                               ; preds = %11
  %15 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %16 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = sub i64 8, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %8, align 4
  br label %29

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %9, align 4
  %31 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %32 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %37 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @crc32(i32 %38, i8* %39, i32 %40)
  %42 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %43 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %35, %29
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = icmp eq i64 %46, 8
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  store i8* %49, i8** %10, align 8
  br label %63

50:                                               ; preds = %44
  %51 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %52 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr i8, i8* %53, i64 %55
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @memcpy(i8* %56, i8* %57, i32 %58)
  %60 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %61 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %10, align 8
  br label %63

63:                                               ; preds = %50, %48
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %6, align 4
  %66 = sub i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8* %73, i8** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sub i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %63
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %81, align 8
  %83 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %84 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %83, i32 0, i32 2
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 %82(i32* %84, i8* %85, i32 %86)
  %88 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @flush(%struct.hashfile* %88, i8* %89, i32 %90)
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %79, %63
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %95 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %11

96:                                               ; preds = %11
  ret void
}

declare dso_local i32 @crc32(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @flush(%struct.hashfile*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
