; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_bcmalgo.c_dump_header.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_bcmalgo.c_dump_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"=== Header Information ===\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Header magic:\090x%04X\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Control:\090x%04X (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Major rev. :\090x%04X\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Minor rev. :\090x%04X\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"File name :\09%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"File length:\09%d bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"Build time:\090x%08X //FixMe: print in human-readable form\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"HCS:\09\090x%04X  \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"(OK!)\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"(ERROR! expected 0x%04X)\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Load address:\090x%08X\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"HNW:\09\090x%04X\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"CRC:\09\090x%08X\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"=== Binary Header Dump===\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"0x%02x   \00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"\0A\0A== End Of Header dump ==\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_header(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @reverse_endian16(i32 %11)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @reverse_endian16(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @get_control_info(i32 %20)
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %17, i8* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @reverse_endian16(i32 %25)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @reverse_endian16(i32 %30)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 6
  %35 = bitcast i32* %34 to i8*
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @reverse_endian32(i32 %39)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @reverse_endian32(i32 %44)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @reverse_endian16(i32 %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = call i32 @get_hcs(%struct.TYPE_4__* %52)
  store i32 %53, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @reverse_endian16(i32 %57)
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %1
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %65

62:                                               ; preds = %1
  %63 = load i32, i32* %3, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %63)
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %60
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @reverse_endian32(i32 %68)
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @reverse_endian16(i32 %73)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @reverse_endian32(i32 %78)
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %79)
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = bitcast %struct.TYPE_4__* %82 to i32*
  store i32* %83, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %101, %65
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp ule i64 %86, 44
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = srem i32 %89, 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %84

104:                                              ; preds = %84
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @reverse_endian16(i32) #1

declare dso_local i8* @get_control_info(i32) #1

declare dso_local i32 @reverse_endian32(i32) #1

declare dso_local i32 @get_hcs(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
