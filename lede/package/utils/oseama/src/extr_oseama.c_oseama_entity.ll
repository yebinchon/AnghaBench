; ModuleID = '/home/carl/AnghaBench/lede/package/utils/oseama/src/extr_oseama.c_oseama_entity.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/oseama/src/extr_oseama.c_oseama_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No Seama file passed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@seama_path = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"m:f:b:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to write meta %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to append zeros\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Failed to append file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"Current Seama entity length is 0x%zx, can't pad it with zeros to 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @oseama_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oseama_entity(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i64 4, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  br label %155

19:                                               ; preds = %2
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** @seama_path, align 8
  %23 = load i8*, i8** @seama_path, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8*, i8** @seama_path, align 8
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @EACCES, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  br label %155

33:                                               ; preds = %19
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* @SEEK_SET, align 4
  %37 = call i32 @fseek(i32* %34, i64 %35, i32 %36)
  store i32 3, i32* @optind, align 4
  br label %38

38:                                               ; preds = %83, %33
  %39 = load i32, i32* %3, align 4
  %40 = load i8**, i8*** %4, align 8
  %41 = call i32 @getopt(i32 %39, i8** %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %41, i32* %10, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %84

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  switch i32 %44, label %83 [
    i32 109, label %45
    i32 102, label %82
    i32 98, label %82
  ]

45:                                               ; preds = %43
  %46 = load i8*, i8** @optarg, align 8
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = add nsw i32 %48, 1
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @fwrite(i8* %46, i32 1, i32 %49, i32* %50)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ult i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  br label %65

58:                                               ; preds = %45
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %58, %54
  %66 = load i32*, i32** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @oseama_entity_align(i32* %66, i64 %67, i32 4)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp ult i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %81

74:                                               ; preds = %65
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %8, align 8
  br label %81

81:                                               ; preds = %74, %71
  br label %83

82:                                               ; preds = %43, %43
  br label %83

83:                                               ; preds = %43, %82, %81
  br label %38

84:                                               ; preds = %38
  store i32 3, i32* @optind, align 4
  br label %85

85:                                               ; preds = %147, %84
  %86 = load i32, i32* %3, align 4
  %87 = load i8**, i8*** %4, align 8
  %88 = call i32 @getopt(i32 %86, i8** %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %88, i32* %10, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %148

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  switch i32 %91, label %143 [
    i32 109, label %92
    i32 102, label %93
    i32 98, label %111
  ]

92:                                               ; preds = %90
  br label %143

93:                                               ; preds = %90
  %94 = load i32*, i32** %5, align 8
  %95 = load i8*, i8** @optarg, align 8
  %96 = call i64 @oseama_entity_append_file(i32* %94, i8* %95)
  store i64 %96, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp ult i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8*, i8** @optarg, align 8
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %101)
  br label %110

103:                                              ; preds = %93
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %9, align 8
  br label %110

110:                                              ; preds = %103, %99
  br label %143

111:                                              ; preds = %90
  %112 = load i8*, i8** @optarg, align 8
  %113 = call i32 @strtol(i8* %112, i32* null, i32 0)
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %7, align 8
  %116 = sub i64 %114, %115
  store i64 %116, i64* %6, align 8
  %117 = load i64, i64* %6, align 8
  %118 = icmp ult i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %111
  %120 = load i32, i32* @stderr, align 4
  %121 = load i64, i64* %7, align 8
  %122 = load i8*, i8** @optarg, align 8
  %123 = call i32 @strtol(i8* %122, i32* null, i32 0)
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0), i64 %121, i32 %123)
  br label %142

125:                                              ; preds = %111
  %126 = load i32*, i32** %5, align 8
  %127 = load i64, i64* %6, align 8
  %128 = call i64 @oseama_entity_append_zeros(i32* %126, i64 %127)
  store i64 %128, i64* %6, align 8
  %129 = load i64, i64* %6, align 8
  %130 = icmp ult i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, i32* @stderr, align 4
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %141

134:                                              ; preds = %125
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* %7, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* %7, align 8
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* %9, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %9, align 8
  br label %141

141:                                              ; preds = %134, %131
  br label %142

142:                                              ; preds = %141, %119
  br label %143

143:                                              ; preds = %90, %142, %110, %92
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %148

147:                                              ; preds = %143
  br label %85

148:                                              ; preds = %146, %85
  %149 = load i32*, i32** %5, align 8
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* %9, align 8
  %152 = call i32 @oseama_entity_write_hdr(i32* %149, i64 %150, i64 %151)
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @fclose(i32* %153)
  br label %155

155:                                              ; preds = %148, %27, %14
  %156 = load i32, i32* %11, align 4
  ret i32 %156
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @oseama_entity_align(i32*, i64, i32) #1

declare dso_local i64 @oseama_entity_append_file(i32*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @oseama_entity_append_zeros(i32*, i64) #1

declare dso_local i32 @oseama_entity_write_hdr(i32*, i64, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
