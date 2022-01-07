; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_ksw.c_ksw_align.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_ksw.c_ksw_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@KSW_XBYTE = common dso_local global i32 0, align 4
@KSW_XSTART = common dso_local global i32 0, align 4
@KSW_XSUBO = common dso_local global i32 0, align 4
@KSW_XSTOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ksw_align(%struct.TYPE_13__* noalias sret %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, %struct.TYPE_14__** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_14__**, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_14__*, align 8
  %24 = alloca %struct.TYPE_13__, align 4
  %25 = alloca void (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32*, i32, i32, i32)*, align 8
  %26 = alloca %struct.TYPE_13__, align 4
  %27 = alloca %struct.TYPE_13__, align 4
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store %struct.TYPE_14__** %10, %struct.TYPE_14__*** %21, align 8
  %28 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %21, align 8
  %29 = icmp ne %struct.TYPE_14__** %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %11
  %31 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %21, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %21, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  br label %49

37:                                               ; preds = %30, %11
  %38 = load i32, i32* %20, align 4
  %39 = load i32, i32* @KSW_XBYTE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 2
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %16, align 4
  %47 = load i32*, i32** %17, align 8
  %48 = call %struct.TYPE_14__* @ksw_qinit(i32 %43, i32 %44, i32* %45, i32 %46, i32* %47)
  br label %49

49:                                               ; preds = %37, %34
  %50 = phi %struct.TYPE_14__* [ %36, %34 ], [ %48, %37 ]
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %23, align 8
  %51 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %21, align 8
  %52 = icmp ne %struct.TYPE_14__** %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %21, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = icmp eq %struct.TYPE_14__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %59 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %21, align 8
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %59, align 8
  br label %60

60:                                               ; preds = %57, %53, %49
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 2
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, void (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32*, i32, i32, i32)* @ksw_i16, void (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32*, i32, i32, i32)* @ksw_u8
  store void (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32*, i32, i32, i32)* %66, void (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32*, i32, i32, i32)** %25, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %22, align 4
  %70 = load void (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32*, i32, i32, i32)*, void (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32*, i32, i32, i32)** %25, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %20, align 4
  call void %70(%struct.TYPE_13__* sret %26, %struct.TYPE_14__* %71, i32 %72, i32* %73, i32 %74, i32 %75, i32 %76)
  %77 = bitcast %struct.TYPE_13__* %0 to i8*
  %78 = bitcast %struct.TYPE_13__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 20, i1 false)
  %79 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %21, align 8
  %80 = icmp eq %struct.TYPE_14__** %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %60
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %83 = call i32 @free(%struct.TYPE_14__* %82)
  br label %84

84:                                               ; preds = %81, %60
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* @KSW_XSTART, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* @KSW_XSUBO, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %20, align 4
  %98 = and i32 %97, 65535
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94, %84
  br label %163

101:                                              ; preds = %94, %89
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32*, i32** %13, align 8
  %106 = call i32 @revseq(i32 %104, i32* %105)
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32*, i32** %15, align 8
  %111 = call i32 @revseq(i32 %109, i32* %110)
  %112 = load i32, i32* %22, align 4
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  %116 = load i32*, i32** %13, align 8
  %117 = load i32, i32* %16, align 4
  %118 = load i32*, i32** %17, align 8
  %119 = call %struct.TYPE_14__* @ksw_qinit(i32 %112, i32 %115, i32* %116, i32 %117, i32* %118)
  store %struct.TYPE_14__* %119, %struct.TYPE_14__** %23, align 8
  %120 = load void (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32*, i32, i32, i32)*, void (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32*, i32, i32, i32)** %25, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* @KSW_XSTOP, align 4
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %126, %128
  call void %120(%struct.TYPE_13__* sret %27, %struct.TYPE_14__* %121, i32 %122, i32* %123, i32 %124, i32 %125, i32 %129)
  %130 = bitcast %struct.TYPE_13__* %24 to i8*
  %131 = bitcast %struct.TYPE_13__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 4 %131, i64 20, i1 false)
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @revseq(i32 %134, i32* %135)
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  %140 = load i32*, i32** %15, align 8
  %141 = call i32 @revseq(i32 %139, i32* %140)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %143 = call i32 @free(%struct.TYPE_14__* %142)
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %101
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %151, %153
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  store i32 %154, i32* %155, align 4
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %157, %159
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %149, %101
  br label %163

163:                                              ; preds = %162, %100
  ret void
}

declare dso_local %struct.TYPE_14__* @ksw_qinit(i32, i32, i32*, i32, i32*) #1

declare dso_local void @ksw_i16(%struct.TYPE_13__* sret, %struct.TYPE_14__*, i32, i32*, i32, i32, i32) #1

declare dso_local void @ksw_u8(%struct.TYPE_13__* sret, %struct.TYPE_14__*, i32, i32*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @revseq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
