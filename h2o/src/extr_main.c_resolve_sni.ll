; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_resolve_sni.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_resolve_sni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listener_ssl_config_t = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i64 }
%struct.listener_config_t = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.listener_ssl_config_t** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.listener_ssl_config_t* (%struct.listener_config_t*, i8*, i64)* @resolve_sni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.listener_ssl_config_t* @resolve_sni(%struct.listener_config_t* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.listener_ssl_config_t*, align 8
  %5 = alloca %struct.listener_config_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.listener_ssl_config_t*, align 8
  %11 = alloca i64, align 8
  store %struct.listener_config_t* %0, %struct.listener_config_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %125, %3
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.listener_config_t*, %struct.listener_config_t** %5, align 8
  %15 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %13, %17
  br i1 %18, label %19, label %128

19:                                               ; preds = %12
  %20 = load %struct.listener_config_t*, %struct.listener_config_t** %5, align 8
  %21 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.listener_ssl_config_t**, %struct.listener_ssl_config_t*** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %23, i64 %24
  %26 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %25, align 8
  store %struct.listener_ssl_config_t* %26, %struct.listener_ssl_config_t** %10, align 8
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %121, %19
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %10, align 8
  %30 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %34, label %124

34:                                               ; preds = %27
  %35 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %10, align 8
  %36 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 42
  br i1 %46, label %47, label %90

47:                                               ; preds = %34
  %48 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %10, align 8
  %49 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, 1
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %47
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %10, align 8
  %69 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %10, align 8
  %78 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %84, 1
  %86 = call i64 @h2o_lcstris(i8* %66, i64 %67, i8* %76, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %60, %47
  br label %121

89:                                               ; preds = %60
  br label %113

90:                                               ; preds = %34
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %10, align 8
  %94 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %10, align 8
  %102 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @h2o_lcstris(i8* %91, i64 %92, i8* %100, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %90
  br label %121

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %112, %89
  %114 = load %struct.listener_config_t*, %struct.listener_config_t** %5, align 8
  %115 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.listener_ssl_config_t**, %struct.listener_ssl_config_t*** %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = getelementptr inbounds %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %117, i64 %118
  %120 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %119, align 8
  store %struct.listener_ssl_config_t* %120, %struct.listener_ssl_config_t** %4, align 8
  br label %135

121:                                              ; preds = %111, %88
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %9, align 8
  br label %27

124:                                              ; preds = %27
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %8, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %8, align 8
  br label %12

128:                                              ; preds = %12
  %129 = load %struct.listener_config_t*, %struct.listener_config_t** %5, align 8
  %130 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load %struct.listener_ssl_config_t**, %struct.listener_ssl_config_t*** %131, align 8
  %133 = getelementptr inbounds %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %132, i64 0
  %134 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %133, align 8
  store %struct.listener_ssl_config_t* %134, %struct.listener_ssl_config_t** %4, align 8
  br label %135

135:                                              ; preds = %128, %113
  %136 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %4, align 8
  ret %struct.listener_ssl_config_t* %136
}

declare dso_local i64 @h2o_lcstris(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
