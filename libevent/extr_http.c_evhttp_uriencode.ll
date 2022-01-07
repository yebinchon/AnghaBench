; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_uriencode.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_uriencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@EV_SSIZE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%%%02X\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @evhttp_uriencode(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evbuffer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %12, %struct.evbuffer** %7, align 8
  store i8* null, i8** %10, align 8
  %13 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %14 = icmp ne %struct.evbuffer* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %99

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %99

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %9, align 8
  br label %48

30:                                               ; preds = %16
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @strlen(i8* %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @EV_SSIZE_MAX, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %99

37:                                               ; preds = %30
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8*, i8** %4, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %99

44:                                               ; preds = %37
  %45 = load i8*, i8** %4, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %9, align 8
  br label %48

48:                                               ; preds = %44, %26
  %49 = load i8*, i8** %4, align 8
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %81, %48
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @CHAR_IS_UNRESERVED(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @evbuffer_add(%struct.evbuffer* %60, i8* %61, i32 1)
  br label %80

63:                                               ; preds = %54
  %64 = load i8*, i8** %8, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 32
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %73 = call i32 @evbuffer_add(%struct.evbuffer* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %79

74:                                               ; preds = %68, %63
  %75 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @evbuffer_add_printf(%struct.evbuffer* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %77)
  br label %79

79:                                               ; preds = %74, %71
  br label %80

80:                                               ; preds = %79, %59
  br label %81

81:                                               ; preds = %80
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %8, align 8
  br label %50

84:                                               ; preds = %50
  %85 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %86 = call i32 @evbuffer_add(%struct.evbuffer* %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %87 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %88 = call i32 @evbuffer_get_length(%struct.evbuffer* %87)
  %89 = call i8* @mm_malloc(i32 %88)
  store i8* %89, i8** %10, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %96 = call i32 @evbuffer_get_length(%struct.evbuffer* %95)
  %97 = call i32 @evbuffer_remove(%struct.evbuffer* %93, i8* %94, i32 %96)
  br label %98

98:                                               ; preds = %92, %84
  br label %99

99:                                               ; preds = %98, %43, %36, %25, %15
  %100 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %101 = icmp ne %struct.evbuffer* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %104 = call i32 @evbuffer_free(%struct.evbuffer* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i8*, i8** %10, align 8
  ret i8* %106
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @CHAR_IS_UNRESERVED(i8 signext) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i8*, i8 zeroext) #1

declare dso_local i8* @mm_malloc(i32) #1

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_remove(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
