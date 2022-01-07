; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_generic_lr_enable_disable.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_generic_lr_enable_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }

@opalmethod = common dso_local global i32* null, align 8
@OPAL_SET = common dso_local global i64 0, align 8
@OPAL_STARTNAME = common dso_local global i32 0, align 4
@OPAL_VALUES = common dso_local global i32 0, align 4
@OPAL_STARTLIST = common dso_local global i32 0, align 4
@OPAL_READLOCKENABLED = common dso_local global i32 0, align 4
@OPAL_ENDNAME = common dso_local global i32 0, align 4
@OPAL_WRITELOCKENABLED = common dso_local global i32 0, align 4
@OPAL_READLOCKED = common dso_local global i32 0, align 4
@OPAL_WRITELOCKED = common dso_local global i32 0, align 4
@OPAL_ENDLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i32*, i32, i32, i32, i32)* @generic_lr_enable_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_lr_enable_disable(%struct.opal_dev* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.opal_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** @opalmethod, align 8
  %17 = load i64, i64* @OPAL_SET, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cmd_start(%struct.opal_dev* %14, i32* %15, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %22 = load i32, i32* @OPAL_STARTNAME, align 4
  %23 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %21, i32 %22)
  %24 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %25 = load i32, i32* @OPAL_VALUES, align 4
  %26 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %24, i32 %25)
  %27 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %28 = load i32, i32* @OPAL_STARTLIST, align 4
  %29 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %27, i32 %28)
  %30 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %31 = load i32, i32* @OPAL_STARTNAME, align 4
  %32 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %30, i32 %31)
  %33 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %34 = load i32, i32* @OPAL_READLOCKENABLED, align 4
  %35 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %33, i32 %34)
  %36 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %36, i32 %37)
  %39 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %40 = load i32, i32* @OPAL_ENDNAME, align 4
  %41 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %39, i32 %40)
  %42 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %43 = load i32, i32* @OPAL_STARTNAME, align 4
  %44 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %42, i32 %43)
  %45 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %46 = load i32, i32* @OPAL_WRITELOCKENABLED, align 4
  %47 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %45, i32 %46)
  %48 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %48, i32 %49)
  %51 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %52 = load i32, i32* @OPAL_ENDNAME, align 4
  %53 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %51, i32 %52)
  %54 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %55 = load i32, i32* @OPAL_STARTNAME, align 4
  %56 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %54, i32 %55)
  %57 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %58 = load i32, i32* @OPAL_READLOCKED, align 4
  %59 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %57, i32 %58)
  %60 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %60, i32 %61)
  %63 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %64 = load i32, i32* @OPAL_ENDNAME, align 4
  %65 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %63, i32 %64)
  %66 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %67 = load i32, i32* @OPAL_STARTNAME, align 4
  %68 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %66, i32 %67)
  %69 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %70 = load i32, i32* @OPAL_WRITELOCKED, align 4
  %71 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %69, i32 %70)
  %72 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %72, i32 %73)
  %75 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %76 = load i32, i32* @OPAL_ENDNAME, align 4
  %77 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %75, i32 %76)
  %78 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %79 = load i32, i32* @OPAL_ENDLIST, align 4
  %80 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %78, i32 %79)
  %81 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %82 = load i32, i32* @OPAL_ENDNAME, align 4
  %83 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %81, i32 %82)
  %84 = load i32, i32* %13, align 4
  ret i32 %84
}

declare dso_local i32 @cmd_start(%struct.opal_dev*, i32*, i32) #1

declare dso_local i32 @add_token_u8(i32*, %struct.opal_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
