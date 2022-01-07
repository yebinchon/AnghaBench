; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_generic_get_column.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_generic_get_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }

@opalmethod = common dso_local global i32* null, align 8
@OPAL_GET = common dso_local global i64 0, align 8
@OPAL_STARTLIST = common dso_local global i32 0, align 4
@OPAL_STARTNAME = common dso_local global i32 0, align 4
@OPAL_STARTCOLUMN = common dso_local global i32 0, align 4
@OPAL_ENDNAME = common dso_local global i32 0, align 4
@OPAL_ENDCOLUMN = common dso_local global i32 0, align 4
@OPAL_ENDLIST = common dso_local global i32 0, align 4
@parse_and_check_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i32*, i32)* @generic_get_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_get_column(%struct.opal_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.opal_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** @opalmethod, align 8
  %12 = load i64, i64* @OPAL_GET, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cmd_start(%struct.opal_dev* %9, i32* %10, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %17 = load i32, i32* @OPAL_STARTLIST, align 4
  %18 = call i32 @add_token_u8(i32* %8, %struct.opal_dev* %16, i32 %17)
  %19 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %20 = load i32, i32* @OPAL_STARTNAME, align 4
  %21 = call i32 @add_token_u8(i32* %8, %struct.opal_dev* %19, i32 %20)
  %22 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %23 = load i32, i32* @OPAL_STARTCOLUMN, align 4
  %24 = call i32 @add_token_u8(i32* %8, %struct.opal_dev* %22, i32 %23)
  %25 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @add_token_u64(i32* %8, %struct.opal_dev* %25, i32 %26)
  %28 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %29 = load i32, i32* @OPAL_ENDNAME, align 4
  %30 = call i32 @add_token_u8(i32* %8, %struct.opal_dev* %28, i32 %29)
  %31 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %32 = load i32, i32* @OPAL_STARTNAME, align 4
  %33 = call i32 @add_token_u8(i32* %8, %struct.opal_dev* %31, i32 %32)
  %34 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %35 = load i32, i32* @OPAL_ENDCOLUMN, align 4
  %36 = call i32 @add_token_u8(i32* %8, %struct.opal_dev* %34, i32 %35)
  %37 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @add_token_u64(i32* %8, %struct.opal_dev* %37, i32 %38)
  %40 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %41 = load i32, i32* @OPAL_ENDNAME, align 4
  %42 = call i32 @add_token_u8(i32* %8, %struct.opal_dev* %40, i32 %41)
  %43 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %44 = load i32, i32* @OPAL_ENDLIST, align 4
  %45 = call i32 @add_token_u8(i32* %8, %struct.opal_dev* %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %3
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %54

50:                                               ; preds = %3
  %51 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %52 = load i32, i32* @parse_and_check_status, align 4
  %53 = call i32 @finalize_and_send(%struct.opal_dev* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %48
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @cmd_start(%struct.opal_dev*, i32*, i32) #1

declare dso_local i32 @add_token_u8(i32*, %struct.opal_dev*, i32) #1

declare dso_local i32 @add_token_u64(i32*, %struct.opal_dev*, i32) #1

declare dso_local i32 @finalize_and_send(%struct.opal_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
