; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_get_next_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_get_next_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@ACPI_VIDEO_FIRST_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_video_device*, i32, i32)* @acpi_video_get_next_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_get_next_level(%struct.acpi_video_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_video_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.acpi_video_device* %0, %struct.acpi_video_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 255, i32* %14, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  store i32 255, i32* %10, align 4
  store i32 255, i32* %8, align 4
  %15 = load i32, i32* @ACPI_VIDEO_FIRST_LEVEL, align 4
  store i32 %15, i32* %12, align 4
  br label %16

16:                                               ; preds = %50, %3
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %19 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %16
  %25 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %26 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %34, %35
  %37 = call i64 @abs(i32 %36)
  %38 = load i32, i32* %14, align 4
  %39 = call i64 @abs(i32 %38)
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %24
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %53

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %24
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %16

53:                                               ; preds = %47, %16
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @ACPI_VIDEO_FIRST_LEVEL, align 4
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %108, %53
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %61 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %59, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %58
  %67 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %68 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %66
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %95, %91, %87
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %105, %101, %97
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %58

111:                                              ; preds = %58
  %112 = load i32, i32* %7, align 4
  switch i32 %112, label %144 [
    i32 132, label %113
    i32 129, label %123
    i32 131, label %133
    i32 128, label %143
    i32 130, label %143
  ]

113:                                              ; preds = %111
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* %10, align 4
  br label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %8, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  store i32 %122, i32* %4, align 4
  br label %146

123:                                              ; preds = %111
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  br label %131

129:                                              ; preds = %123
  %130 = load i32, i32* %9, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  store i32 %132, i32* %4, align 4
  br label %146

133:                                              ; preds = %111
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* %11, align 4
  br label %141

139:                                              ; preds = %133
  %140 = load i32, i32* %8, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  store i32 %142, i32* %4, align 4
  br label %146

143:                                              ; preds = %111, %111
  store i32 0, i32* %4, align 4
  br label %146

144:                                              ; preds = %111
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %143, %141, %131, %121
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
