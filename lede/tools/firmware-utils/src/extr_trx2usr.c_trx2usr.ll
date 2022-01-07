; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_trx2usr.c_trx2usr.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_trx2usr.c_trx2usr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usr_header = type { i64, i32, i64*, i32, i32, i32, i32 }

@USR_MAGIC = common dso_local global i32 0, align 4
@CRC32_INIT = common dso_local global i32 0, align 4
@EPI_VERSION = common dso_local global i32 0, align 4
@COMPAT_ID = common dso_local global i32 0, align 4
@HARDWARE_REV = common dso_local global i32 0, align 4
@buf = common dso_local global %struct.usr_header zeroinitializer, align 8
@CHUNK = common dso_local global i32 0, align 4
@TRX_MAGIC = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Input is not a TRX file\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Empty input\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Read error\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Write error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @trx2usr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trx2usr(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usr_header, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @USR_MAGIC, align 4
  %9 = getelementptr inbounds %struct.usr_header, %struct.usr_header* %6, i32 0, i32 6
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.usr_header, %struct.usr_header* %6, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @CRC32_INIT, align 4
  %12 = getelementptr inbounds %struct.usr_header, %struct.usr_header* %6, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @EPI_VERSION, align 4
  %14 = getelementptr inbounds %struct.usr_header, %struct.usr_header* %6, i32 0, i32 5
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @COMPAT_ID, align 4
  %16 = getelementptr inbounds %struct.usr_header, %struct.usr_header* %6, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @HARDWARE_REV, align 4
  %18 = getelementptr inbounds %struct.usr_header, %struct.usr_header* %6, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.usr_header, %struct.usr_header* %6, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.usr_header, %struct.usr_header* %6, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  store i64 0, i64* %24, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @fwrite(%struct.usr_header* %6, i32 40, i32 1, i32* %25)
  br label %27

27:                                               ; preds = %43, %2
  %28 = load i32, i32* @CHUNK, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @fread(%struct.usr_header* byval(%struct.usr_header) align 8 @buf, i32 1, i32 %28, i32* %29)
  store i64 %30, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.usr_header, %struct.usr_header* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* @TRX_MAGIC, align 4
  %38 = load i32, i32* @TRX_MAGIC, align 4
  %39 = call i32 @strlen(i32 %38)
  %40 = call i64 @strncmp(%struct.usr_header* byval(%struct.usr_header) align 8 @buf, i32 %37, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %57

43:                                               ; preds = %36, %32
  %44 = load i64, i64* %7, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @fwrite(%struct.usr_header* @buf, i32 1, i32 %45, i32* %46)
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.usr_header, %struct.usr_header* %6, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, %48
  store i64 %51, i64* %49, align 8
  %52 = getelementptr inbounds %struct.usr_header, %struct.usr_header* %6, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @crc32(i32 %53, i32* bitcast (%struct.usr_header* @buf to i32*), i64 %54)
  %56 = getelementptr inbounds %struct.usr_header, %struct.usr_header* %6, i32 0, i32 1
  store i32 %55, i32* %56, align 8
  br label %27

57:                                               ; preds = %42, %27
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @SEEK_SET, align 4
  %60 = call i32 @fseek(i32* %58, i64 0, i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @fwrite(%struct.usr_header* %6, i32 40, i32 1, i32* %61)
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %90

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.usr_header, %struct.usr_header* %6, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %90

75:                                               ; preds = %68
  %76 = load i32*, i32** %4, align 8
  %77 = call i64 @ferror(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %90

82:                                               ; preds = %75
  %83 = load i32*, i32** %5, align 8
  %84 = call i64 @ferror(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %90

89:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %86, %79, %72, %65
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @fwrite(%struct.usr_header*, i32, i32, i32*) #1

declare dso_local i64 @fread(%struct.usr_header* byval(%struct.usr_header) align 8, i32, i32, i32*) #1

declare dso_local i64 @strncmp(%struct.usr_header* byval(%struct.usr_header) align 8, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @crc32(i32, i32*, i64) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @ferror(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
