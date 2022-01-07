; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_gen_unique_req_key.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_gen_unique_req_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@conf = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*)* @gen_unique_req_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gen_unique_req_key(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* null, i8** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 1, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 1), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @xstrdup(i32 %18)
  store i8* %19, i8** %2, align 8
  br label %141

20:                                               ; preds = %12, %1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @xstrdup(i32 %33)
  store i8* %34, i8** %2, align 8
  br label %141

35:                                               ; preds = %25, %20
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strlen(i32 %38)
  store i64 %39, i64* %5, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %35
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 1), align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strlen(i32 %50)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %47, %44, %35
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 0), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @strlen(i32 %65)
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %62, %59, %54
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %70, %71
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %72, %73
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %74, %75
  %77 = call i8* @xcalloc(i64 %76, i32 1)
  store i8* %77, i8** %4, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @memcpy(i8* %78, i32 %81, i64 %82)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %69
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 1), align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %88
  %92 = load i8*, i8** %4, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8 124, i8* %94, align 1
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %9, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, 1
  %107 = call i32 @memcpy(i8* %101, i32 %104, i64 %106)
  br label %108

108:                                              ; preds = %91, %88, %69
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %139

113:                                              ; preds = %108
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 0), align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %113
  %117 = load i8*, i8** %4, align 8
  %118 = load i64, i64* %5, align 8
  %119 = load i64, i64* %6, align 8
  %120 = add i64 %118, %119
  %121 = load i64, i64* %9, align 8
  %122 = add i64 %120, %121
  %123 = getelementptr inbounds i8, i8* %117, i64 %122
  store i8 124, i8* %123, align 1
  %124 = load i64, i64* %9, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %9, align 8
  %126 = load i8*, i8** %4, align 8
  %127 = load i64, i64* %5, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %7, align 8
  %137 = add i64 %136, 1
  %138 = call i32 @memcpy(i8* %132, i32 %135, i64 %137)
  br label %139

139:                                              ; preds = %116, %113, %108
  %140 = load i8*, i8** %4, align 8
  store i8* %140, i8** %2, align 8
  br label %141

141:                                              ; preds = %139, %30, %15
  %142 = load i8*, i8** %2, align 8
  ret i8* %142
}

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @xcalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
