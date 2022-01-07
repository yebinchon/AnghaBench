; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_cellrendererbutton.c_cellRendererButtonSize.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_cellrendererbutton.c_cellRendererButtonSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GTK_TEXT_DIR_RTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_6__*, i32*, i32*, i32*, i32*)* @cellRendererButtonSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cellRendererButtonSize(i32* %0, i32* %1, i32* %2, %struct.TYPE_6__* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_5__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @GTK_CELL_RENDERER(i32* %22)
  %24 = call i32 @gtk_cell_renderer_get_padding(i32 %23, i32* %18, i32* %19)
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @pango_layout_get_pixel_extents(i32* %25, i32* null, %struct.TYPE_5__* %17)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %18, align 4
  %33 = mul nsw i32 2, %32
  %34 = sub nsw i32 %31, %33
  %35 = icmp sgt i32 %28, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %18, align 4
  %41 = mul nsw i32 2, %40
  %42 = sub nsw i32 %39, %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %36, %8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %19, align 4
  %51 = mul nsw i32 2, %50
  %52 = sub nsw i32 %49, %51
  %53 = icmp sgt i32 %46, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %44
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %19, align 4
  %59 = mul nsw i32 2, %58
  %60 = sub nsw i32 %57, %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %44
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @GTK_CELL_RENDERER(i32* %63)
  %65 = call i32 @gtk_cell_renderer_get_alignment(i32 %64, double* %20, double* %21)
  %66 = load i32*, i32** %10, align 8
  %67 = call i64 @gtk_widget_get_direction(i32* %66)
  %68 = load i64, i64* @GTK_TEXT_DIR_RTL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load double, double* %20, align 8
  %72 = fsub double 1.000000e+00, %71
  store double %72, double* %20, align 8
  br label %73

73:                                               ; preds = %70, %62
  %74 = load i32*, i32** %13, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %94

76:                                               ; preds = %73
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %18, align 4
  %83 = mul nsw i32 2, %82
  %84 = add nsw i32 %81, %83
  %85 = sub nsw i32 %79, %84
  %86 = load i32*, i32** %13, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %87, align 4
  %89 = sitofp i32 %88 to double
  %90 = load double, double* %20, align 8
  %91 = fmul double %89, %90
  %92 = fptosi double %91 to i32
  %93 = load i32*, i32** %13, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %76, %73
  %95 = load i32*, i32** %14, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %121

97:                                               ; preds = %94
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %19, align 4
  %104 = mul nsw i32 2, %103
  %105 = add nsw i32 %102, %104
  %106 = sub nsw i32 %100, %105
  %107 = load i32*, i32** %14, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %14, align 8
  %109 = load i32, i32* %108, align 4
  %110 = sitofp i32 %109 to double
  %111 = load double, double* %21, align 8
  %112 = fmul double %110, %111
  %113 = fptosi double %112 to i32
  %114 = load i32*, i32** %14, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32*, i32** %14, align 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %97
  %119 = load i32*, i32** %14, align 8
  store i32 0, i32* %119, align 4
  br label %120

120:                                              ; preds = %118, %97
  br label %121

121:                                              ; preds = %120, %94
  %122 = load i32*, i32** %15, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %18, align 4
  %128 = mul nsw i32 2, %127
  %129 = sub nsw i32 %126, %128
  %130 = load i32*, i32** %15, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %124, %121
  %132 = load i32*, i32** %16, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %19, align 4
  %138 = mul nsw i32 2, %137
  %139 = sub nsw i32 %136, %138
  %140 = load i32*, i32** %16, align 8
  store i32 %139, i32* %140, align 4
  br label %141

141:                                              ; preds = %134, %131
  ret void
}

declare dso_local i32 @gtk_cell_renderer_get_padding(i32, i32*, i32*) #1

declare dso_local i32 @GTK_CELL_RENDERER(i32*) #1

declare dso_local i32 @pango_layout_get_pixel_extents(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @gtk_cell_renderer_get_alignment(i32, double*, double*) #1

declare dso_local i64 @gtk_widget_get_direction(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
