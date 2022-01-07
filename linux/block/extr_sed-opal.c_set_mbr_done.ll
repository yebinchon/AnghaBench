; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_set_mbr_done.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_set_mbr_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }

@opaluid = common dso_local global i32* null, align 8
@OPAL_MBRCONTROL = common dso_local global i64 0, align 8
@opalmethod = common dso_local global i32* null, align 8
@OPAL_SET = common dso_local global i64 0, align 8
@OPAL_STARTNAME = common dso_local global i32 0, align 4
@OPAL_VALUES = common dso_local global i32 0, align 4
@OPAL_STARTLIST = common dso_local global i32 0, align 4
@OPAL_MBRDONE = common dso_local global i32 0, align 4
@OPAL_ENDNAME = common dso_local global i32 0, align 4
@OPAL_ENDLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error Building set MBR Done command\0A\00", align 1
@parse_and_check_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @set_mbr_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mbr_done(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %11 = load i32*, i32** @opaluid, align 8
  %12 = load i64, i64* @OPAL_MBRCONTROL, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @opalmethod, align 8
  %16 = load i64, i64* @OPAL_SET, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cmd_start(%struct.opal_dev* %10, i32 %14, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %21 = load i32, i32* @OPAL_STARTNAME, align 4
  %22 = call i32 @add_token_u8(i32* %7, %struct.opal_dev* %20, i32 %21)
  %23 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %24 = load i32, i32* @OPAL_VALUES, align 4
  %25 = call i32 @add_token_u8(i32* %7, %struct.opal_dev* %23, i32 %24)
  %26 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %27 = load i32, i32* @OPAL_STARTLIST, align 4
  %28 = call i32 @add_token_u8(i32* %7, %struct.opal_dev* %26, i32 %27)
  %29 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %30 = load i32, i32* @OPAL_STARTNAME, align 4
  %31 = call i32 @add_token_u8(i32* %7, %struct.opal_dev* %29, i32 %30)
  %32 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %33 = load i32, i32* @OPAL_MBRDONE, align 4
  %34 = call i32 @add_token_u8(i32* %7, %struct.opal_dev* %32, i32 %33)
  %35 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @add_token_u8(i32* %7, %struct.opal_dev* %35, i32 %37)
  %39 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %40 = load i32, i32* @OPAL_ENDNAME, align 4
  %41 = call i32 @add_token_u8(i32* %7, %struct.opal_dev* %39, i32 %40)
  %42 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %43 = load i32, i32* @OPAL_ENDLIST, align 4
  %44 = call i32 @add_token_u8(i32* %7, %struct.opal_dev* %42, i32 %43)
  %45 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %46 = load i32, i32* @OPAL_ENDNAME, align 4
  %47 = call i32 @add_token_u8(i32* %7, %struct.opal_dev* %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %2
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %57

53:                                               ; preds = %2
  %54 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %55 = load i32, i32* @parse_and_check_status, align 4
  %56 = call i32 @finalize_and_send(%struct.opal_dev* %54, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @cmd_start(%struct.opal_dev*, i32, i32) #1

declare dso_local i32 @add_token_u8(i32*, %struct.opal_dev*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @finalize_and_send(%struct.opal_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
