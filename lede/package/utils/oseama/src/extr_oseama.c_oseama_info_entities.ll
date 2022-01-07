; ModuleID = '/home/carl/AnghaBench/lede/package/utils/oseama/src/extr_oseama.c_oseama_info_entities.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/oseama/src/extr_oseama.c_oseama_info_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seama_entity_header = type { i32, i32, i32 }

@SEAMA_MAGIC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid Seama magic: 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@entity_idx = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Too small buffer (%zu B) to read all meta info (%zd B)\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Entity offset:\09%ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Entity size:\09%zd\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Meta size:\09%zd\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Image size:\09%zd\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Couldn't read %zd B of meta\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"Meta entry:\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @oseama_info_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oseama_info_entities(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.seama_entity_header, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [1024 x %struct.seama_entity_header], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %122, %45, %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @fread(%struct.seama_entity_header* %3, i32 1, i64 12, i32* %13)
  store i64 %14, i64* %4, align 8
  %15 = icmp eq i64 %14, 12
  br i1 %15, label %16, label %129

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %3, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be32_to_cpu(i32 %18)
  %20 = load i32, i32* @SEAMA_MAGIC, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i32, i32* @stderr, align 4
  %24 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %3, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be32_to_cpu(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  br label %130

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %3, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @be16_to_cpu(i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be32_to_cpu(i32 %36)
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %6, align 8
  %39 = load i32, i32* @entity_idx, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @entity_idx, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32*, i32** %2, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %47, %48
  %50 = load i32, i32* @SEEK_CUR, align 4
  %51 = call i32 @fseek(i32* %46, i64 %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %12

54:                                               ; preds = %41, %31
  %55 = load i64, i64* %5, align 8
  %56 = icmp uge i64 %55, 12288
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @stderr, align 4
  %59 = load i64, i64* %5, align 8
  %60 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 12288, i64 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  br label %130

63:                                               ; preds = %54
  %64 = load i32, i32* @entity_idx, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32*, i32** %2, align 8
  %70 = call i8* @ftell(i32* %69)
  %71 = getelementptr inbounds i8, i8* %70, i64 -12
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  %73 = load i64, i64* %5, align 8
  %74 = add i64 12, %73
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %74, %75
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %76)
  %78 = load i64, i64* %5, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %78)
  %80 = load i64, i64* %6, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %80)
  %82 = getelementptr inbounds [1024 x %struct.seama_entity_header], [1024 x %struct.seama_entity_header]* %7, i64 0, i64 0
  %83 = load i64, i64* %5, align 8
  %84 = load i32*, i32** %2, align 8
  %85 = call i64 @fread(%struct.seama_entity_header* %82, i32 1, i64 %83, i32* %84)
  store i64 %85, i64* %4, align 8
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* %5, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %68
  %90 = load i32, i32* @stderr, align 4
  %91 = load i64, i64* %5, align 8
  %92 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %11, align 4
  br label %130

95:                                               ; preds = %68
  %96 = load i64, i64* %5, align 8
  %97 = sub i64 %96, 1
  %98 = getelementptr inbounds [1024 x %struct.seama_entity_header], [1024 x %struct.seama_entity_header]* %7, i64 0, i64 %97
  %99 = bitcast %struct.seama_entity_header* %98 to i8*
  store i8* %99, i8** %8, align 8
  %100 = load i8*, i8** %8, align 8
  store i8 0, i8* %100, align 1
  %101 = getelementptr inbounds [1024 x %struct.seama_entity_header], [1024 x %struct.seama_entity_header]* %7, i64 0, i64 0
  %102 = bitcast %struct.seama_entity_header* %101 to i8*
  store i8* %102, i8** %9, align 8
  br label %103

103:                                              ; preds = %116, %95
  %104 = load i8*, i8** %9, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = icmp ult i8* %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i8*, i8** %9, align 8
  %109 = call i64 @strlen(i8* %108)
  %110 = icmp ne i64 %109, 0
  br label %111

111:                                              ; preds = %107, %103
  %112 = phi i1 [ false, %103 ], [ %110, %107 ]
  br i1 %112, label %113, label %122

113:                                              ; preds = %111
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8
  %118 = call i64 @strlen(i8* %117)
  %119 = add nsw i64 %118, 1
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 %119
  store i8* %121, i8** %9, align 8
  br label %103

122:                                              ; preds = %111
  %123 = load i32*, i32** %2, align 8
  %124 = load i64, i64* %6, align 8
  %125 = load i32, i32* @SEEK_CUR, align 4
  %126 = call i32 @fseek(i32* %123, i64 %124, i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %12

129:                                              ; preds = %12
  br label %130

130:                                              ; preds = %129, %89, %57, %22
  %131 = load i32, i32* %11, align 4
  ret i32 %131
}

declare dso_local i64 @fread(%struct.seama_entity_header*, i32, i64, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, ...) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ftell(i32*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
