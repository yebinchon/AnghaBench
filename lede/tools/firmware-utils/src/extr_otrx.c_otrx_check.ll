; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_otrx.c_otrx_check.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_otrx.c_otrx_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trx_header = type { i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No TRX file passed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@trx_path = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@trx_offset = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Couldn't read %s header\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TRX_MAGIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Invalid TRX magic: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Length read from TRX too low (%zu B)\0A\00", align 1
@TRX_FLAGS_OFFSET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"Couldn't read last %zd B of data from %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Invalid data crc32: 0x%08x instead of 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Found a valid TRX version %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @otrx_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otrx_check(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.trx_header, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1024 x %struct.trx_header], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  br label %136

19:                                               ; preds = %2
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** @trx_path, align 8
  store i32 3, i32* @optind, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i8**, i8*** %4, align 8
  %25 = call i32 @otrx_check_parse_options(i32 %23, i8** %24)
  %26 = load i8*, i8** @trx_path, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** @trx_path, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @EACCES, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %136

36:                                               ; preds = %19
  %37 = load i32*, i32** %5, align 8
  %38 = load i64, i64* @trx_offset, align 8
  %39 = load i32, i32* @SEEK_SET, align 4
  %40 = call i32 @fseek(i32* %37, i64 %38, i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i64 @fread(%struct.trx_header* %6, i32 1, i32 16, i32* %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %43, 16
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** @trx_path, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %133

51:                                               ; preds = %36
  %52 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = load i32, i32* @TRX_MAGIC, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i32, i32* @stderr, align 4
  %59 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %133

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ult i64 %70, 16
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load i32, i32* @stderr, align 4
  %74 = load i64, i64* %8, align 8
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %11, align 4
  br label %133

78:                                               ; preds = %65
  store i32 -1, i32* %10, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = load i64, i64* @trx_offset, align 8
  %81 = load i64, i64* @TRX_FLAGS_OFFSET, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* @SEEK_SET, align 4
  %84 = call i32 @fseek(i32* %79, i64 %82, i32 %83)
  %85 = load i64, i64* @TRX_FLAGS_OFFSET, align 8
  %86 = load i64, i64* %8, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %8, align 8
  br label %88

88:                                               ; preds = %95, %78
  %89 = getelementptr inbounds [1024 x %struct.trx_header], [1024 x %struct.trx_header]* %9, i64 0, i64 0
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @otrx_min(i32 16384, i64 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = call i64 @fread(%struct.trx_header* %89, i32 1, i32 %91, i32* %92)
  store i64 %93, i64* %7, align 8
  %94 = icmp ugt i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load i32, i32* %10, align 4
  %97 = getelementptr inbounds [1024 x %struct.trx_header], [1024 x %struct.trx_header]* %9, i64 0, i64 0
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @otrx_crc32(i32 %96, %struct.trx_header* %97, i64 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = sub i64 %101, %100
  store i64 %102, i64* %8, align 8
  br label %88

103:                                              ; preds = %88
  %104 = load i64, i64* %8, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32, i32* @stderr, align 4
  %108 = load i64, i64* %8, align 8
  %109 = load i8*, i8** @trx_path, align 8
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %108, i8* %109)
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %11, align 4
  br label %133

113:                                              ; preds = %103
  %114 = load i32, i32* %10, align 4
  %115 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @le32_to_cpu(i32 %116)
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %113
  %120 = load i32, i32* @stderr, align 4
  %121 = load i32, i32* %10, align 4
  %122 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le32_to_cpu(i32 %123)
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %121, i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %11, align 4
  br label %133

128:                                              ; preds = %113
  %129 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @le32_to_cpu(i32 %130)
  %132 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %128, %119, %106, %72, %57, %45
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @fclose(i32* %134)
  br label %136

136:                                              ; preds = %133, %30, %14
  %137 = load i32, i32* %11, align 4
  ret i32 %137
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @otrx_check_parse_options(i32, i8**) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i64 @fread(%struct.trx_header*, i32, i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @otrx_min(i32, i64) #1

declare dso_local i32 @otrx_crc32(i32, %struct.trx_header*, i64) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
