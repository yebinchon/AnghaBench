; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_profio.c_afunction.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_profio.c_afunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func = type { i8*, %struct.TYPE_3__, %struct.func*, i64 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.file = type { %struct.func* }

@PERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.func* (i8*, i8*, i32, i32, i32)* @afunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.func* @afunction(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.func*, align 8
  %13 = alloca %struct.func**, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.file* @findfile(i8* %14)
  store %struct.file* %15, %struct.file** %11, align 8
  %16 = load %struct.file*, %struct.file** %11, align 8
  %17 = call i32 @assert(%struct.file* %16)
  %18 = load %struct.file*, %struct.file** %11, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.func*, %struct.func** %19, align 8
  store %struct.func* %20, %struct.func** %12, align 8
  br label %21

21:                                               ; preds = %33, %5
  %22 = load %struct.func*, %struct.func** %12, align 8
  %23 = icmp ne %struct.func* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.func*, %struct.func** %12, align 8
  %27 = getelementptr inbounds %struct.func, %struct.func* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %25, %28
  br label %30

30:                                               ; preds = %24, %21
  %31 = phi i1 [ false, %21 ], [ %29, %24 ]
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.func*, %struct.func** %12, align 8
  %35 = getelementptr inbounds %struct.func, %struct.func* %34, i32 0, i32 2
  %36 = load %struct.func*, %struct.func** %35, align 8
  store %struct.func* %36, %struct.func** %12, align 8
  br label %21

37:                                               ; preds = %30
  %38 = load %struct.func*, %struct.func** %12, align 8
  %39 = icmp ne %struct.func* %38, null
  br i1 %39, label %88, label %40

40:                                               ; preds = %37
  %41 = load %struct.func*, %struct.func** %12, align 8
  %42 = load i32, i32* @PERM, align 4
  %43 = call i32 @NEW(%struct.func* %41, i32 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.func*, %struct.func** %12, align 8
  %46 = getelementptr inbounds %struct.func, %struct.func* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.func*, %struct.func** %12, align 8
  %49 = getelementptr inbounds %struct.func, %struct.func* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.func*, %struct.func** %12, align 8
  %53 = getelementptr inbounds %struct.func, %struct.func* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.func*, %struct.func** %12, align 8
  %56 = getelementptr inbounds %struct.func, %struct.func* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.func*, %struct.func** %12, align 8
  %59 = getelementptr inbounds %struct.func, %struct.func* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.file*, %struct.file** %11, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  store %struct.func** %61, %struct.func*** %13, align 8
  br label %62

62:                                               ; preds = %77, %40
  %63 = load %struct.func**, %struct.func*** %13, align 8
  %64 = load %struct.func*, %struct.func** %63, align 8
  %65 = icmp ne %struct.func* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load %struct.func*, %struct.func** %12, align 8
  %68 = getelementptr inbounds %struct.func, %struct.func* %67, i32 0, i32 1
  %69 = load %struct.func**, %struct.func*** %13, align 8
  %70 = load %struct.func*, %struct.func** %69, align 8
  %71 = getelementptr inbounds %struct.func, %struct.func* %70, i32 0, i32 1
  %72 = call i64 @compare(%struct.TYPE_3__* %68, %struct.TYPE_3__* %71)
  %73 = icmp sgt i64 %72, 0
  br label %74

74:                                               ; preds = %66, %62
  %75 = phi i1 [ false, %62 ], [ %73, %66 ]
  br i1 %75, label %76, label %81

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.func**, %struct.func*** %13, align 8
  %79 = load %struct.func*, %struct.func** %78, align 8
  %80 = getelementptr inbounds %struct.func, %struct.func* %79, i32 0, i32 2
  store %struct.func** %80, %struct.func*** %13, align 8
  br label %62

81:                                               ; preds = %74
  %82 = load %struct.func**, %struct.func*** %13, align 8
  %83 = load %struct.func*, %struct.func** %82, align 8
  %84 = load %struct.func*, %struct.func** %12, align 8
  %85 = getelementptr inbounds %struct.func, %struct.func* %84, i32 0, i32 2
  store %struct.func* %83, %struct.func** %85, align 8
  %86 = load %struct.func*, %struct.func** %12, align 8
  %87 = load %struct.func**, %struct.func*** %13, align 8
  store %struct.func* %86, %struct.func** %87, align 8
  br label %88

88:                                               ; preds = %81, %37
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.func*, %struct.func** %12, align 8
  %92 = getelementptr inbounds %struct.func, %struct.func* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %90
  store i64 %95, i64* %93, align 8
  %96 = load %struct.func*, %struct.func** %12, align 8
  ret %struct.func* %96
}

declare dso_local %struct.file* @findfile(i8*) #1

declare dso_local i32 @assert(%struct.file*) #1

declare dso_local i32 @NEW(%struct.func*, i32) #1

declare dso_local i64 @compare(%struct.TYPE_3__*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
