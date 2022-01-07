; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-db.c_antispam_serialize_pattern.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-db.c_antispam_serialize_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@id_to_pattern = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MAX_PATTERN_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%d,%u,%u,%hu,\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @antispam_serialize_pattern(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @id_to_pattern, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_5__* @id_to_pattern_find(i32 %10, i32 %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %82

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %9, align 8
  br label %22

22:                                               ; preds = %30, %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %9, align 8
  br label %22

34:                                               ; preds = %22
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 40
  %37 = load i32, i32* @MAX_PATTERN_LEN, align 4
  %38 = icmp sle i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i16
  %53 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i16 zeroext %52)
  %54 = load i8*, i8** %5, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %62, i8** %5, align 8
  store i8 0, i8* %61, align 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %9, align 8
  br label %64

64:                                               ; preds = %76, %34
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = icmp ne %struct.TYPE_4__* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %75, i8** %5, align 8
  store i8 %73, i8* %74, align 1
  br label %76

76:                                               ; preds = %69
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %9, align 8
  br label %64

80:                                               ; preds = %64
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %15
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_5__* @id_to_pattern_find(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
