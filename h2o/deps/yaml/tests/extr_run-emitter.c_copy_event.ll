; ModuleID = '/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_run-emitter.c_copy_event.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_run-emitter.c_copy_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_24__ }
%struct.TYPE_31__ = type { i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_event(%struct.TYPE_23__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %6 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %151 [
    i32 128, label %9
    i32 129, label %17
    i32 135, label %20
    i32 136, label %45
    i32 137, label %53
    i32 132, label %61
    i32 130, label %99
    i32 131, label %122
    i32 133, label %125
    i32 134, label %148
  ]

9:                                                ; preds = %2
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @yaml_stream_start_event_initialize(%struct.TYPE_23__* %10, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %154

17:                                               ; preds = %2
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %19 = call i32 @yaml_stream_end_event_initialize(%struct.TYPE_23__* %18)
  store i32 %19, i32* %3, align 4
  br label %154

20:                                               ; preds = %2
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @yaml_document_start_event_initialize(%struct.TYPE_23__* %21, i32 %26, i32 %32, i32 %38, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %154

45:                                               ; preds = %2
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @yaml_document_end_event_initialize(%struct.TYPE_23__* %46, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %154

53:                                               ; preds = %2
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @yaml_alias_event_initialize(%struct.TYPE_23__* %54, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %154

61:                                               ; preds = %2
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @yaml_scalar_event_initialize(%struct.TYPE_23__* %62, i32 %67, i32 %72, i32 %77, i32 %82, i32 %87, i32 %92, i32 %97)
  store i32 %98, i32* %3, align 4
  br label %154

99:                                               ; preds = %2
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @yaml_sequence_start_event_initialize(%struct.TYPE_23__* %100, i32 %105, i32 %110, i32 %115, i32 %120)
  store i32 %121, i32* %3, align 4
  br label %154

122:                                              ; preds = %2
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %124 = call i32 @yaml_sequence_end_event_initialize(%struct.TYPE_23__* %123)
  store i32 %124, i32* %3, align 4
  br label %154

125:                                              ; preds = %2
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @yaml_mapping_start_event_initialize(%struct.TYPE_23__* %126, i32 %131, i32 %136, i32 %141, i32 %146)
  store i32 %147, i32* %3, align 4
  br label %154

148:                                              ; preds = %2
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %150 = call i32 @yaml_mapping_end_event_initialize(%struct.TYPE_23__* %149)
  store i32 %150, i32* %3, align 4
  br label %154

151:                                              ; preds = %2
  %152 = call i32 @assert(i32 1)
  br label %153

153:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %148, %125, %122, %99, %61, %53, %45, %20, %17, %9
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @yaml_stream_start_event_initialize(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @yaml_stream_end_event_initialize(%struct.TYPE_23__*) #1

declare dso_local i32 @yaml_document_start_event_initialize(%struct.TYPE_23__*, i32, i32, i32, i32) #1

declare dso_local i32 @yaml_document_end_event_initialize(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @yaml_alias_event_initialize(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @yaml_scalar_event_initialize(%struct.TYPE_23__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @yaml_sequence_start_event_initialize(%struct.TYPE_23__*, i32, i32, i32, i32) #1

declare dso_local i32 @yaml_sequence_end_event_initialize(%struct.TYPE_23__*) #1

declare dso_local i32 @yaml_mapping_start_event_initialize(%struct.TYPE_23__*, i32, i32, i32, i32) #1

declare dso_local i32 @yaml_mapping_end_event_initialize(%struct.TYPE_23__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
