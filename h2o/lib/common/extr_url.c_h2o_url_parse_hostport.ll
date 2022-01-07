; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_url.c_h2o_url_parse_hostport.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_url.c_h2o_url_parse_hostport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @h2o_url_parse_hostport(i8* %0, i64 %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__, align 8
  %14 = alloca %struct.TYPE_4__, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %12, align 8
  %20 = load i32*, i32** %9, align 8
  store i32 65535, i32* %20, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %142

25:                                               ; preds = %4
  %26 = load i8*, i8** %10, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 91
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = call i8* @memchr(i8* %33, i8 signext 93, i32 %39)
  store i8* %40, i8** %11, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i8* null, i8** %5, align 8
  br label %142

43:                                               ; preds = %30
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = call i64 @h2o_iovec_init(i8* %45, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = bitcast %struct.TYPE_4__* %44 to i8*
  %55 = bitcast %struct.TYPE_4__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 8, i1 false)
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8* %57, i8** %10, align 8
  br label %95

58:                                               ; preds = %25
  %59 = load i8*, i8** %10, align 8
  store i8* %59, i8** %11, align 8
  br label %60

60:                                               ; preds = %78, %58
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %11, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 47
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 58
  br label %74

74:                                               ; preds = %69, %64, %60
  %75 = phi i1 [ true, %64 ], [ true, %60 ], [ %73, %69 ]
  %76 = xor i1 %75, true
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %77
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %11, align 8
  br label %60

81:                                               ; preds = %74
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = call i64 @h2o_iovec_init(i8* %83, i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  %92 = bitcast %struct.TYPE_4__* %82 to i8*
  %93 = bitcast %struct.TYPE_4__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 8, i1 false)
  %94 = load i8*, i8** %11, align 8
  store i8* %94, i8** %10, align 8
  br label %95

95:                                               ; preds = %81, %43
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i8* null, i8** %5, align 8
  br label %142

101:                                              ; preds = %95
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = icmp ne i8* %102, %103
  br i1 %104, label %105, label %140

105:                                              ; preds = %101
  %106 = load i8*, i8** %10, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 58
  br i1 %109, label %110, label %140

110:                                              ; preds = %105
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %10, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = trunc i64 %118 to i32
  %120 = call i8* @memchr(i8* %113, i8 signext 47, i32 %119)
  store i8* %120, i8** %11, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %110
  %123 = load i8*, i8** %12, align 8
  store i8* %123, i8** %11, align 8
  br label %124

124:                                              ; preds = %122, %110
  %125 = load i8*, i8** %10, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  %132 = call i64 @h2o_strtosize(i8* %125, i32 %131)
  store i64 %132, i64* %15, align 8
  %133 = icmp uge i64 %132, 65535
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  store i8* null, i8** %5, align 8
  br label %142

135:                                              ; preds = %124
  %136 = load i64, i64* %15, align 8
  %137 = trunc i64 %136 to i32
  %138 = load i32*, i32** %9, align 8
  store i32 %137, i32* %138, align 4
  %139 = load i8*, i8** %11, align 8
  store i8* %139, i8** %10, align 8
  br label %140

140:                                              ; preds = %135, %105, %101
  %141 = load i8*, i8** %10, align 8
  store i8* %141, i8** %5, align 8
  br label %142

142:                                              ; preds = %140, %134, %100, %42, %24
  %143 = load i8*, i8** %5, align 8
  ret i8* %143
}

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @h2o_iovec_init(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @h2o_strtosize(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
