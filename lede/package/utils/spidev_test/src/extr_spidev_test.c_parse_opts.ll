; ModuleID = '/home/carl/AnghaBench/lede/package/utils/spidev_test/src/extr_spidev_test.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/spidev_test/src/extr_spidev_test.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i8, i32 }

@parse_opts.lopts = internal constant [16 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1, i8 0, i32 68 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1, i8 0, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 1, i8 0, i32 100 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 1, i8 0, i32 98 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i8 0, i32 108 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 0, i8 0, i32 72 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 0, i8 0, i32 79 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 0, i8 0, i32 76 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 0, i8 0, i32 67 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 0, i8 0, i32 51 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 0, i8 0, i32 78 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 0, i8 0, i32 82 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 0, i8 0, i32 50 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i8 0, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 0, i8 0, i32 52 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"bpw\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"cpha\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"cpol\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"lsb\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"cs-high\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"3wire\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"no-cs\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dual\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"quad\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"D:s:d:b:lHOLC3NR24p:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@device = common dso_local global i8* null, align 8
@speed = common dso_local global i8* null, align 8
@delay = common dso_local global i8* null, align 8
@bits = common dso_local global i8* null, align 8
@SPI_LOOP = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@SPI_NO_CS = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@SPI_READY = common dso_local global i32 0, align 4
@input_tx = common dso_local global i8* null, align 8
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %2, %74
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt_long(i32 %7, i8** %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([16 x %struct.option], [16 x %struct.option]* @parse_opts.lopts, i64 0, i64 0), i32* null)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %75

13:                                               ; preds = %6
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %69 [
    i32 68, label %15
    i32 115, label %17
    i32 100, label %20
    i32 98, label %23
    i32 108, label %26
    i32 72, label %30
    i32 79, label %34
    i32 76, label %38
    i32 67, label %42
    i32 51, label %46
    i32 78, label %50
    i32 118, label %54
    i32 82, label %55
    i32 112, label %59
    i32 50, label %61
    i32 52, label %65
  ]

15:                                               ; preds = %13
  %16 = load i8*, i8** @optarg, align 8
  store i8* %16, i8** @device, align 8
  br label %74

17:                                               ; preds = %13
  %18 = load i8*, i8** @optarg, align 8
  %19 = call i8* @atoi(i8* %18)
  store i8* %19, i8** @speed, align 8
  br label %74

20:                                               ; preds = %13
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i8* @atoi(i8* %21)
  store i8* %22, i8** @delay, align 8
  br label %74

23:                                               ; preds = %13
  %24 = load i8*, i8** @optarg, align 8
  %25 = call i8* @atoi(i8* %24)
  store i8* %25, i8** @bits, align 8
  br label %74

26:                                               ; preds = %13
  %27 = load i32, i32* @SPI_LOOP, align 4
  %28 = load i32, i32* @mode, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* @mode, align 4
  br label %74

30:                                               ; preds = %13
  %31 = load i32, i32* @SPI_CPHA, align 4
  %32 = load i32, i32* @mode, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* @mode, align 4
  br label %74

34:                                               ; preds = %13
  %35 = load i32, i32* @SPI_CPOL, align 4
  %36 = load i32, i32* @mode, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* @mode, align 4
  br label %74

38:                                               ; preds = %13
  %39 = load i32, i32* @SPI_LSB_FIRST, align 4
  %40 = load i32, i32* @mode, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* @mode, align 4
  br label %74

42:                                               ; preds = %13
  %43 = load i32, i32* @SPI_CS_HIGH, align 4
  %44 = load i32, i32* @mode, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* @mode, align 4
  br label %74

46:                                               ; preds = %13
  %47 = load i32, i32* @SPI_3WIRE, align 4
  %48 = load i32, i32* @mode, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @mode, align 4
  br label %74

50:                                               ; preds = %13
  %51 = load i32, i32* @SPI_NO_CS, align 4
  %52 = load i32, i32* @mode, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* @mode, align 4
  br label %74

54:                                               ; preds = %13
  store i32 1, i32* @verbose, align 4
  br label %74

55:                                               ; preds = %13
  %56 = load i32, i32* @SPI_READY, align 4
  %57 = load i32, i32* @mode, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* @mode, align 4
  br label %74

59:                                               ; preds = %13
  %60 = load i8*, i8** @optarg, align 8
  store i8* %60, i8** @input_tx, align 8
  br label %74

61:                                               ; preds = %13
  %62 = load i32, i32* @SPI_TX_DUAL, align 4
  %63 = load i32, i32* @mode, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* @mode, align 4
  br label %74

65:                                               ; preds = %13
  %66 = load i32, i32* @SPI_TX_QUAD, align 4
  %67 = load i32, i32* @mode, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* @mode, align 4
  br label %74

69:                                               ; preds = %13
  %70 = load i8**, i8*** %4, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @print_usage(i8* %72)
  br label %74

74:                                               ; preds = %69, %65, %61, %59, %55, %54, %50, %46, %42, %38, %34, %30, %26, %23, %20, %17, %15
  br label %6

75:                                               ; preds = %12
  %76 = load i32, i32* @mode, align 4
  %77 = load i32, i32* @SPI_LOOP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = load i32, i32* @mode, align 4
  %82 = load i32, i32* @SPI_TX_DUAL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @SPI_RX_DUAL, align 4
  %87 = load i32, i32* @mode, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* @mode, align 4
  br label %89

89:                                               ; preds = %85, %80
  %90 = load i32, i32* @mode, align 4
  %91 = load i32, i32* @SPI_TX_QUAD, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @SPI_RX_QUAD, align 4
  %96 = load i32, i32* @mode, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* @mode, align 4
  br label %98

98:                                               ; preds = %94, %89
  br label %99

99:                                               ; preds = %98, %75
  ret void
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @print_usage(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
