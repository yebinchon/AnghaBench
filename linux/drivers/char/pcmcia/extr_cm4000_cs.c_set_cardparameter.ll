; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4000_cs.c_set_cardparameter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4000_cs.c_set_cardparameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8, i32, i32 }
%struct.cm4000_dev = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"-> set_cardparameter\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"flags1 = 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"baudv = %i -> write 0x%02x\0A\00", align 1
@card_fixups = common dso_local global %struct.TYPE_7__* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"<- set_cardparameter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm4000_dev*)* @set_cardparameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cardparameter(%struct.cm4000_dev* %0) #0 {
  %2 = alloca %struct.cm4000_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.cm4000_dev* %0, %struct.cm4000_dev** %2, align 8
  %6 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %10, i64 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  store i8 2, i8* %5, align 1
  %15 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %16 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 3, %struct.cm4000_dev* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %18 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %21 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %23, 256
  %25 = ashr i32 %24, 8
  %26 = or i32 %19, %25
  %27 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %28 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %30 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = trunc i32 %31 to i8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @REG_FLAGS1(i32 %33)
  %35 = call i32 @xoutb(i8 zeroext %32, i32 %34)
  %36 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %37 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %38 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 5, %struct.cm4000_dev* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %42 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %44, 255
  %46 = trunc i32 %45 to i8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @REG_BAUDRATE(i32 %47)
  %49 = call i32 @xoutb(i8 zeroext %46, i32 %48)
  %50 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %51 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %52 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %55 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %57, 255
  %59 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 5, %struct.cm4000_dev* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %91, %1
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @card_fixups, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %60
  %66 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %67 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @card_fixups, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** @card_fixups, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcmp(i32 %68, i32 %74, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %65
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @card_fixups, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i8, i8* %88, align 4
  store i8 %89, i8* %5, align 1
  br label %90

90:                                               ; preds = %83, %65
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %60

94:                                               ; preds = %60
  %95 = load i8, i8* %5, align 1
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @REG_STOPBITS(i32 %96)
  %98 = call i32 @xoutb(i8 zeroext %95, i32 %97)
  %99 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %100 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 3, %struct.cm4000_dev* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DEBUGP(i32, %struct.cm4000_dev*, i8*, ...) #1

declare dso_local i32 @xoutb(i8 zeroext, i32) #1

declare dso_local i32 @REG_FLAGS1(i32) #1

declare dso_local i32 @REG_BAUDRATE(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @REG_STOPBITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
