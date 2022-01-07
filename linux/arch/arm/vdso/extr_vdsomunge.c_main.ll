; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vdso/extr_vdsomunge.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vdso/extr_vdsomunge.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i32, i32, i32 }
%struct.stat = type { i32 }

@cleanup = common dso_local global i32 0, align 4
@argv0 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Usage: %s [infile] [outfile]\0A\00", align 1
@outfile = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Cannot open %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed stat for %s: %s\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Failed to map %s: %s\0A\00", align 1
@ELFMAG = common dso_local global i32 0, align 4
@SELFMAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Not an ELF file\0A\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS32 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Unsupported ELF class\0A\00", align 1
@EI_DATA = common dso_local global i64 0, align 8
@HOST_ORDER = common dso_local global i64 0, align 8
@ET_DYN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"Not a shared object\0A\00", align 1
@EM_ARM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"Unsupported architecture %#x\0A\00", align 1
@EF_ARM_EABI_VER5 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Unsupported EABI version %#x\0A\00", align 1
@EF_ARM_ABI_FLOAT_HARD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"Unexpected hard-float flag set in e_flags\0A\00", align 1
@EF_ARM_ABI_FLOAT_SOFT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"Cannot truncate %s: %s\0A\00", align 1
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MS_SYNC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"Failed to sync %s: %s\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @cleanup, align 4
  %18 = call i32 @atexit(i32 %17)
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @argv0, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %24, %2
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %8, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** @outfile, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* @O_RDONLY, align 4
  %38 = call i32 (i8*, i32, ...) @open(i8* %36, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %44)
  br label %46

46:                                               ; preds = %41, %29
  %47 = load i32, i32* %15, align 4
  %48 = call i64 @fstat(i32 %47, %struct.stat* %11)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @strerror(i32 %52)
  %54 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 %53)
  br label %55

55:                                               ; preds = %50, %46
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PROT_READ, align 4
  %59 = load i32, i32* @MAP_PRIVATE, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i8* @mmap(i32* null, i32 %57, i32 %58, i32 %59, i32 %60, i32 0)
  store i8* %61, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** @MAP_FAILED, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @strerror(i32 %67)
  %69 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %66, i32 %68)
  br label %70

70:                                               ; preds = %65, %55
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @close(i32 %71)
  %73 = load i8*, i8** %10, align 8
  %74 = bitcast i8* %73 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %74, %struct.TYPE_2__** %6, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* @ELFMAG, align 4
  %78 = load i32, i32* @SELFMAG, align 4
  %79 = call i64 @memcmp(i64** %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %70
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @EI_CLASS, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ELFCLASS32, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %83
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* @EI_DATA, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @HOST_ORDER, align 8
  %102 = icmp ne i64 %100, %101
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %13, align 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i64 @read_elf_half(i32 %106, i32 %107)
  %109 = load i64, i64* @ET_DYN, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %94
  %112 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %94
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i64 @read_elf_half(i32 %116, i32 %117)
  %119 = load i64, i64* @EM_ARM, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %113
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %121, %113
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @read_elf_word(i32 %129, i32 %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @EF_ARM_EABI_VERSION(i32 %132)
  %134 = load i32, i32* @EF_ARM_EABI_VER5, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %126
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @EF_ARM_EABI_VERSION(i32 %137)
  %139 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %136, %126
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @EF_ARM_ABI_FLOAT_HARD, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %140
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @EF_ARM_ABI_FLOAT_SOFT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %7, align 4
  %155 = load i8*, i8** @outfile, align 8
  %156 = load i32, i32* @O_RDWR, align 4
  %157 = load i32, i32* @O_CREAT, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @O_TRUNC, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @S_IRUSR, align 4
  %162 = load i32, i32* @S_IWUSR, align 4
  %163 = or i32 %161, %162
  %164 = call i32 (i8*, i32, ...) @open(i8* %155, i32 %160, i32 %163)
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %147
  %168 = load i8*, i8** @outfile, align 8
  %169 = load i32, i32* @errno, align 4
  %170 = call i32 @strerror(i32 %169)
  %171 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %168, i32 %170)
  br label %172

172:                                              ; preds = %167, %147
  %173 = load i32, i32* %14, align 4
  %174 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @ftruncate(i32 %173, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %172
  %179 = load i8*, i8** @outfile, align 8
  %180 = load i32, i32* @errno, align 4
  %181 = call i32 @strerror(i32 %180)
  %182 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %179, i32 %181)
  br label %183

183:                                              ; preds = %178, %172
  %184 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @PROT_READ, align 4
  %187 = load i32, i32* @PROT_WRITE, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @MAP_SHARED, align 4
  %190 = load i32, i32* %14, align 4
  %191 = call i8* @mmap(i32* null, i32 %185, i32 %188, i32 %189, i32 %190, i32 0)
  store i8* %191, i8** %12, align 8
  %192 = load i8*, i8** %12, align 8
  %193 = load i8*, i8** @MAP_FAILED, align 8
  %194 = icmp eq i8* %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %183
  %196 = load i8*, i8** @outfile, align 8
  %197 = load i32, i32* @errno, align 4
  %198 = call i32 @strerror(i32 %197)
  %199 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %196, i32 %198)
  br label %200

200:                                              ; preds = %195, %183
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @close(i32 %201)
  %203 = load i8*, i8** %12, align 8
  %204 = load i8*, i8** %10, align 8
  %205 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @memcpy(i8* %203, i8* %204, i32 %206)
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %200
  %211 = load i8*, i8** %12, align 8
  %212 = bitcast i8* %211 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %212, %struct.TYPE_2__** %16, align 8
  %213 = load i32, i32* @EF_ARM_ABI_FLOAT_SOFT, align 4
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %9, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 1
  %220 = load i32, i32* %13, align 4
  %221 = call i32 @write_elf_word(i32 %217, i32* %219, i32 %220)
  br label %222

222:                                              ; preds = %210, %200
  %223 = load i8*, i8** %12, align 8
  %224 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @MS_SYNC, align 4
  %227 = call i64 @msync(i8* %223, i32 %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %222
  %230 = load i8*, i8** @outfile, align 8
  %231 = load i32, i32* @errno, align 4
  %232 = call i32 @strerror(i32 %231)
  %233 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %230, i32 %232)
  br label %234

234:                                              ; preds = %229, %222
  %235 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %235
}

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @fail(i8*, ...) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @memcmp(i64**, i32, i32) #1

declare dso_local i64 @read_elf_half(i32, i32) #1

declare dso_local i32 @read_elf_word(i32, i32) #1

declare dso_local i32 @EF_ARM_EABI_VERSION(i32) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @write_elf_word(i32, i32*, i32) #1

declare dso_local i64 @msync(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
