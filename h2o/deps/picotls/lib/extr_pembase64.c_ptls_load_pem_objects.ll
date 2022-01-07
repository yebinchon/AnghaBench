; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_pembase64.c_ptls_load_pem_objects.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_pembase64.c_ptls_load_pem_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PTLS_ERROR_PEM_LABEL_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptls_load_pem_objects(i8* %0, i8* %1, %struct.TYPE_7__* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %12, align 4
  br label %20

20:                                               ; preds = %19, %5
  %21 = load i64*, i64** %10, align 8
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %64, %24
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  %30 = call i32 @ptls_buffer_init(%struct.TYPE_8__* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %31 = load i32*, i32** %11, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @ptls_get_pem_object(i32* %31, i8* %32, %struct.TYPE_8__* %14)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = load i64, i64* %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i64 %52, i64* %56, align 8
  %57 = load i64, i64* %13, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %13, align 8
  br label %61

59:                                               ; preds = %40, %36
  %60 = call i32 @ptls_buffer_dispose(%struct.TYPE_8__* %14)
  br label %61

61:                                               ; preds = %59, %44
  br label %64

62:                                               ; preds = %29
  %63 = call i32 @ptls_buffer_dispose(%struct.TYPE_8__* %14)
  br label %65

64:                                               ; preds = %61
  br label %25

65:                                               ; preds = %62, %25
  br label %66

66:                                               ; preds = %65, %20
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @PTLS_ERROR_PEM_LABEL_NOT_FOUND, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i64, i64* %13, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %70, %66
  %75 = load i64, i64* %13, align 8
  %76 = load i64*, i64** %10, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @fclose(i32* %80)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i32, i32* %12, align 4
  ret i32 %83
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @ptls_get_pem_object(i32*, i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_8__*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
