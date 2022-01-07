; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_mpc512x_shared.c_mpc512x_set_pixel_clock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_mpc512x_shared.c_mpc512x_set_pixel_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"fsl,mpc5121-diu\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Could not find DIU device tree node.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not lookup DIU clock.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Could not enable DIU clock.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"DIU pixclock in ps - %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"DIU pixclock freq  - %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"DIU deviation      - %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"DIU minpixclock    - %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"DIU maxpixclock    - %lu\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"DIU checking clock - %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"DIU clock accepted - %lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"DIU pixclock want %u, got %lu, delta %lu, eps %lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"DIU pixclock auto search unsuccessful\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"DIU pixclock best effort fallback (backend's choice)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mpc512x_set_pixel_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc512x_set_pixel_clock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %12 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %12, %struct.device_node** %3, align 8
  %13 = load %struct.device_node*, %struct.device_node** %3, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %165

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %3, align 8
  %19 = call %struct.clk* @of_clk_get(%struct.device_node* %18, i32 0)
  store %struct.clk* %19, %struct.clk** %4, align 8
  %20 = load %struct.clk*, %struct.clk** %4, align 8
  %21 = call i64 @IS_ERR(%struct.clk* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.device_node*, %struct.device_node** %3, align 8
  %25 = getelementptr inbounds %struct.device_node, %struct.device_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.clk* @clk_get_sys(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.clk* %27, %struct.clk** %4, align 8
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.device_node*, %struct.device_node** %3, align 8
  %30 = call i32 @of_node_put(%struct.device_node* %29)
  %31 = load %struct.clk*, %struct.clk** %4, align 8
  %32 = call i64 @IS_ERR(%struct.clk* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %165

36:                                               ; preds = %28
  %37 = load %struct.clk*, %struct.clk** %4, align 8
  %38 = call i64 @clk_prepare_enable(%struct.clk* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %165

42:                                               ; preds = %36
  %43 = load i32, i32* %2, align 4
  %44 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = udiv i32 1000000000, %45
  %47 = mul i32 %46, 1000
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = udiv i32 %50, 20
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %5, align 8
  %59 = sub i64 %57, %58
  store i64 %59, i64* %6, align 8
  %60 = load i32, i32* %2, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %61, %62
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %65)
  %67 = load i64, i64* %7, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %68)
  store i64 0, i64* %8, align 8
  br label %70

70:                                               ; preds = %127, %42
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp ule i64 %71, %72
  br i1 %73, label %74, label %133

74:                                               ; preds = %70
  %75 = load i32, i32* %2, align 4
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* %8, align 8
  %78 = sub i64 %76, %77
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %9, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %80)
  %82 = load %struct.clk*, %struct.clk** %4, align 8
  %83 = load i64, i64* %9, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @clk_set_rate(%struct.clk* %82, i32 %84)
  %86 = load %struct.clk*, %struct.clk** %4, align 8
  %87 = call i64 @clk_get_rate(%struct.clk* %86)
  store i64 %87, i64* %10, align 8
  %88 = load i32, i32* %2, align 4
  %89 = zext i32 %88 to i64
  %90 = load i64, i64* %10, align 8
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  %93 = call i64 @abs(i32 %92)
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %5, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %74
  br label %133

98:                                               ; preds = %74
  %99 = load i64, i64* %8, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  br label %127

102:                                              ; preds = %98
  %103 = load i32, i32* %2, align 4
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %8, align 8
  %106 = add i64 %104, %105
  store i64 %106, i64* %9, align 8
  %107 = load i64, i64* %9, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %108)
  %110 = load %struct.clk*, %struct.clk** %4, align 8
  %111 = load i64, i64* %9, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @clk_set_rate(%struct.clk* %110, i32 %112)
  %114 = load %struct.clk*, %struct.clk** %4, align 8
  %115 = call i64 @clk_get_rate(%struct.clk* %114)
  store i64 %115, i64* %10, align 8
  %116 = load i32, i32* %2, align 4
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %10, align 8
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = call i64 @abs(i32 %120)
  store i64 %121, i64* %11, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* %5, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %102
  br label %133

126:                                              ; preds = %102
  br label %127

127:                                              ; preds = %126, %101
  %128 = load i32, i32* %2, align 4
  %129 = udiv i32 %128, 64
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %8, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %8, align 8
  br label %70

133:                                              ; preds = %125, %97, %70
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* %5, align 8
  %136 = icmp ule i64 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load i64, i64* %9, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %2, align 4
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* %5, align 8
  %145 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i32 %141, i64 %142, i64 %143, i64 %144)
  br label %165

146:                                              ; preds = %133
  %147 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %148 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0))
  %149 = load %struct.clk*, %struct.clk** %4, align 8
  %150 = load i32, i32* %2, align 4
  %151 = call i32 @clk_set_rate(%struct.clk* %149, i32 %150)
  %152 = load %struct.clk*, %struct.clk** %4, align 8
  %153 = call i64 @clk_get_rate(%struct.clk* %152)
  store i64 %153, i64* %10, align 8
  %154 = load i32, i32* %2, align 4
  %155 = zext i32 %154 to i64
  %156 = load i64, i64* %10, align 8
  %157 = sub i64 %155, %156
  %158 = trunc i64 %157 to i32
  %159 = call i64 @abs(i32 %158)
  store i64 %159, i64* %11, align 8
  %160 = load i32, i32* %2, align 4
  %161 = load i64, i64* %10, align 8
  %162 = load i64, i64* %11, align 8
  %163 = load i64, i64* %5, align 8
  %164 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i32 %160, i64 %161, i64 %162, i64 %163)
  br label %165

165:                                              ; preds = %146, %137, %40, %34, %15
  ret void
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.clk* @of_clk_get(%struct.device_node*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @clk_get_sys(i32, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
