; ModuleID = '/home/carl/AnghaBench/lede/package/utils/otrx/src/extr_otrx.c_otrx_extract.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/otrx/src/extr_otrx.c_otrx_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trx_header = type { i32*, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No TRX file passed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@trx_path = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@trx_offset = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Couldn't read %s header\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TRX_MAGIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Invalid TRX magic: 0x%08x\0A\00", align 1
@TRX_MAX_PARTS = common dso_local global i32 0, align 4
@partition = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"TRX doesn't contain partition %d, can't extract %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @otrx_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otrx_extract(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.trx_header, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  br label %164

18:                                               ; preds = %2
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @trx_path, align 8
  store i32 3, i32* @optind, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i8**, i8*** %4, align 8
  %24 = call i32 @otrx_extract_parse_options(i32 %22, i8** %23)
  %25 = load i8*, i8** @trx_path, align 8
  %26 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** @trx_path, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @EACCES, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %164

35:                                               ; preds = %18
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @trx_offset, align 4
  %38 = load i32, i32* @SEEK_SET, align 4
  %39 = call i32 @fseek(i32* %36, i32 %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @fread(%struct.trx_header* %6, i32 1, i32 16, i32* %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 16
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** @trx_path, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %161

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = load i32, i32* @TRX_MAGIC, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i32, i32* @stderr, align 4
  %58 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %161

64:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %157, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @TRX_MAX_PARTS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %160

69:                                               ; preds = %65
  %70 = load i8**, i8*** @partition, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  br label %157

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  %88 = load i8**, i8*** @partition, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %87, i8* %92)
  br label %157

94:                                               ; preds = %77
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  %97 = load i32, i32* @TRX_MAX_PARTS, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %108, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %99, %94
  %109 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @le32_to_cpu(i32 %110)
  %112 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le32_to_cpu(i32 %117)
  %119 = sub nsw i32 %111, %118
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %10, align 8
  br label %139

121:                                              ; preds = %99
  %122 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le32_to_cpu(i32 %128)
  %130 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le32_to_cpu(i32 %135)
  %137 = sub nsw i32 %129, %136
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %10, align 8
  br label %139

139:                                              ; preds = %121, %108
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* @trx_offset, align 4
  %142 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le32_to_cpu(i32 %147)
  %149 = add nsw i32 %141, %148
  %150 = load i64, i64* %10, align 8
  %151 = load i8**, i8*** @partition, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @otrx_extract_copy(i32* %140, i32 %149, i64 %150, i8* %155)
  br label %157

157:                                              ; preds = %139, %85, %76
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %65

160:                                              ; preds = %65
  br label %161

161:                                              ; preds = %160, %56, %44
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @fclose(i32* %162)
  br label %164

164:                                              ; preds = %161, %29, %13
  %165 = load i32, i32* %9, align 4
  ret i32 %165
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @otrx_extract_parse_options(i32, i8**) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @fread(%struct.trx_header*, i32, i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @otrx_extract_copy(i32*, i32, i64, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
