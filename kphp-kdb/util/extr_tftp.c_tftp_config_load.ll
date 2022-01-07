; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_tftp_config_load.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_tftp_config_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.stat = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"fail to open config file '%s'. %m\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"config line %d is too long\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\09\0A \00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"at the %d line of config filename for alias '%s' wasn't given.\0A\00", align 1
@tot_files = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [66 x i8] c"%d line of config file contains duplicate record for alias '%s'.\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"fail to open file '%s' for alias '%s' (config line: %d). %m\0A\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"fstat for file '%s' for alias '%s' failed (config line: %d). %m\0A\00", align 1
@TFTP_MAX_FILE_SIZE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [82 x i8] c"file '%s' for alias '%s' is too big (more than %lld bytes) (config line: %d). %m\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"read from file '%s' for alias '%s' failed. %m\0A\00", align 1
@.str.10 = private unnamed_addr constant [76 x i8] c"read only %lld bytes of expected %lld bytes from file '%s' for alias '%s'.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tftp_config_load(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [16384 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.stat, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32 -1, i32* %2, align 4
  br label %181

25:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %26

26:                                               ; preds = %160, %49, %25
  %27 = getelementptr inbounds [16384 x i8], [16384 x i8]* %4, i64 0, i64 0
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* @fgets(i8* %27, i32 16384, i32* %28)
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %167

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = getelementptr inbounds [16384 x i8], [16384 x i8]* %4, i64 0, i64 0
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp uge i64 %37, 16383
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %7, align 4
  br label %167

44:                                               ; preds = %31
  %45 = getelementptr inbounds [16384 x i8], [16384 x i8]* %4, i64 0, i64 0
  %46 = call i8* @strtok_r(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %10)
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %26

50:                                               ; preds = %44
  %51 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %10)
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %55, i8* %56)
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %7, align 4
  br label %167

60:                                               ; preds = %50
  %61 = load i32, i32* @tot_files, align 4
  store i32 %61, i32* %13, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = call %struct.TYPE_3__* @get_file_f(i8* %62, i32 1)
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %14, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @tot_files, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %68, i8* %69)
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %7, align 4
  br label %167

73:                                               ; preds = %60
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* @O_RDONLY, align 4
  %76 = call i32 @open(i8* %74, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i8* %80, i8* %81, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %7, align 4
  br label %167

86:                                               ; preds = %73
  %87 = load i32, i32* %15, align 4
  %88 = call i64 @fstat(i32 %87, %struct.stat* %16)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), i8* %91, i8* %92, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %7, align 4
  br label %167

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TFTP_MAX_FILE_SIZE, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %97
  %108 = load i8*, i8** %12, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0), i8* %108, i8* %109, i64 %112, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %7, align 4
  br label %167

117:                                              ; preds = %97
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @zmalloc(i64 %120)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @zstrdup(i8* %124)
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @read(i32 %128, i32 %131, i64 %134)
  store i64 %135, i64* %17, align 8
  %136 = load i64, i64* %17, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %136, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %117
  %142 = load i64, i64* %17, align 8
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i8*, i8** %12, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %145, i8* %146)
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %7, align 4
  br label %167

150:                                              ; preds = %141
  %151 = load i64, i64* %17, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.10, i64 0, i64 0), i64 %151, i64 %154, i8* %155, i8* %156)
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %7, align 4
  br label %167

160:                                              ; preds = %117
  %161 = load i32, i32* %15, align 4
  %162 = call i32 @close(i32 %161)
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  store i32 -1, i32* %15, align 4
  br label %26

167:                                              ; preds = %150, %144, %107, %90, %79, %67, %54, %39, %26
  %168 = load i32, i32* %8, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @close(i32 %171)
  store i32 -1, i32* %8, align 4
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i32*, i32** %5, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32*, i32** %5, align 8
  %178 = call i32 @fclose(i32* %177)
  br label %179

179:                                              ; preds = %176, %173
  %180 = load i32, i32* %7, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %179, %22
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local %struct.TYPE_3__* @get_file_f(i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @zmalloc(i64) #1

declare dso_local i32 @zstrdup(i8*) #1

declare dso_local i64 @read(i32, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
