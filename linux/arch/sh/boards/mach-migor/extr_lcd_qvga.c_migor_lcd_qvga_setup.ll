; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-migor/extr_lcd_qvga.c_migor_lcd_qvga_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-migor/extr_lcd_qvga.c_migor_lcd_qvga_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_sys_bus_ops = type { i32 }

@sync_data = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Migo-R QVGA LCD Module detected.\0A\00", align 1
@magic0_data = common dso_local global i32 0, align 4
@magic1_data = common dso_local global i32 0, align 4
@magic2_data = common dso_local global i32 0, align 4
@magic3_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @migor_lcd_qvga_setup(i8* %0, %struct.sh_mobile_lcdc_sys_bus_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sh_mobile_lcdc_sys_bus_ops*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sh_mobile_lcdc_sys_bus_ops* %1, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  store i64 320, i64* %6, align 8
  store i64 240, i64* %7, align 8
  %9 = call i32 (...) @reset_lcd_module()
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %12 = load i32, i32* @sync_data, align 4
  %13 = load i32, i32* @sync_data, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = call i32 @migor_lcd_qvga_seq(i8* %10, %struct.sh_mobile_lcdc_sys_bus_ops* %11, i32 %12, i32 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %18 = call i32 @read_reg16(i8* %16, %struct.sh_mobile_lcdc_sys_bus_ops* %17, i32 0)
  %19 = icmp ne i32 %18, 5381
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %115

23:                                               ; preds = %2
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %27 = load i32, i32* @sync_data, align 4
  %28 = load i32, i32* @sync_data, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @migor_lcd_qvga_seq(i8* %25, %struct.sh_mobile_lcdc_sys_bus_ops* %26, i32 %27, i32 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %33 = call i32 @write_reg16(i8* %31, %struct.sh_mobile_lcdc_sys_bus_ops* %32, i32 164, i32 1)
  %34 = call i32 @mdelay(i32 10)
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %37 = load i32, i32* @magic0_data, align 4
  %38 = load i32, i32* @magic0_data, align 4
  %39 = call i32 @ARRAY_SIZE(i32 %38)
  %40 = call i32 @migor_lcd_qvga_seq(i8* %35, %struct.sh_mobile_lcdc_sys_bus_ops* %36, i32 %37, i32 %39)
  %41 = call i32 @mdelay(i32 100)
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %44 = load i32, i32* @magic1_data, align 4
  %45 = load i32, i32* @magic1_data, align 4
  %46 = call i32 @ARRAY_SIZE(i32 %45)
  %47 = call i32 @migor_lcd_qvga_seq(i8* %42, %struct.sh_mobile_lcdc_sys_bus_ops* %43, i32 %44, i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %50, 1
  %52 = sub i64 239, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @write_reg16(i8* %48, %struct.sh_mobile_lcdc_sys_bus_ops* %49, i32 80, i32 %53)
  %55 = load i8*, i8** %4, align 8
  %56 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %57 = call i32 @write_reg16(i8* %55, %struct.sh_mobile_lcdc_sys_bus_ops* %56, i32 81, i32 239)
  %58 = load i8*, i8** %4, align 8
  %59 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %60 = call i32 @write_reg16(i8* %58, %struct.sh_mobile_lcdc_sys_bus_ops* %59, i32 82, i32 0)
  %61 = load i8*, i8** %4, align 8
  %62 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = sub i64 %63, 1
  %65 = trunc i64 %64 to i32
  %66 = call i32 @write_reg16(i8* %61, %struct.sh_mobile_lcdc_sys_bus_ops* %62, i32 83, i32 %65)
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %69 = load i32, i32* @magic2_data, align 4
  %70 = load i32, i32* @magic2_data, align 4
  %71 = call i32 @ARRAY_SIZE(i32 %70)
  %72 = call i32 @migor_lcd_qvga_seq(i8* %67, %struct.sh_mobile_lcdc_sys_bus_ops* %68, i32 %69, i32 %71)
  %73 = call i32 @mdelay(i32 10)
  %74 = load i8*, i8** %4, align 8
  %75 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %76 = load i32, i32* @magic3_data, align 4
  %77 = load i32, i32* @magic3_data, align 4
  %78 = call i32 @ARRAY_SIZE(i32 %77)
  %79 = call i32 @migor_lcd_qvga_seq(i8* %74, %struct.sh_mobile_lcdc_sys_bus_ops* %75, i32 %76, i32 %78)
  %80 = call i32 @mdelay(i32 40)
  %81 = load i8*, i8** %4, align 8
  %82 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %83 = call i32 @write_reg16(i8* %81, %struct.sh_mobile_lcdc_sys_bus_ops* %82, i32 32, i32 0)
  %84 = load i8*, i8** %4, align 8
  %85 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %86 = call i32 @write_reg16(i8* %84, %struct.sh_mobile_lcdc_sys_bus_ops* %85, i32 33, i32 0)
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %97, %23
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %6, align 8
  %91 = mul i64 %90, 256
  %92 = icmp ult i64 %89, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load i8*, i8** %4, align 8
  %95 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %96 = call i32 @write_reg16(i8* %94, %struct.sh_mobile_lcdc_sys_bus_ops* %95, i32 34, i32 0)
  br label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %87

100:                                              ; preds = %87
  %101 = load i8*, i8** %4, align 8
  %102 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %103 = call i32 @write_reg16(i8* %101, %struct.sh_mobile_lcdc_sys_bus_ops* %102, i32 32, i32 0)
  %104 = load i8*, i8** %4, align 8
  %105 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %106 = call i32 @write_reg16(i8* %104, %struct.sh_mobile_lcdc_sys_bus_ops* %105, i32 33, i32 0)
  %107 = load i8*, i8** %4, align 8
  %108 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %109 = call i32 @write_reg16(i8* %107, %struct.sh_mobile_lcdc_sys_bus_ops* %108, i32 7, i32 371)
  %110 = call i32 @mdelay(i32 40)
  %111 = load i8*, i8** %4, align 8
  %112 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %113 = call i32 @write_reg(i8* %111, %struct.sh_mobile_lcdc_sys_bus_ops* %112, i32 0, i32 34)
  %114 = call i32 @mdelay(i32 100)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %100, %20
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @reset_lcd_module(...) #1

declare dso_local i32 @migor_lcd_qvga_seq(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @read_reg16(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @write_reg16(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @write_reg(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
