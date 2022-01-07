; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_event_get_location.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_event_get_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32*, i32* }

@photo_type__original_location = common dso_local global i32 0, align 4
@photo_type__location = common dso_local global i32 0, align 4
@types = common dso_local global %struct.TYPE_5__* null, align 8
@PHOTO_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @event_get_location(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @photo_type__original_location, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @photo_type__location, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %72

29:                                               ; preds = %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @types, align 8
  %31 = load i64, i64* @PHOTO_TYPE, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %11, align 8
  store i8* null, i8** %12, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @has_field(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i8* @GET_RAW(i32* %46, i32* %47)
  store i8* %48, i8** %12, align 8
  br label %62

49:                                               ; preds = %40, %29
  %50 = load i32*, i32** %8, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @has_field(i32* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i8* @GET_RAW(i32* %58, i32* %59)
  store i8* %60, i8** %12, align 8
  br label %61

61:                                               ; preds = %57, %52, %49
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i8*, i8** %12, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @RAW_LEN(i8* %66)
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i8*, i8** %12, align 8
  %70 = call i8* @RAW_DATA(i8* %69)
  store i8* %70, i8** %4, align 8
  br label %74

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %25
  %73 = load i32*, i32** %7, align 8
  store i32 0, i32* %73, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %74

74:                                               ; preds = %72, %65
  %75 = load i8*, i8** %4, align 8
  ret i8* %75
}

declare dso_local i64 @has_field(i32*, i32) #1

declare dso_local i8* @GET_RAW(i32*, i32*) #1

declare dso_local i32 @RAW_LEN(i8*) #1

declare dso_local i8* @RAW_DATA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
