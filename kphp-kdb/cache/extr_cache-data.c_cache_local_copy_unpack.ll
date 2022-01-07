; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_unpack.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i8* }
%struct.cache_local_copy = type { i32, i32, i32*, i32, i32, i32 }

@CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK = common dso_local global i32 0, align 4
@CACHE_LOCAL_COPY_FLAG_INT = common dso_local global i32 0, align 4
@CACHE_LOCAL_COPY_FLAG_LAST = common dso_local global i32 0, align 4
@CACHE_LOCAL_COPY_FLAG_MONTHLY_COUNTER = common dso_local global i32 0, align 4
@amortization_counter_types = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_local_copy_unpack(%struct.cache_uri* %0, %struct.cache_local_copy* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_uri*, align 8
  %8 = alloca %struct.cache_local_copy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.cache_uri* %0, %struct.cache_uri** %7, align 8
  store %struct.cache_local_copy* %1, %struct.cache_local_copy** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.cache_uri*, %struct.cache_uri** %7, align 8
  %15 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32*, i32** %11, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %18
  store i32 0, i32* %6, align 4
  br label %122

24:                                               ; preds = %5
  %25 = load %struct.cache_uri*, %struct.cache_uri** %7, align 8
  %26 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %13, align 8
  br label %28

28:                                               ; preds = %106, %24
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %122

33:                                               ; preds = %28
  %34 = load %struct.cache_local_copy*, %struct.cache_local_copy** %8, align 8
  %35 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %34, i32 0, i32 0
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @memcpy(i32* %35, i8* %36, i32 4)
  %38 = load i8*, i8** %13, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  store i8* %39, i8** %13, align 8
  %40 = load %struct.cache_local_copy*, %struct.cache_local_copy** %8, align 8
  %41 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %40, i32 0, i32 1
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @memcpy(i32* %41, i8* %42, i32 4)
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  store i8* %45, i8** %13, align 8
  %46 = load %struct.cache_local_copy*, %struct.cache_local_copy** %8, align 8
  %47 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %33
  %53 = load %struct.cache_local_copy*, %struct.cache_local_copy** %8, align 8
  %54 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %53, i32 0, i32 3
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @memcpy(i32* %54, i8* %55, i32 4)
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %58, i8** %13, align 8
  br label %59

59:                                               ; preds = %52, %33
  %60 = load %struct.cache_local_copy*, %struct.cache_local_copy** %8, align 8
  %61 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_INT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %59
  %67 = load %struct.cache_local_copy*, %struct.cache_local_copy** %8, align 8
  %68 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %67, i32 0, i32 4
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 @memcpy(i32* %68, i8* %69, i32 4)
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  store i8* %72, i8** %13, align 8
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.cache_uri*, %struct.cache_uri** %7, align 8
  %77 = load %struct.cache_local_copy*, %struct.cache_local_copy** %8, align 8
  %78 = call i32 @cache_local_copy_unpack_location(%struct.cache_uri* %76, %struct.cache_local_copy* %77)
  br label %79

79:                                               ; preds = %75, %66
  br label %93

80:                                               ; preds = %59
  %81 = load %struct.cache_local_copy*, %struct.cache_local_copy** %8, align 8
  %82 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %81, i32 0, i32 4
  store i32 0, i32* %82, align 4
  %83 = load %struct.cache_local_copy*, %struct.cache_local_copy** %8, align 8
  %84 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = call i32 @strcpy(i32 %85, i8* %86)
  %88 = load i8*, i8** %13, align 8
  %89 = call i64 @strlen(i8* %88)
  %90 = add nsw i64 %89, 1
  %91 = load i8*, i8** %13, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 %90
  store i8* %92, i8** %13, align 8
  br label %93

93:                                               ; preds = %80, %79
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  %96 = load %struct.cache_local_copy*, %struct.cache_local_copy** %8, align 8
  %97 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_LAST, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %107

103:                                              ; preds = %93
  %104 = load %struct.cache_local_copy*, %struct.cache_local_copy** %8, align 8
  %105 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %104, i32 1
  store %struct.cache_local_copy* %105, %struct.cache_local_copy** %8, align 8
  br label %106

106:                                              ; preds = %103
  br i1 true, label %28, label %107

107:                                              ; preds = %106, %102
  %108 = load i32*, i32** %11, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load i8*, i8** %13, align 8
  %112 = load %struct.cache_uri*, %struct.cache_uri** %7, align 8
  %113 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = ptrtoint i8* %111 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = load i32*, i32** %11, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %110, %107
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %120, %32, %23
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @cache_local_copy_unpack_location(%struct.cache_uri*, %struct.cache_local_copy*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
