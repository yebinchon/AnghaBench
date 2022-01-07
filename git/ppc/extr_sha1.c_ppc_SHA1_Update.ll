; ModuleID = '/home/carl/AnghaBench/git/ppc/extr_sha1.c_ppc_SHA1_Update.c'
source_filename = "/home/carl/AnghaBench/git/ppc/extr_sha1.c_ppc_SHA1_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppc_SHA1_Update(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = trunc i64 %10 to i32
  %12 = shl i32 %11, 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, %12
  store i32 %16, i32* %14, align 8
  br label %17

17:                                               ; preds = %83, %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %90

20:                                               ; preds = %17
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %26, 64
  br i1 %27, label %28, label %72

28:                                               ; preds = %25, %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 64, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %37, %28
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @memcpy(i8* %48, i8* %49, i64 %50)
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, %52
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = icmp eq i32 %58, 64
  br i1 %59, label %60, label %71

60:                                               ; preds = %39
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @ppc_sha1_core(i32 %63, i8* %67, i64 1)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %60, %39
  br label %83

72:                                               ; preds = %25
  %73 = load i64, i64* %6, align 8
  %74 = lshr i64 %73, 6
  store i64 %74, i64* %7, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @ppc_sha1_core(i32 %77, i8* %78, i64 %79)
  %81 = load i64, i64* %7, align 8
  %82 = shl i64 %81, 6
  store i64 %82, i64* %7, align 8
  br label %83

83:                                               ; preds = %72, %71
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %6, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 %87
  store i8* %89, i8** %8, align 8
  br label %17

90:                                               ; preds = %17
  ret i32 0
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ppc_sha1_core(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
