; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_generic_pw_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_generic_pw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }

@opalmethod = common dso_local global i32* null, align 8
@OPAL_SET = common dso_local global i64 0, align 8
@OPAL_STARTNAME = common dso_local global i32 0, align 4
@OPAL_VALUES = common dso_local global i32 0, align 4
@OPAL_STARTLIST = common dso_local global i32 0, align 4
@OPAL_PIN = common dso_local global i32 0, align 4
@OPAL_ENDNAME = common dso_local global i32 0, align 4
@OPAL_ENDLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, %struct.opal_dev*)* @generic_pw_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_pw_cmd(i32* %0, i64 %1, i32* %2, %struct.opal_dev* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.opal_dev*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.opal_dev* %3, %struct.opal_dev** %8, align 8
  %10 = load %struct.opal_dev*, %struct.opal_dev** %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32*, i32** @opalmethod, align 8
  %13 = load i64, i64* @OPAL_SET, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cmd_start(%struct.opal_dev* %10, i32* %11, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.opal_dev*, %struct.opal_dev** %8, align 8
  %18 = load i32, i32* @OPAL_STARTNAME, align 4
  %19 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %17, i32 %18)
  %20 = load %struct.opal_dev*, %struct.opal_dev** %8, align 8
  %21 = load i32, i32* @OPAL_VALUES, align 4
  %22 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %20, i32 %21)
  %23 = load %struct.opal_dev*, %struct.opal_dev** %8, align 8
  %24 = load i32, i32* @OPAL_STARTLIST, align 4
  %25 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %23, i32 %24)
  %26 = load %struct.opal_dev*, %struct.opal_dev** %8, align 8
  %27 = load i32, i32* @OPAL_STARTNAME, align 4
  %28 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %26, i32 %27)
  %29 = load %struct.opal_dev*, %struct.opal_dev** %8, align 8
  %30 = load i32, i32* @OPAL_PIN, align 4
  %31 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %29, i32 %30)
  %32 = load %struct.opal_dev*, %struct.opal_dev** %8, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @add_token_bytestring(i32* %9, %struct.opal_dev* %32, i32* %33, i64 %34)
  %36 = load %struct.opal_dev*, %struct.opal_dev** %8, align 8
  %37 = load i32, i32* @OPAL_ENDNAME, align 4
  %38 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %36, i32 %37)
  %39 = load %struct.opal_dev*, %struct.opal_dev** %8, align 8
  %40 = load i32, i32* @OPAL_ENDLIST, align 4
  %41 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %39, i32 %40)
  %42 = load %struct.opal_dev*, %struct.opal_dev** %8, align 8
  %43 = load i32, i32* @OPAL_ENDNAME, align 4
  %44 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @cmd_start(%struct.opal_dev*, i32*, i32) #1

declare dso_local i32 @add_token_u8(i32*, %struct.opal_dev*, i32) #1

declare dso_local i32 @add_token_bytestring(i32*, %struct.opal_dev*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
