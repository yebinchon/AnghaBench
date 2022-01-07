; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_process_string.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_process_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSONFailure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @process_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @process_string(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %13, 1
  %15 = mul i64 %14, 1
  store i64 %15, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @parson_malloc(i64 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %112

22:                                               ; preds = %2
  %23 = load i8*, i8** %9, align 8
  store i8* %23, i8** %10, align 8
  br label %24

24:                                               ; preds = %85, %22
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = load i64, i64* %5, align 8
  %36 = icmp ult i64 %34, %35
  br label %37

37:                                               ; preds = %29, %24
  %38 = phi i1 [ false, %24 ], [ %36, %29 ]
  br i1 %38, label %39, label %90

39:                                               ; preds = %37
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 92
  br i1 %43, label %44, label %74

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  switch i32 %49, label %72 [
    i32 34, label %50
    i32 92, label %52
    i32 47, label %54
    i32 98, label %56
    i32 102, label %58
    i32 110, label %60
    i32 114, label %62
    i32 116, label %64
    i32 117, label %66
  ]

50:                                               ; preds = %44
  %51 = load i8*, i8** %10, align 8
  store i8 34, i8* %51, align 1
  br label %73

52:                                               ; preds = %44
  %53 = load i8*, i8** %10, align 8
  store i8 92, i8* %53, align 1
  br label %73

54:                                               ; preds = %44
  %55 = load i8*, i8** %10, align 8
  store i8 47, i8* %55, align 1
  br label %73

56:                                               ; preds = %44
  %57 = load i8*, i8** %10, align 8
  store i8 8, i8* %57, align 1
  br label %73

58:                                               ; preds = %44
  %59 = load i8*, i8** %10, align 8
  store i8 12, i8* %59, align 1
  br label %73

60:                                               ; preds = %44
  %61 = load i8*, i8** %10, align 8
  store i8 10, i8* %61, align 1
  br label %73

62:                                               ; preds = %44
  %63 = load i8*, i8** %10, align 8
  store i8 13, i8* %63, align 1
  br label %73

64:                                               ; preds = %44
  %65 = load i8*, i8** %10, align 8
  store i8 9, i8* %65, align 1
  br label %73

66:                                               ; preds = %44
  %67 = call i32 @parse_utf16(i8** %6, i8** %10)
  %68 = load i32, i32* @JSONFailure, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %112

71:                                               ; preds = %66
  br label %73

72:                                               ; preds = %44
  br label %112

73:                                               ; preds = %71, %64, %62, %60, %58, %56, %54, %52, %50
  br label %85

74:                                               ; preds = %39
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp slt i32 %77, 32
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %112

80:                                               ; preds = %74
  %81 = load i8*, i8** %6, align 8
  %82 = load i8, i8* %81, align 1
  %83 = load i8*, i8** %10, align 8
  store i8 %82, i8* %83, align 1
  br label %84

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %73
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %10, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  br label %24

90:                                               ; preds = %37
  %91 = load i8*, i8** %10, align 8
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %10, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = add i64 %96, 1
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i64 @parson_malloc(i64 %98)
  %100 = inttoptr i64 %99 to i8*
  store i8* %100, i8** %11, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %112

104:                                              ; preds = %90
  %105 = load i8*, i8** %11, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @memcpy(i8* %105, i8* %106, i64 %107)
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @parson_free(i8* %109)
  %111 = load i8*, i8** %11, align 8
  store i8* %111, i8** %3, align 8
  br label %115

112:                                              ; preds = %103, %79, %72, %70, %21
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @parson_free(i8* %113)
  store i8* null, i8** %3, align 8
  br label %115

115:                                              ; preds = %112, %104
  %116 = load i8*, i8** %3, align 8
  ret i8* %116
}

declare dso_local i64 @parson_malloc(i64) #1

declare dso_local i32 @parse_utf16(i8**, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @parson_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
