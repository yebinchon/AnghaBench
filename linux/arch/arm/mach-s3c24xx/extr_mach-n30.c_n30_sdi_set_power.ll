; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-n30.c_n30_sdi_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-n30.c_n30_sdi_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i16)* @n30_sdi_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n30_sdi_set_power(i8 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  store i8 %0, i8* %3, align 1
  store i16 %1, i16* %4, align 2
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  switch i32 %6, label %11 [
    i32 129, label %7
    i32 128, label %7
    i32 130, label %10
  ]

7:                                                ; preds = %2, %2
  %8 = call i32 @S3C2410_GPG(i32 4)
  %9 = call i32 @gpio_set_value(i32 %8, i32 1)
  br label %14

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %2, %10
  %12 = call i32 @S3C2410_GPG(i32 4)
  %13 = call i32 @gpio_set_value(i32 %12, i32 0)
  br label %14

14:                                               ; preds = %11, %7
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @S3C2410_GPG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
