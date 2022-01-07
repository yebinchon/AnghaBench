; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc_npcm7xx.c_npcm7xx_kcs_inb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc_npcm7xx.c_npcm7xx_kcs_inb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcs_bmc = type { i32 }
%struct.npcm7xx_kcs_bmc = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"regmap_read() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kcs_bmc*, i64)* @npcm7xx_kcs_inb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm7xx_kcs_inb(%struct.kcs_bmc* %0, i64 %1) #0 {
  %3 = alloca %struct.kcs_bmc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.npcm7xx_kcs_bmc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.kcs_bmc* %0, %struct.kcs_bmc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.kcs_bmc*, %struct.kcs_bmc** %3, align 8
  %9 = call %struct.npcm7xx_kcs_bmc* @kcs_bmc_priv(%struct.kcs_bmc* %8)
  store %struct.npcm7xx_kcs_bmc* %9, %struct.npcm7xx_kcs_bmc** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.npcm7xx_kcs_bmc*, %struct.npcm7xx_kcs_bmc** %5, align 8
  %11 = getelementptr inbounds %struct.npcm7xx_kcs_bmc, %struct.npcm7xx_kcs_bmc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @regmap_read(i32 %12, i64 %13, i64* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @WARN(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ]
  ret i32 %27
}

declare dso_local %struct.npcm7xx_kcs_bmc* @kcs_bmc_priv(%struct.kcs_bmc*) #1

declare dso_local i32 @regmap_read(i32, i64, i64*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
