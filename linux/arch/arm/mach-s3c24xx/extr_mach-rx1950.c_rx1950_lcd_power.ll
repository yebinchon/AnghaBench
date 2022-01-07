; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-rx1950.c_rx1950_lcd_power.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-rx1950.c_rx1950_lcd_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rx1950_lcd_power.enabled = internal global i32 0, align 4
@lcd_pwm = common dso_local global i32 0, align 4
@LCD_PWM_PERIOD = common dso_local global i32 0, align 4
@LCD_PWM_DUTY = common dso_local global i32 0, align 4
@S3C2410_GPB1_TOUT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rx1950_lcd_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx1950_lcd_power(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @rx1950_lcd_power.enabled, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %180

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %110, label %11

11:                                               ; preds = %8
  store i32 11, i32* %3, align 4
  br label %12

12:                                               ; preds = %19, %11
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @S3C2410_GPC(i32 %16)
  %18 = call i32 @gpio_direction_output(i32 %17, i32 1)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %12

22:                                               ; preds = %12
  %23 = call i32 @mdelay(i32 100)
  store i32 2, i32* %3, align 4
  br label %24

24:                                               ; preds = %31, %22
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @S3C2410_GPD(i32 %28)
  %30 = call i32 @gpio_direction_output(i32 %29, i32 1)
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %24

34:                                               ; preds = %24
  store i32 11, i32* %3, align 4
  br label %35

35:                                               ; preds = %42, %34
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @S3C2410_GPD(i32 %39)
  %41 = call i32 @gpio_direction_output(i32 %40, i32 1)
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %35

45:                                               ; preds = %35
  %46 = call i32 @mdelay(i32 100)
  %47 = call i32 @S3C2410_GPB(i32 0)
  %48 = call i32 @gpio_direction_output(i32 %47, i32 0)
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %56, %45
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 5
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @S3C2410_GPC(i32 %53)
  %55 = call i32 @gpio_direction_output(i32 %54, i32 0)
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %49

59:                                               ; preds = %49
  store i32 11, i32* %3, align 4
  br label %60

60:                                               ; preds = %67, %59
  %61 = load i32, i32* %3, align 4
  %62 = icmp slt i32 %61, 16
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @S3C2410_GPC(i32 %64)
  %66 = call i32 @gpio_direction_output(i32 %65, i32 0)
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %60

70:                                               ; preds = %60
  store i32 11, i32* %3, align 4
  br label %71

71:                                               ; preds = %78, %70
  %72 = load i32, i32* %3, align 4
  %73 = icmp slt i32 %72, 16
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @S3C2410_GPD(i32 %75)
  %77 = call i32 @gpio_direction_output(i32 %76, i32 0)
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %71

81:                                               ; preds = %71
  store i32 2, i32* %3, align 4
  br label %82

82:                                               ; preds = %89, %81
  %83 = load i32, i32* %3, align 4
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @S3C2410_GPD(i32 %86)
  %88 = call i32 @gpio_direction_output(i32 %87, i32 0)
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %82

92:                                               ; preds = %82
  %93 = call i32 @S3C2410_GPC(i32 6)
  %94 = call i32 @gpio_direction_output(i32 %93, i32 0)
  %95 = call i32 @S3C2410_GPC(i32 7)
  %96 = call i32 @gpio_direction_output(i32 %95, i32 0)
  %97 = call i32 @S3C2410_GPC(i32 5)
  %98 = call i32 @gpio_direction_output(i32 %97, i32 0)
  %99 = call i32 @S3C2410_GPB(i32 1)
  %100 = call i32 @gpio_direction_output(i32 %99, i32 0)
  %101 = load i32, i32* @lcd_pwm, align 4
  %102 = load i32, i32* @LCD_PWM_PERIOD, align 4
  %103 = call i32 @pwm_config(i32 %101, i32 0, i32 %102)
  %104 = load i32, i32* @lcd_pwm, align 4
  %105 = call i32 @pwm_disable(i32 %104)
  %106 = call i32 @S3C2410_GPC(i32 0)
  %107 = call i32 @gpio_direction_output(i32 %106, i32 0)
  %108 = call i32 @S3C2410_GPC(i32 10)
  %109 = call i32 @gpio_direction_output(i32 %108, i32 0)
  br label %178

110:                                              ; preds = %8
  %111 = load i32, i32* @lcd_pwm, align 4
  %112 = load i32, i32* @LCD_PWM_DUTY, align 4
  %113 = load i32, i32* @LCD_PWM_PERIOD, align 4
  %114 = call i32 @pwm_config(i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* @lcd_pwm, align 4
  %116 = call i32 @pwm_enable(i32 %115)
  %117 = call i32 @S3C2410_GPC(i32 0)
  %118 = call i32 @gpio_direction_output(i32 %117, i32 1)
  %119 = call i32 @S3C2410_GPC(i32 5)
  %120 = call i32 @gpio_direction_output(i32 %119, i32 1)
  %121 = call i32 @S3C2410_GPB(i32 1)
  %122 = load i32, i32* @S3C2410_GPB1_TOUT1, align 4
  %123 = call i32 @s3c_gpio_cfgpin(i32 %121, i32 %122)
  %124 = call i32 @S3C2410_GPC(i32 7)
  %125 = call i32 @gpio_direction_output(i32 %124, i32 1)
  store i32 1, i32* %3, align 4
  br label %126

126:                                              ; preds = %134, %110
  %127 = load i32, i32* %3, align 4
  %128 = icmp slt i32 %127, 5
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @S3C2410_GPC(i32 %130)
  %132 = call i32 @S3C_GPIO_SFN(i32 2)
  %133 = call i32 @s3c_gpio_cfgpin(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %126

137:                                              ; preds = %126
  store i32 11, i32* %3, align 4
  br label %138

138:                                              ; preds = %146, %137
  %139 = load i32, i32* %3, align 4
  %140 = icmp slt i32 %139, 16
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @S3C2410_GPC(i32 %142)
  %144 = call i32 @S3C_GPIO_SFN(i32 2)
  %145 = call i32 @s3c_gpio_cfgpin(i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %3, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %3, align 4
  br label %138

149:                                              ; preds = %138
  store i32 2, i32* %3, align 4
  br label %150

150:                                              ; preds = %158, %149
  %151 = load i32, i32* %3, align 4
  %152 = icmp slt i32 %151, 8
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @S3C2410_GPD(i32 %154)
  %156 = call i32 @S3C_GPIO_SFN(i32 2)
  %157 = call i32 @s3c_gpio_cfgpin(i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %3, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %3, align 4
  br label %150

161:                                              ; preds = %150
  store i32 11, i32* %3, align 4
  br label %162

162:                                              ; preds = %170, %161
  %163 = load i32, i32* %3, align 4
  %164 = icmp slt i32 %163, 16
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load i32, i32* %3, align 4
  %167 = call i32 @S3C2410_GPD(i32 %166)
  %168 = call i32 @S3C_GPIO_SFN(i32 2)
  %169 = call i32 @s3c_gpio_cfgpin(i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %165
  %171 = load i32, i32* %3, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %3, align 4
  br label %162

173:                                              ; preds = %162
  %174 = call i32 @S3C2410_GPC(i32 10)
  %175 = call i32 @gpio_direction_output(i32 %174, i32 1)
  %176 = call i32 @S3C2410_GPC(i32 6)
  %177 = call i32 @gpio_direction_output(i32 %176, i32 1)
  br label %178

178:                                              ; preds = %173, %92
  %179 = load i32, i32* %2, align 4
  store i32 %179, i32* @rx1950_lcd_power.enabled, align 4
  br label %180

180:                                              ; preds = %178, %7
  ret void
}

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @S3C2410_GPC(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @S3C2410_GPD(i32) #1

declare dso_local i32 @S3C2410_GPB(i32) #1

declare dso_local i32 @pwm_config(i32, i32, i32) #1

declare dso_local i32 @pwm_disable(i32) #1

declare dso_local i32 @pwm_enable(i32) #1

declare dso_local i32 @s3c_gpio_cfgpin(i32, i32) #1

declare dso_local i32 @S3C_GPIO_SFN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
