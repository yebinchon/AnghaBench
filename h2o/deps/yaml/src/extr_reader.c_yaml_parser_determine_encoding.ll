; ModuleID = '/home/carl/AnghaBench/h2o/deps/yaml/src/extr_reader.c_yaml_parser_determine_encoding.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yaml/src/extr_reader.c_yaml_parser_determine_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@BOM_UTF16LE = common dso_local global i32 0, align 4
@YAML_UTF16LE_ENCODING = common dso_local global i8* null, align 8
@BOM_UTF16BE = common dso_local global i32 0, align 4
@YAML_UTF16BE_ENCODING = common dso_local global i8* null, align 8
@BOM_UTF8 = common dso_local global i32 0, align 4
@YAML_UTF8_ENCODING = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @yaml_parser_determine_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yaml_parser_determine_encoding(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  br label %4

4:                                                ; preds = %27, %1
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %13, %17
  %19 = icmp slt i32 %18, 3
  br label %20

20:                                               ; preds = %9, %4
  %21 = phi i1 [ false, %4 ], [ %19, %9 ]
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = call i32 @yaml_parser_update_raw_buffer(%struct.TYPE_6__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %131

27:                                               ; preds = %22
  br label %4

28:                                               ; preds = %20
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %32, %36
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %60

39:                                               ; preds = %28
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BOM_UTF16LE, align 4
  %45 = call i32 @memcmp(i32 %43, i32 %44, i32 2)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** @YAML_UTF16LE_ENCODING, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %53, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %57, align 8
  br label %130

60:                                               ; preds = %39, %28
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %64, %68
  %70 = icmp sge i32 %69, 2
  br i1 %70, label %71, label %92

71:                                               ; preds = %60
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @BOM_UTF16BE, align 4
  %77 = call i32 @memcmp(i32 %75, i32 %76, i32 2)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %71
  %80 = load i8*, i8** @YAML_UTF16BE_ENCODING, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 2
  store i32 %87, i32* %85, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %89, align 8
  br label %129

92:                                               ; preds = %71, %60
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %96, %100
  %102 = icmp sge i32 %101, 3
  br i1 %102, label %103, label %124

103:                                              ; preds = %92
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @BOM_UTF8, align 4
  %109 = call i32 @memcmp(i32 %107, i32 %108, i32 3)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %103
  %112 = load i8*, i8** @YAML_UTF8_ENCODING, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 3
  store i32 %119, i32* %117, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 3
  store i32 %123, i32* %121, align 8
  br label %128

124:                                              ; preds = %103, %92
  %125 = load i8*, i8** @YAML_UTF8_ENCODING, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %124, %111
  br label %129

129:                                              ; preds = %128, %79
  br label %130

130:                                              ; preds = %129, %47
  store i32 1, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %26
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @yaml_parser_update_raw_buffer(%struct.TYPE_6__*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
