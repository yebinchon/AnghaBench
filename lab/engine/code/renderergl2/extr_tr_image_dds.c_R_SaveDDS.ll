; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image_dds.c_R_SaveDDS.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image_dds.c_R_SaveDDS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* (i32)*, i32 (i8*)*, i32 (i8*, i8*, i32)* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ri = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@_DDSFLAGS_REQUIRED = common dso_local global i32 0, align 4
@DDSCAPS_COMPLEX = common dso_local global i32 0, align 4
@DDSCAPS_REQUIRED = common dso_local global i32 0, align 4
@DDSCAPS2_CUBEMAP = common dso_local global i32 0, align 4
@DDSPF_RGB = common dso_local global i32 0, align 4
@DDSPF_ALPHAPIXELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_SaveDDS(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 1, i32* %10, align 4
  br label %18

18:                                               ; preds = %17, %5
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %10, align 4
  %23 = mul nsw i32 %21, %22
  %24 = mul nsw i32 %23, 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 56, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 0), align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i8* %29(i32 %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 68, i8* %33, align 1
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 68, i8* %35, align 1
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8 83, i8* %37, align 1
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  store i8 32, i8* %39, align 1
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  %42 = bitcast i8* %41 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %12, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %44 = call i32 @memset(%struct.TYPE_4__* %43, i32 0, i32 52)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 124, i32* %46, align 4
  %47 = load i32, i32* @_DDSFLAGS_REQUIRED, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 12
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  store i32 32, i32* %57, align 4
  %58 = load i32, i32* @DDSCAPS_COMPLEX, align 4
  %59 = load i32, i32* @DDSCAPS_REQUIRED, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 6
  br i1 %64, label %65, label %69

65:                                               ; preds = %18
  %66 = load i32, i32* @DDSCAPS2_CUBEMAP, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 11
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %18
  %70 = load i32, i32* @DDSPF_RGB, align 4
  %71 = load i32, i32* @DDSPF_ALPHAPIXELS, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 6
  store i32 32, i32* %76, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 7
  store i32 255, i32* %78, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 8
  store i32 65280, i32* %80, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 9
  store i32 16711680, i32* %82, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 10
  store i32 -16777216, i32* %84, align 4
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 4
  %87 = getelementptr inbounds i8, i8* %86, i64 52
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @Com_Memcpy(i8* %87, i8* %88, i32 %89)
  %91 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 2), align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load i32, i32* %14, align 4
  %95 = call i32 %91(i8* %92, i8* %93, i32 %94)
  %96 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 1), align 8
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 %96(i8* %97)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @Com_Memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
