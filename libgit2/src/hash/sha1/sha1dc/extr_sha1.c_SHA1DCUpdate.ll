; ModuleID = '/home/carl/AnghaBench/libgit2/src/hash/sha1/sha1dc/extr_sha1.c_SHA1DCUpdate.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/hash/sha1/sha1dc/extr_sha1.c_SHA1DCUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA1DCUpdate(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %100

12:                                               ; preds = %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 63
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub i32 64, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %12
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp uge i64 %22, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = call i32 @memcpy(i64 %37, i8* %38, i64 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = call i32 @sha1_process(%struct.TYPE_4__* %42, i32* %46)
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* %6, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %26, %21, %12
  br label %57

57:                                               ; preds = %60, %56
  %58 = load i64, i64* %6, align 8
  %59 = icmp uge i64 %58, 64
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 64
  store i32 %64, i32* %62, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @memcpy(i64 %67, i8* %68, i64 64)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = call i32 @sha1_process(%struct.TYPE_4__* %70, i32* %74)
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 64
  store i8* %77, i8** %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = sub i64 %78, 64
  store i64 %79, i64* %6, align 8
  br label %57

80:                                               ; preds = %57
  %81 = load i64, i64* %6, align 8
  %82 = icmp ugt i64 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = add i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = load i8*, i8** %5, align 8
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @memcpy(i64 %96, i8* %97, i64 %98)
  br label %100

100:                                              ; preds = %11, %83, %80
  ret void
}

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @sha1_process(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
