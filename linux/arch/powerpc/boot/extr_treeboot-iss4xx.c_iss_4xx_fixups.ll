; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_treeboot-iss4xx.c_iss_4xx_fixups.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_treeboot-iss4xx.c_iss_4xx_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"/memory\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't find memory node\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ibm4xx_memstart = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @iss_4xx_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iss_4xx_fixups() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [3 x i64], align 16
  %3 = call i8* @finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i8*, i8** %1, align 8
  %10 = getelementptr inbounds [3 x i64], [3 x i64]* %2, i64 0, i64 0
  %11 = call i32 @getprop(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64* %10, i32 24)
  %12 = getelementptr inbounds [3 x i64], [3 x i64]* %2, i64 0, i64 2
  %13 = load i64, i64* %12, align 16
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = getelementptr inbounds [3 x i64], [3 x i64]* %2, i64 0, i64 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* @ibm4xx_memstart, align 8
  br label %20

18:                                               ; preds = %8
  %19 = call i32 (...) @ibm4xx_sdram_fixup_memsize()
  br label %20

20:                                               ; preds = %18, %15
  ret void
}

declare dso_local i8* @finddevice(i8*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @getprop(i8*, i8*, i64*, i32) #1

declare dso_local i32 @ibm4xx_sdram_fixup_memsize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
