; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_get_file_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_get_file_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32 }

@TFTP_FILE_HASH_PRIME = common dso_local global i32 0, align 4
@HF = common dso_local global %struct.TYPE_5__** null, align 8
@tot_files = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @get_file_f(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %23, %2
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = mul i32 239, %17
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = add i32 %18, %21
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  br label %12

26:                                               ; preds = %12
  %27 = load i32, i32* @TFTP_FILE_HASH_PRIME, align 4
  %28 = load i32, i32* %6, align 4
  %29 = urem i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp uge i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @TFTP_FILE_HASH_PRIME, align 4
  %35 = icmp ult i32 %33, %34
  br label %36

36:                                               ; preds = %32, %26
  %37 = phi i1 [ false, %26 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HF, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %40, i64 %42
  store %struct.TYPE_5__** %43, %struct.TYPE_5__*** %8, align 8
  br label %44

44:                                               ; preds = %79, %36
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %82

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %9, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @strcmp(i32 %53, i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %48
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %61, align 8
  %62 = load i32, i32* %5, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HF, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %65, i64 %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HF, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %73, i64 %75
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %76, align 8
  br label %77

77:                                               ; preds = %64, %57
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %3, align 8
  br label %106

79:                                               ; preds = %48
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store %struct.TYPE_5__** %81, %struct.TYPE_5__*** %8, align 8
  br label %44

82:                                               ; preds = %44
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load i32, i32* @tot_files, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @tot_files, align 4
  store i32 16, i32* %10, align 4
  %88 = call %struct.TYPE_5__* @ztmalloc0(i32 16)
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %9, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @zstrdup(i8* %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HF, align 8
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %93, i64 %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %101 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HF, align 8
  %102 = load i32, i32* %6, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %101, i64 %103
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %104, align 8
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %3, align 8
  br label %106

105:                                              ; preds = %82
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %106

106:                                              ; preds = %105, %85, %77
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %107
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @ztmalloc0(i32) #1

declare dso_local i32 @zstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
