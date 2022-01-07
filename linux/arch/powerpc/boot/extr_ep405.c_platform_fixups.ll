; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_ep405.c_platform_fixups.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_ep405.c_platform_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mem_size = common dso_local global i32 0, align 4
@table = common dso_local global i32 0, align 4
@PLANETCORE_KEY_CRYSTAL_HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"No PlanetCore crystal frequency key.\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/plb/ebc\00", align 1
@PLANETCORE_KEY_KB_NVRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"No PlanetCore NVRAM size key.\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"/plb/ebc/nvrtc@4,200000\00", align 1
@__const.platform_fixups.reg = private unnamed_addr constant [3 x i32] [i32 4, i32 2097152, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @platform_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platform_fixups() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [3 x i32], align 4
  %4 = load i32, i32* @mem_size, align 4
  %5 = call i32 @dt_fixup_memory(i32 0, i32 %4)
  %6 = load i32, i32* @table, align 4
  %7 = call i32 @planetcore_set_mac_addrs(i32 %6)
  %8 = load i32, i32* @table, align 4
  %9 = load i32, i32* @PLANETCORE_KEY_CRYSTAL_HZ, align 4
  %10 = call i32 @planetcore_get_decimal(i32 %8, i32 %9, i32* %1)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %40

14:                                               ; preds = %0
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @ibm405gp_fixup_clocks(i32 %15, i32 11059200)
  %17 = call i32 @ibm4xx_quiesce_eth(i32* inttoptr (i64 4016048128 to i32*), i32* null)
  %18 = call i32 @ibm4xx_fixup_ebc_ranges(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @table, align 4
  %20 = load i32, i32* @PLANETCORE_KEY_KB_NVRAM, align 4
  %21 = call i32 @planetcore_get_decimal(i32 %19, i32 %20, i32* %1)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %40

25:                                               ; preds = %14
  %26 = call i8* @finddevice(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i8* %26, i8** %2, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = bitcast [3 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast ([3 x i32]* @__const.platform_fixups.reg to i8*), i64 12, i1 false)
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %33 = call i32 @getprop(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %32, i32 3)
  %34 = load i32, i32* %1, align 4
  %35 = shl i32 %34, 10
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  store i32 %35, i32* %36, align 4
  %37 = load i8*, i8** %2, align 8
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %39 = call i32 @setprop(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %38, i32 3)
  br label %40

40:                                               ; preds = %12, %23, %29, %25
  ret void
}

declare dso_local i32 @dt_fixup_memory(i32, i32) #1

declare dso_local i32 @planetcore_set_mac_addrs(i32) #1

declare dso_local i32 @planetcore_get_decimal(i32, i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ibm405gp_fixup_clocks(i32, i32) #1

declare dso_local i32 @ibm4xx_quiesce_eth(i32*, i32*) #1

declare dso_local i32 @ibm4xx_fixup_ebc_ranges(i8*) #1

declare dso_local i8* @finddevice(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @getprop(i8*, i8*, i32*, i32) #1

declare dso_local i32 @setprop(i8*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
