; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_of_helpers.c_of_read_drc_info_cell.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_of_helpers.c_of_read_drc_info_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i32 }
%struct.of_drc_info = type { i8*, i8*, i32, i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_read_drc_info_cell(%struct.property** %0, i32** %1, %struct.of_drc_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.property**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.of_drc_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.property** %0, %struct.property*** %5, align 8
  store i32** %1, i32*** %6, align 8
  store %struct.of_drc_info* %2, %struct.of_drc_info** %7, align 8
  %10 = load %struct.of_drc_info*, %struct.of_drc_info** %7, align 8
  %11 = icmp ne %struct.of_drc_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %125

15:                                               ; preds = %3
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load %struct.of_drc_info*, %struct.of_drc_info** %7, align 8
  %20 = getelementptr inbounds %struct.of_drc_info, %struct.of_drc_info* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  store i8* %18, i8** %8, align 8
  %21 = load %struct.property**, %struct.property*** %5, align 8
  %22 = load %struct.property*, %struct.property** %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i8* @of_prop_next_string(%struct.property* %22, i8* %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %125

30:                                               ; preds = %15
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.of_drc_info*, %struct.of_drc_info** %7, align 8
  %33 = getelementptr inbounds %struct.of_drc_info, %struct.of_drc_info* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.property**, %struct.property*** %5, align 8
  %35 = load %struct.property*, %struct.property** %34, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @of_prop_next_string(%struct.property* %35, i8* %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %125

43:                                               ; preds = %30
  %44 = load i8*, i8** %8, align 8
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** %9, align 8
  %46 = load %struct.property**, %struct.property*** %5, align 8
  %47 = load %struct.property*, %struct.property** %46, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.of_drc_info*, %struct.of_drc_info** %7, align 8
  %50 = getelementptr inbounds %struct.of_drc_info, %struct.of_drc_info* %49, i32 0, i32 2
  %51 = call i32* @of_prop_next_u32(%struct.property* %47, i32* %48, i32* %50)
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %125

57:                                               ; preds = %43
  %58 = load %struct.property**, %struct.property*** %5, align 8
  %59 = load %struct.property*, %struct.property** %58, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.of_drc_info*, %struct.of_drc_info** %7, align 8
  %62 = getelementptr inbounds %struct.of_drc_info, %struct.of_drc_info* %61, i32 0, i32 3
  %63 = call i32* @of_prop_next_u32(%struct.property* %59, i32* %60, i32* %62)
  store i32* %63, i32** %9, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %125

69:                                               ; preds = %57
  %70 = load %struct.property**, %struct.property*** %5, align 8
  %71 = load %struct.property*, %struct.property** %70, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.of_drc_info*, %struct.of_drc_info** %7, align 8
  %74 = getelementptr inbounds %struct.of_drc_info, %struct.of_drc_info* %73, i32 0, i32 4
  %75 = call i32* @of_prop_next_u32(%struct.property* %71, i32* %72, i32* %74)
  store i32* %75, i32** %9, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %69
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %125

81:                                               ; preds = %69
  %82 = load %struct.property**, %struct.property*** %5, align 8
  %83 = load %struct.property*, %struct.property** %82, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load %struct.of_drc_info*, %struct.of_drc_info** %7, align 8
  %86 = getelementptr inbounds %struct.of_drc_info, %struct.of_drc_info* %85, i32 0, i32 5
  %87 = call i32* @of_prop_next_u32(%struct.property* %83, i32* %84, i32* %86)
  store i32* %87, i32** %9, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %125

93:                                               ; preds = %81
  %94 = load %struct.property**, %struct.property*** %5, align 8
  %95 = load %struct.property*, %struct.property** %94, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load %struct.of_drc_info*, %struct.of_drc_info** %7, align 8
  %98 = getelementptr inbounds %struct.of_drc_info, %struct.of_drc_info* %97, i32 0, i32 6
  %99 = call i32* @of_prop_next_u32(%struct.property* %95, i32* %96, i32* %98)
  store i32* %99, i32** %9, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %93
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %125

105:                                              ; preds = %93
  %106 = load i32*, i32** %9, align 8
  %107 = bitcast i32* %106 to i8*
  %108 = bitcast i8* %107 to i32*
  %109 = load i32**, i32*** %6, align 8
  store i32* %108, i32** %109, align 8
  %110 = load %struct.of_drc_info*, %struct.of_drc_info** %7, align 8
  %111 = getelementptr inbounds %struct.of_drc_info, %struct.of_drc_info* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.of_drc_info*, %struct.of_drc_info** %7, align 8
  %114 = getelementptr inbounds %struct.of_drc_info, %struct.of_drc_info* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  %117 = load %struct.of_drc_info*, %struct.of_drc_info** %7, align 8
  %118 = getelementptr inbounds %struct.of_drc_info, %struct.of_drc_info* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %116, %119
  %121 = add nsw i32 %112, %120
  %122 = sext i32 %121 to i64
  %123 = load %struct.of_drc_info*, %struct.of_drc_info** %7, align 8
  %124 = getelementptr inbounds %struct.of_drc_info, %struct.of_drc_info* %123, i32 0, i32 7
  store i64 %122, i64* %124, align 8
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %105, %102, %90, %78, %66, %54, %40, %27, %12
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i8* @of_prop_next_string(%struct.property*, i8*) #1

declare dso_local i32* @of_prop_next_u32(%struct.property*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
