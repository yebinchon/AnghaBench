; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_ptls_free.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_ptls_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_24__, %struct.TYPE_23__, i64, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_20__, i32*, i32*, %struct.TYPE_17__ }
%struct.TYPE_24__ = type { i32, i32 (i32, i32, i32)* }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_16__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_25__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__**, i32, i32*, i32)* }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32, i32 }

@FREE = common dso_local global i32 0, align 4
@PTLS_MAX_DIGEST_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ptls_free(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %3 = load i32, i32* @FREE, align 4
  %4 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %5 = call i32 @PTLS_PROBE0(i32 %3, %struct.TYPE_25__* %4)
  %6 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 10
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %9 = call i32 @ptls_buffer_dispose(i32* %8)
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 10
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = call i32 @ptls_buffer_dispose(i32* %12)
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %15 = call i32 @free_exporter_master_secret(%struct.TYPE_25__* %14, i32 1)
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %17 = call i32 @free_exporter_master_secret(%struct.TYPE_25__* %16, i32 0)
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 9
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 9
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @free_esni_secret(i32** %24, i64 %27)
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 8
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @key_schedule_free(i32* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @ptls_aead_free(i32* %51)
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @ptls_aead_free(i32* %65)
  br label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 6
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %69, align 8
  %71 = call i32 @free(%struct.TYPE_25__* %70)
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %73, align 8
  %75 = call i32 @free(%struct.TYPE_25__* %74)
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %116

81:                                               ; preds = %67
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = icmp ne %struct.TYPE_16__* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32 (%struct.TYPE_16__**, i32, i32*, i32)*, i32 (%struct.TYPE_16__**, i32, i32*, i32)** %92, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %98 = call i32 %93(%struct.TYPE_16__** %96, i32 1, i32* null, i32 %97)
  br label %99

99:                                               ; preds = %87, %81
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %104, align 8
  %106 = icmp ne %struct.TYPE_25__* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %112, align 8
  %114 = call i32 @free(%struct.TYPE_25__* %113)
  br label %115

115:                                              ; preds = %107, %99
  br label %116

116:                                              ; preds = %115, %80
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 1
  %120 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %119, align 8
  %121 = icmp ne i32 (i32, i32, i32)* %120, null
  br i1 %121, label %122, label %134

122:                                              ; preds = %116
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %125, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %132 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %133 = call i32 %126(i32 %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %122, %116
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %136, align 8
  %138 = icmp ne %struct.TYPE_25__* %137, null
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %141, align 8
  %143 = load i32, i32* @PTLS_MAX_DIGEST_SIZE, align 4
  %144 = call i32 @ptls_clear_memory(%struct.TYPE_25__* %142, i32 %143)
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %146, align 8
  %148 = call i32 @free(%struct.TYPE_25__* %147)
  br label %149

149:                                              ; preds = %139, %134
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @update_open_count(i32 %152, i32 -1)
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %155 = call i32 @ptls_clear_memory(%struct.TYPE_25__* %154, i32 112)
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %157 = call i32 @free(%struct.TYPE_25__* %156)
  ret void
}

declare dso_local i32 @PTLS_PROBE0(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @ptls_buffer_dispose(i32*) #1

declare dso_local i32 @free_exporter_master_secret(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @free_esni_secret(i32**, i64) #1

declare dso_local i32 @key_schedule_free(i32*) #1

declare dso_local i32 @ptls_aead_free(i32*) #1

declare dso_local i32 @free(%struct.TYPE_25__*) #1

declare dso_local i32 @ptls_iovec_init(i32*, i32) #1

declare dso_local i32 @ptls_clear_memory(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @update_open_count(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
