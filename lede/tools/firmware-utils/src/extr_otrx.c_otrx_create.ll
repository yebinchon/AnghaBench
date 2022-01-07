; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_otrx.c_otrx_create.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_otrx.c_otrx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trx_header = type { i64*, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No TRX file passed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@trx_path = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"f:A:a:b:\00", align 1
@TRX_MAX_PARTS = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Reached TRX partitions limit, no place for %s\0A\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to append file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Failed to append zeros\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"Current TRX length is 0x%zx, can't pad it with zeros to 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @otrx_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otrx_create(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.trx_header, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %12 = bitcast %struct.trx_header* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  store i64 0, i64* %8, align 8
  store i64 16, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  br label %189

20:                                               ; preds = %2
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** @trx_path, align 8
  %24 = load i8*, i8** @trx_path, align 8
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** @trx_path, align 8
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @EACCES, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %189

34:                                               ; preds = %20
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* @SEEK_SET, align 4
  %38 = call i32 @fseek(i32* %35, i64 %36, i32 %37)
  store i32 3, i32* @optind, align 4
  br label %39

39:                                               ; preds = %167, %34
  %40 = load i32, i32* %3, align 4
  %41 = load i8**, i8*** %4, align 8
  %42 = call i32 @getopt(i32 %40, i8** %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %42, i32* %10, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %168

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  switch i32 %45, label %163 [
    i32 102, label %46
    i32 65, label %90
    i32 97, label %118
    i32 98, label %134
  ]

46:                                               ; preds = %44
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @TRX_MAX_PARTS, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* @ENOSPC, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  br label %186

56:                                               ; preds = %46
  %57 = load i32*, i32** %5, align 8
  %58 = load i8*, i8** @optarg, align 8
  %59 = call i64 @otrx_create_append_file(i32* %57, i8* %58)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @stderr, align 4
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %64)
  br label %76

66:                                               ; preds = %56
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  %72 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64 %67, i64* %72, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %9, align 8
  br label %76

76:                                               ; preds = %66, %62
  %77 = load i32*, i32** %5, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i64 @otrx_create_align(i32* %77, i64 %78, i32 4)
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @stderr, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %89

85:                                               ; preds = %76
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %9, align 8
  br label %89

89:                                               ; preds = %85, %82
  br label %163

90:                                               ; preds = %44
  %91 = load i32*, i32** %5, align 8
  %92 = load i8*, i8** @optarg, align 8
  %93 = call i64 @otrx_create_append_file(i32* %91, i8* %92)
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %7, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* @stderr, align 4
  %98 = load i8*, i8** @optarg, align 8
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  br label %104

100:                                              ; preds = %90
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i32*, i32** %5, align 8
  %106 = load i64, i64* %9, align 8
  %107 = call i64 @otrx_create_align(i32* %105, i64 %106, i32 4)
  store i64 %107, i64* %7, align 8
  %108 = load i64, i64* %7, align 8
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @stderr, align 4
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %117

113:                                              ; preds = %104
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %9, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %9, align 8
  br label %117

117:                                              ; preds = %113, %110
  br label %163

118:                                              ; preds = %44
  %119 = load i32*, i32** %5, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load i8*, i8** @optarg, align 8
  %122 = call i32 @strtol(i8* %121, i32* null, i32 0)
  %123 = call i64 @otrx_create_align(i32* %119, i64 %120, i32 %122)
  store i64 %123, i64* %7, align 8
  %124 = load i64, i64* %7, align 8
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load i32, i32* @stderr, align 4
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %133

129:                                              ; preds = %118
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* %9, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %9, align 8
  br label %133

133:                                              ; preds = %129, %126
  br label %163

134:                                              ; preds = %44
  %135 = load i8*, i8** @optarg, align 8
  %136 = call i32 @strtol(i8* %135, i32* null, i32 0)
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %9, align 8
  %139 = sub i64 %137, %138
  store i64 %139, i64* %7, align 8
  %140 = load i64, i64* %7, align 8
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load i32, i32* @stderr, align 4
  %144 = load i64, i64* %9, align 8
  %145 = load i8*, i8** @optarg, align 8
  %146 = call i32 @strtol(i8* %145, i32* null, i32 0)
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i64 %144, i32 %146)
  br label %162

148:                                              ; preds = %134
  %149 = load i32*, i32** %5, align 8
  %150 = load i64, i64* %7, align 8
  %151 = call i64 @otrx_create_append_zeros(i32* %149, i64 %150)
  store i64 %151, i64* %7, align 8
  %152 = load i64, i64* %7, align 8
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load i32, i32* @stderr, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %161

157:                                              ; preds = %148
  %158 = load i64, i64* %7, align 8
  %159 = load i64, i64* %9, align 8
  %160 = add i64 %159, %158
  store i64 %160, i64* %9, align 8
  br label %161

161:                                              ; preds = %157, %154
  br label %162

162:                                              ; preds = %161, %142
  br label %163

163:                                              ; preds = %44, %162, %133, %117, %89
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %168

167:                                              ; preds = %163
  br label %39

168:                                              ; preds = %166, %39
  %169 = load i32*, i32** %5, align 8
  %170 = load i64, i64* %9, align 8
  %171 = call i64 @otrx_create_align(i32* %169, i64 %170, i32 4096)
  store i64 %171, i64* %7, align 8
  %172 = load i64, i64* %7, align 8
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load i32, i32* @stderr, align 4
  %176 = call i32 (i32, i8*, ...) @fprintf(i32 %175, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %181

177:                                              ; preds = %168
  %178 = load i64, i64* %7, align 8
  %179 = load i64, i64* %9, align 8
  %180 = add i64 %179, %178
  store i64 %180, i64* %9, align 8
  br label %181

181:                                              ; preds = %177, %174
  %182 = load i64, i64* %9, align 8
  %183 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %6, i32 0, i32 1
  store i64 %182, i64* %183, align 8
  %184 = load i32*, i32** %5, align 8
  %185 = call i32 @otrx_create_write_hdr(i32* %184, %struct.trx_header* %6)
  br label %186

186:                                              ; preds = %181, %50
  %187 = load i32*, i32** %5, align 8
  %188 = call i32 @fclose(i32* %187)
  br label %189

189:                                              ; preds = %186, %28, %15
  %190 = load i32, i32* %11, align 4
  ret i32 %190
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fseek(i32*, i64, i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i64 @otrx_create_append_file(i32*, i8*) #2

declare dso_local i64 @otrx_create_align(i32*, i64, i32) #2

declare dso_local i32 @strtol(i8*, i32*, i32) #2

declare dso_local i64 @otrx_create_append_zeros(i32*, i64) #2

declare dso_local i32 @otrx_create_write_hdr(i32*, %struct.trx_header*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
