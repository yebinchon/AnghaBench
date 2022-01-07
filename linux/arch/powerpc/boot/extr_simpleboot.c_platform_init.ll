; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_simpleboot.c_platform_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_simpleboot.c_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_dtb_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid device tree blob\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Cannot find root node\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Cannot find #address-cells property\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Cannot find #size-cells property\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Cannot find memory node\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"cannot get memory range\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Memory range is not based at address 0\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Cannot find cpu node\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"timebase-frequency\00", align 1
@timebase_period_ns = common dso_local global i32 0, align 4
@_end = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_init(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load i32, i32* @_dtb_start, align 4
  %20 = call i64 @fdt_check_header(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = call i32 @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %5
  %25 = load i32, i32* @_dtb_start, align 4
  %26 = call i32 @fdt_path_offset(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* @_dtb_start, align 4
  %33 = load i32, i32* %16, align 4
  %34 = call i32* @fdt_getprop(i32 %32, i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %17)
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %31
  %41 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32, i32* @_dtb_start, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i32* @fdt_getprop(i32 %43, i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %17)
  store i32* %45, i32** %12, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 4
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %42
  %52 = call i32 @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i32, i32* @_dtb_start, align 4
  %55 = call i32 @fdt_node_offset_by_prop_value(i32 %54, i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 7)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i32, i32* @_dtb_start, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i32* @fdt_getprop(i32 %61, i32 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32* %17)
  store i32* %63, i32** %13, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = icmp ult i64 %65, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = call i32 @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %60
  store i32 0, i32* %18, align 4
  br label %77

77:                                               ; preds = %90, %76
  %78 = load i32, i32* %18, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load i32*, i32** %13, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %13, align 8
  %85 = load i32, i32* %83, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 @fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %82
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %18, align 4
  br label %77

93:                                               ; preds = %77
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %94

94:                                               ; preds = %106, %93
  %95 = load i32, i32* %18, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load i32, i32* %15, align 4
  %101 = shl i32 %100, 32
  %102 = load i32*, i32** %13, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %13, align 8
  %104 = load i32, i32* %102, align 4
  %105 = or i32 %101, %104
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %18, align 4
  br label %94

109:                                              ; preds = %94
  %110 = load i32, i32* @_dtb_start, align 4
  %111 = call i32 @fdt_node_offset_by_prop_value(i32 %110, i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 4)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = call i32 @fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %109
  %117 = load i32, i32* @_dtb_start, align 4
  %118 = load i32, i32* %16, align 4
  %119 = call i32* @fdt_getprop(i32 %117, i32 %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32* %17)
  store i32* %119, i32** %14, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = load i32, i32* %17, align 4
  %124 = icmp eq i32 %123, 4
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32*, i32** %14, align 8
  %127 = load i32, i32* %126, align 4
  %128 = sdiv i32 1000000000, %127
  store i32 %128, i32* @timebase_period_ns, align 4
  br label %129

129:                                              ; preds = %125, %122, %116
  %130 = load i64, i64* @_end, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* @_end, align 8
  %134 = sub i64 %132, %133
  %135 = trunc i64 %134 to i32
  %136 = call i32 @simple_alloc_init(i64 %130, i32 %135, i32 32, i32 64)
  %137 = load i32, i32* @_dtb_start, align 4
  %138 = call i32 @fdt_init(i32 %137)
  br i1 true, label %139, label %141

139:                                              ; preds = %129
  %140 = call i32 (...) @platform_specific_init()
  br label %141

141:                                              ; preds = %139, %129
  %142 = call i32 (...) @serial_console_init()
  ret void
}

declare dso_local i64 @fdt_check_header(i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @fdt_path_offset(i32, i8*) #1

declare dso_local i32* @fdt_getprop(i32, i32, i8*, i32*) #1

declare dso_local i32 @fdt_node_offset_by_prop_value(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @simple_alloc_init(i64, i32, i32, i32) #1

declare dso_local i32 @fdt_init(i32) #1

declare dso_local i32 @platform_specific_init(...) #1

declare dso_local i32 @serial_console_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
