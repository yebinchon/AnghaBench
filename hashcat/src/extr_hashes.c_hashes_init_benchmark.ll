; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hashes.c_hashes_init_benchmark.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hashes.c_hashes_init_benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)*, i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)*, i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)* }
%struct.TYPE_17__ = type { i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashes_init_benchmark(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %4, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %5, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %6, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %7, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %8, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %147

32:                                               ; preds = %1
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %147

38:                                               ; preds = %32
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)*, i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)** %40, align 8
  %42 = icmp ne i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)* %41, @MODULE_DEFAULT
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = load i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)*, i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)** %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i8* %46(%struct.TYPE_18__* %47, %struct.TYPE_15__* %48, i32* %49)
  store i8* %50, i8** %9, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @memcpy(i32 %53, i8* %54, i32 1)
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @hcfree(i8* %56)
  br label %66

58:                                               ; preds = %38
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @memcpy(i32 %61, i8* %64, i32 1)
  br label %66

66:                                               ; preds = %58, %43
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %106

71:                                               ; preds = %66
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)*, i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)** %73, align 8
  %75 = icmp ne i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)* %74, @MODULE_DEFAULT
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)*, i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)** %78, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i8* %79(%struct.TYPE_18__* %80, %struct.TYPE_15__* %81, i32* %82)
  store i8* %83, i8** %10, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @memcpy(i32 %86, i8* %87, i32 %90)
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @hcfree(i8* %92)
  br label %105

94:                                               ; preds = %71
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(i32 %97, i8* %100, i32 %103)
  br label %105

105:                                              ; preds = %94, %76
  br label %106

106:                                              ; preds = %105, %66
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %146

111:                                              ; preds = %106
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)*, i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)** %113, align 8
  %115 = icmp ne i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)* %114, @MODULE_DEFAULT
  br i1 %115, label %116, label %134

116:                                              ; preds = %111
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)*, i8* (%struct.TYPE_18__*, %struct.TYPE_15__*, i32*)** %118, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = call i8* %119(%struct.TYPE_18__* %120, %struct.TYPE_15__* %121, i32* %122)
  store i8* %123, i8** %11, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @memcpy(i32 %126, i8* %127, i32 %130)
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 @hcfree(i8* %132)
  br label %145

134:                                              ; preds = %111
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @memcpy(i32 %137, i8* %140, i32 %143)
  br label %145

145:                                              ; preds = %134, %116
  br label %146

146:                                              ; preds = %145, %106
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %37, %31
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i8* @MODULE_DEFAULT(%struct.TYPE_18__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @hcfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
