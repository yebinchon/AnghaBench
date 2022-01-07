; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_quicly_open_stream.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_quicly_open_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { %struct.TYPE_35__, %struct.TYPE_31__, %struct.TYPE_43__ }
%struct.TYPE_35__ = type { %struct.TYPE_34__*, %struct.TYPE_27__, %struct.TYPE_40__ }
%struct.TYPE_34__ = type { %struct.TYPE_39__*, %struct.TYPE_45__ }
%struct.TYPE_39__ = type { i32 (%struct.TYPE_39__*, %struct.TYPE_36__*)* }
%struct.TYPE_36__ = type { i32, i32, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i64 }
%struct.TYPE_27__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32, i32 }
%struct.TYPE_40__ = type { %struct.st_quicly_conn_streamgroup_state_t, %struct.st_quicly_conn_streamgroup_state_t }
%struct.st_quicly_conn_streamgroup_state_t = type { i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { %struct.TYPE_41__, %struct.TYPE_37__ }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_37__ = type { i32 }

@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicly_open_stream(%struct.TYPE_38__* %0, %struct.TYPE_36__** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca %struct.TYPE_36__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.st_quicly_conn_streamgroup_state_t*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %5, align 8
  store %struct.TYPE_36__** %1, %struct.TYPE_36__*** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %19, i32 0, i32 1
  store %struct.st_quicly_conn_streamgroup_state_t* %20, %struct.st_quicly_conn_streamgroup_state_t** %9, align 8
  %21 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %24, i32 0, i32 0
  store i32* %25, i32** %10, align 8
  store i64 0, i64* %11, align 8
  %26 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %12, align 4
  br label %58

33:                                               ; preds = %3
  %34 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %36, i32 0, i32 0
  store %struct.st_quicly_conn_streamgroup_state_t* %37, %struct.st_quicly_conn_streamgroup_state_t** %9, align 8
  %38 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %41, i32 0, i32 0
  store i32* %42, i32** %10, align 8
  %43 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %11, align 8
  %51 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %33, %16
  %59 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %60 = load %struct.st_quicly_conn_streamgroup_state_t*, %struct.st_quicly_conn_streamgroup_state_t** %9, align 8
  %61 = getelementptr inbounds %struct.st_quicly_conn_streamgroup_state_t, %struct.st_quicly_conn_streamgroup_state_t* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call %struct.TYPE_36__* @open_stream(%struct.TYPE_38__* %59, i32 %62, i64 %63, i32 %64)
  store %struct.TYPE_36__* %65, %struct.TYPE_36__** %8, align 8
  %66 = icmp eq %struct.TYPE_36__* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %68, i32* %4, align 4
  br label %134

69:                                               ; preds = %58
  %70 = load %struct.st_quicly_conn_streamgroup_state_t*, %struct.st_quicly_conn_streamgroup_state_t** %9, align 8
  %71 = getelementptr inbounds %struct.st_quicly_conn_streamgroup_state_t, %struct.st_quicly_conn_streamgroup_state_t* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.st_quicly_conn_streamgroup_state_t*, %struct.st_quicly_conn_streamgroup_state_t** %9, align 8
  %75 = getelementptr inbounds %struct.st_quicly_conn_streamgroup_state_t, %struct.st_quicly_conn_streamgroup_state_t* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 4
  store i32 %77, i32* %75, align 4
  %78 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 4
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp sge i32 %81, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %69
  %86 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 1
  br label %102

96:                                               ; preds = %85
  %97 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 0
  br label %102

102:                                              ; preds = %96, %90
  %103 = phi %struct.TYPE_28__* [ %95, %90 ], [ %101, %96 ]
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 0
  %110 = call i32 @quicly_linklist_insert(i32 %105, i32* %109)
  br label %111

111:                                              ; preds = %102, %69
  %112 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_39__*, %struct.TYPE_39__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %117, i32 0, i32 0
  %119 = load i32 (%struct.TYPE_39__*, %struct.TYPE_36__*)*, i32 (%struct.TYPE_39__*, %struct.TYPE_36__*)** %118, align 8
  %120 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_34__*, %struct.TYPE_34__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_39__*, %struct.TYPE_39__** %124, align 8
  %126 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %127 = call i32 %119(%struct.TYPE_39__* %125, %struct.TYPE_36__* %126)
  store i32 %127, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %111
  %130 = load i32, i32* %13, align 4
  store i32 %130, i32* %4, align 4
  br label %134

131:                                              ; preds = %111
  %132 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %133 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %6, align 8
  store %struct.TYPE_36__* %132, %struct.TYPE_36__** %133, align 8
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %131, %129, %67
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.TYPE_36__* @open_stream(%struct.TYPE_38__*, i32, i64, i32) #1

declare dso_local i32 @quicly_linklist_insert(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
